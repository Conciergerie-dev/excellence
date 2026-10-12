# STANDARD DE CODE

> La norme du collectif pour le code que **nous** écrivons — sur nos projets comme chez les clients.
> Chaque règle est ancrée dans un cas réel : ce sont des erreurs qui ont coûté de vrais commits de
> réparation ou de vrais retours en review. Référencée par les Procédures 5 et 11 de la charte.
>
> **Application** : tout code, test ou config écrit par un membre du collectif ou un agent à son service.
> Jamais imposée au code existant du client : on ne réécrit pas ses commentaires ni ses conventions dans
> une PR de feature. Si le client a son propre standard documenté, il prime.
>
> **Posture** : ces règles se vérifient à trois moments — à l'écriture (skill `coder-excellence`),
> avant push (Proc. 11), en review (Proc. 5). Une règle apprise en review est une règle qu'on aurait
> dû appliquer plus tôt.

---

## 1. Vérification manuelle — la règle d'or

**On ne livre que ce qu'on a vu tourner.** Les tests automatisés sont nécessaires, pas suffisants :
ils vérifient la logique, pas le comportement réel. Avant de demander une review, celui qui a écrit
le change l'a lancé et exercé de ses propres mains (ou scripts) :

- UI : l'app démarre, les parcours touchés sont cliqués jusqu'au bout — pas jusqu'au premier écran.
- API/back : le serveur tourne, les endpoints touchés reçoivent de vraies requêtes HTTP.
- Ce qui sort de l'écran : données vides, erreurs réseau, états limites — pas seulement le happy path.

*Pourquoi : « The filters don't work » et « Missing empty state (it breaks in august) » sont arrivés
en review sur cdata#1161 — un lancement manuel de cinq minutes les aurait attrapés. Complète la
Proc. 11.7, ne la remplace pas.*

## 2. Commentaires

**Un commentaire gagne sa place ou disparaît.** Il porte le *pourquoi* non-évident, jamais le *quoi*
que le code dit déjà.

1. **Une phrase, une ligne.** Au-delà, la justification appartient au message de commit, à la PR ou à l'issue — pas au code. *(udata#4003 : six commits « style: shorten comment » pour réparer.)*
2. **Pas de narration d'implémentation.** Le code dit comment ; un commentaire ne répète que ce qui ne se lit pas dans le code.
3. **Pas de pointeurs périssables** vers d'autres fichiers ou vers des chantiers futurs dans le code — ça vit en PR/issue et ça devient faux. *(« A shared hex validator can be introduced later » — supprimé.)*
4. **Une vérité = un commentaire, au point canonique.** Pas la même phrase dupliquée à chaque call site.
5. **Workaround = lien + condition de revert**, pas le contexte complet : l'upstream « has the context ». *(cdata#1268, FS_ROOT/flask-storage#30.)*
6. **Une citation doit contenir ce qu'elle promet.** Si le commentaire dit « see docs/runbooks.md », vérifier que la doc contient bien l'information — sinon commentaire autonome. *(themisos#3 : le doc cité « documented nothing of the sort ».)*
7. **Exception qui gagne sa place** : justifier une infrastructure de test non-évidente (mock imposé par le backend de dev, `server: false`, etc.) — c'est le genre de pourquoi qu'aucun test ne dit. *(cdata#1210, demandé en review.)*

## 3. Conformité au projet

**Avant d'inventer un chemin spécial, chercher l'équivalent existant dans le codebase et s'y conformer.**

1. Un comportement qui existe déjà ailleurs dans le projet se réutilise ou s'imite — une variante spéciale à une feature se justifie dans la PR, pas dans le code. *(udata#4003 : « behave like every other image field » — trois refactos pour revenir au pattern existant.)*
2. **Ne pas réimplémenter ce qu'une dépendance maintenue fait déjà** — ni importer une dépendance pour dix lignes triviales. *(cdata#1214 : parsing UA réinventé avec bugs → le package `bowser` existait ; cdata#1268 : luminance réécrite à la main → `culori`.)*
3. Un composant, helper ou format qui existe dans le projet se réutilise (dates formatées, slots, helpers) plutôt qu'il ne se recrée. *(cdata#1210 : `FormattedDate`, slot `#badge` des autres cartes.)*

## 4. Structure & ownership

**Chaque comportement a exactement un propriétaire ; chaque destruction est précédée de son écriture.**

1. **Un seul propriétaire par comportement** : un seul chemin d'écriture, un seul canal de rapport d'erreur, un seul listener par événement. Le double reporting rapporte deux fois la même panne. *(cdata#1268 : single Esc owner, erreur inline vs toast ; cdata#1232 : écouteurs dupliqués entre pages.)*
2. **Ordonnancement fail-safe** : écrire avant de détruire ; jamais d'objet laissé pointant vers une ressource supprimée si l'opération échoue entre les deux. *(cdata#1268 : « no data-loss paths » ; udata#4003 : fichiers supplantés supprimés après sauvegarde.)*
3. **Réparer au niveau qui possède la responsabilité.** Si le vrai fix est ailleurs (upstream, storage, lib), on y va ; en attendant : workaround minimal + lien + marqueur de revert. *(flask-storage#30 : le workaround FS_ROOT a abouti au fix upstream — la boucle complète. udata#4003 : WEBP reverté car la policy appartient à flask-storage.)*

## 5. Robustesse & concurrence

1. **Toute valeur venue de l'extérieur est gardée avant usage** : URL, query string, JSON externe — un `?q=a&q=b` renvoie un tableau, pas une string. *(cdata#1247 : `.trim()` sur un tableau → page d'erreur en hydration.)*
2. **Read-modify-write = atomique** : resolve-or-create sous contrainte d'unicité, écritures concurrentes sous lock, jamais deux opérations qui se passent la main sur la même ligne. *(themisos#4 : race-safe resolve-or-create, écritures sous lock.)*
3. **Un feature flag est vérifié à chaque point d'entrée**, pas une fois au boot. *(themisos#4 : « honor AGENT_ENABLED ».)*
4. **Un processus vivant est supervisé** ; un état qui survit aux crashes a un chemin de reconstruction. *(themisos#4 : store supervisé, autonomy reconstruite depuis le ledger.)*
5. **Face à un format inconnu, échouer bruyamment** — jamais de perte silencieuse ni de corruption « au mieux ». Les écarts se rapportent, ils ne se mangent pas. *(themisos#5 : abort sur nœuds non supportés, classification du drift sans exception.)*
6. **Avant d'ajouter un mécanisme, vérifier ce que le système tire déjà des signaux existants.** Empiler une dérivation sur une dérivation double-compte. *(cdata#1247 : Matomo dérivait déjà les site searches de `?q=` — la PR aurait tout compté deux fois, détecté en review sur les données de prod.)*

## 6. Sécurité

1. **Une classe de vulnérabilité se ferme sur tous les points d'entrée** — un champ oublié = toujours vulnérable. *(themisos#3 : le durcissement CRLF a dû être réétendu au formulaire d'inscription.)*
2. **Tester les variantes adverses, pas le payload canonique** : `\r\n`, `\r`, `\n` final, chaîne vide, très long. Les ancres de regex et les parsers ont des trous que le cas « normal » ne montre jamais. *(themisos#3 : `^…$` laissait passer un LF final — le trou était dans l'ancre, pas dans les données testées.)*
3. **Vérifier le déploiement réel avant de choisir la sémantique de confiance** — qui réécrit `X-Forwarded-For`, quel proxy, dans quel ordre. Un fix qui se retourne (gauche puis droite) est un fix deviné. *(themisos#3 : left-most spoofable, Traefik append right-most.)* Si le déploiement réel n'est pas connaissable au moment d'écrire le code, l'hypothèse se pose en PR ou en point d'adaptation explicite — elle ne s'affirme pas comme un fait dans le code.
4. **Le trust boundary est documenté dans le code, autonome** — pas renvoyé à une doc qui devra être trouvée au moment de l'incident.

## 7. i18n

1. **Toute chaîne visible par l'utilisateur passe par gettext/`$t` — y compris les erreurs de validation.** *(themisos#2 : erreurs de validation du formulaire de contact non traduites.)*
2. **Le plumbing de locale se propage à tous les hôtes** : un composant rendu dans un contexte localisé reçoit sa locale, sinon il casse en silence ailleurs. *(themisos#2 : locales non passées à l'explorateur de fichiers.)*
3. **Après toute extraction de catalogues, vérifier la dérive gettext** et corriger les traductions existantes dans la même PR. *(themisos#2 : « correct en translation ».)*

## 8. Tests automatisés

1. **Jamais de sleep fixe contre de l'asynchrone** : poll/retry sur une condition observable, ou assertion sur l'état final. Un sleep est une course perdue en attente. *(themisos#1 `Process.sleep`, cdata#1268 sleep de 500ms contre le chargement d'image — 4 PRs touchées.)*
2. **Un test vert n'est pas une preuve.** La valeur épinglée est vérifiée contre le consommateur réel : l'API accepte-t-elle cette requête ? le décodeur lit-il cette chaîne ? *(cdata#1232 : test vert qui épingle une requête que l'API rejette — « which is what made me trust it ».)*
3. **Le nom du test décrit exactement ce qu'il fait** — ni plus (» and vice versa » absent) ni moins. *(udata#3938.)*
4. **Un test e2e possède ses fixtures** : données dédiées, isolation d'état, nettoyage. *(cdata#1268 : org dédiée par projet.)*
5. **Épingle la source de vérité, pas la valeur calculée** : quand le navigateur transforme (`background-position-y` calculé ment), lire l'attribut/la valeur inline. *(cdata#1268.)*
6. **Snapshots régénérés ou supprimés dans la même PR** — un snapshot stale est un mensonge en attente. *(cdata#1268.)*
7. **Un parser/serializer se teste en aller-retour** sur des cas réels, avec les cas tordus (blank lines, format wire, caractères spéciaux). *(themisos#5.)*
8. (Complète la Proc. 11 : on épingle le comportement — round-trip — pas la chaîne de sortie.)

## 9. UI & conventions

1. **Suivre le pattern de la zone touchée** sauf intention explicite discutée en PR : tables dans l'admin si l'admin est en tables, layout partagé respecté. *(cdata#1210 : cards vs tables ; cdata#1161 : footer cassant le layout fluide.)*
2. **Les icônes et les tokens ont une sémantique** : une icône déjà prise pour une feature en sert une seule ; un token de design system est un identifiant, pas une chaîne traduisible. *(cdata#1210 ; cdata#1268 : noms de tokens DSFR non i18n.)*
3. **Les états vides et les données absentes sont des cas de test** — « ça casse en août » n'est pas acceptable pour une table de stats. *(cdata#1161.)*
4. **Un composant qui grandit démesurément se scinde** — deux pages avec un layout partagé valent mieux qu'un méga-composant à onglets. *(cdata#1161 ; cdata#1268 : `OrganizationBannerEditor` extrait.)*

## 10. CI & artefacts

1. **Les workflows de déploiement se sérialisent** (`concurrency`) — deux pushes rapprochés, le plus ancien finit dernier et prend le tag. *(explore.data.gouv.fr#226.)*
2. **Versions pinnées** pour les actions et les images ; les tags flottants (`latest`) sont une race en attente. *(explore.data.gouv.fr#226.)*
3. **Utiliser le mécanisme natif de l'outil** plutôt qu'un contournement shell : vue-cli charge `.env.production` tout seul, inutile de `cp`. *(explore.data.gouv.fr#226.)*
4. **Une variable d'env ou un secret référencé existe** — vérifié dans la conf du repo avant de s'en servir. *(explore.data.gouv.fr#226 : « Is `VUE_APP_MATOMO_SITE_ID` defined in the repo ? »)*
5. **Dépendances réellement utilisées** : un import mort ou un paquet orphelin se supprime, pas se traîne. *(explore.data.gouv.fr#225.)*

## 11. Sweep post-refactor

**Après un refactor en cours de PR — pas à la release suivante :**

1. **Quand une expérimentation (lib, approche) remplace du code existant, chaque comportement retiré est réintégré ou explicitement abandonné.** Question du cold diff : *qu'est-ce que le dernier refactor a retiré que rien ne remplace ?* *(cdata#1244 : `setCustomUrl`/`setDocumentTitle` perdus en testant `useScriptMatomoAnalytics` — chaque pageview SPA rapportait la landing page en prod.)*
2. **Le wording suit le code** : commentaires, noms, textes de tests et snapshots qui disent « PATCH » alors que c'est `PUT` se corrigent dans le commit du changement. *(cdata#1268.)*
3. **Le diff ne contient que ce qu'il doit contenir** : pas de lockfile, snapshot, fichier d'env ou config locale accidentels — relire `git diff main...HEAD --stat` avant de pousser. *(cdata#1210 : pnpm-lock commité par accident.)*
4. **Pas de restes d'itération de design** : props qui ne servent plus, branches inatteignables, fonctions jamais appelées — la Proc. 11.5 s'applique à chaque commit, pas à la fin. *(cdata#1232 : `updateFilter` mort, `addFilter` inatteignable, `connectorLabel` réduit à une constante.)*
5. **Deux filtres, dans cet ordre : l'analyse automatique pour ce qu'elle sait voir, la relecture humaine pour le reste.** D'abord les vérifications mécaniques — props jamais utilisées (`vue/no-unused-properties`), variables mortes (`tsc --noUnusedLocals`), exports orphelins (`knip`), branches jamais exécutées (coverage). Elles sont rapides et exhaustives : elles tournent en pre-push, localement si le projet client n'a pas la gate CI. Puis le cold diff pass (Proc. 11.5) pour ce qui exige de comprendre le code et qu'aucun outil ne voit : les chaînes câblées qui ne tirent jamais (un composant qui mute son modèle par référence n'émet rien — tous les handlers en aval sont morts alors qu'aucun symbole n'est inutilisé), les computeds réductibles à une constante, les types et formes dupliqués. *(cdata#1232 : cinq retours sur six étaient de ce second type — la machine n'aurait rien vu, c'est la relecture qui manquait.)*

---

## Description de PR

La description fait partie du livrable — modèle dans `modeles_operationnels.md` (DESCRIPTION DE PR).
Elle dit : ce qui change, les points d'attention pour les consommateurs, l'infra à préparer **avant**
de déployer, et ce qui est volontairement hors scope avec ses follow-ups liés.
*(udata#4003 : l'annonce du bucket `banners` à créer avant déploiement a valeur opérationnelle réelle.)*
