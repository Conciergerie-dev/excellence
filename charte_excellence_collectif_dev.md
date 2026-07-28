# CHARTE D'EXCELLENCE
## Le Livre de Service du Collectif de Développement

---

## PRÉAMBULE

**On intervient sur des projets déjà mal engagés.** On a débarqué sur un front-end entièrement hard-codé alors que le client pensait que le CMS gérerait le contenu. Les commentaires étaient dans une langue qu'aucun de nous ne comprenait. La documentation : inexistante. Le projet n'avait jamais vraiment fonctionné. On a investigué, on a assumé, on a reconstruit.

**On dépanne des équipes en perdition.** On hérite de code spaghetti datant de 8 ans, on est le premier développeur front à oser y toucher, et on fait évoluer le tout — Jinja, Vue, Nuxt — sans tout casser.

**On livre quand tout le monde a abandonné.** On est ceux qu'on appelle quand c'est le bordel.

> *« Ce n'était pas le diable qu'on venait chercher. C'était celui qu'on envoyait pour le tuer. »* — Viggo Tarasov, *John Wick*

On n'a pas besoin de processus lourds. On a besoin de clarté. Cette charte dit simplement : **on assume, on s'améliore, on livre.**

---

## CHAPITRE I — RESPONSABILITÉ INTÉGRALE

### Le principe
Quand ça ne marche pas, la question n'est pas « Qui a fait quoi ? ». C'est « Qu'est-ce que **j'ai** laissé passer ? ». Point. On ne cite pas le client, le PO, l'autre équipe, le framework pourri. On regarde sa propre chaîne de responsabilité et on corrige.

### Dans la pratique
- **Retard** : on expose ce qu'on aurait dû anticiper ou remonter plus tôt.
- **Bug en production** : on commence par sa revue de code, ses tests, sa doc, avant de chercher un coupable.
- **Conflit technique** : on assume de ne pas avoir assez argumenté ou écouté.
- **On hérite d'un projet pourri** : zéro documentation, des décisions techniques qui ne tiennent pas la route, un code qu'on n'aurait jamais écrit. On ne dit pas « l'autre a mal fait ». On dit : « Voilà ce qu'on a trouvé. Voilà ce qu'on fait pour corriger. »

### Chez nous, à trois
Pas de lead tout-puissant qui prend tout sur ses épaules. Les échecs collectifs sont assumés par celui qui porte le sujet. Les succès sont partagés. Et quand personne ne sait qui doit prendre la décision, quelqu'un la prend quand même.

### Maîtriser son ego
L'ego aveugle. Il nous empêche d'admettre nos erreurs, d'écouter les autres, de changer d'avis quand on a tort. À trois, l'ego d'un seul peut bloquer tout le collectif.

On défend nos idées avec des arguments. Quand on a tort, on le dit. Quand un junior nous corrige, on l'écoute. Quand une décision collective va à l'encontre de notre avis, on la soutient une fois qu'elle est prise. **L'humilité est une force, pas une faiblesse.**

> **Exemple réel** : On a tous vécu ce moment où on s'obstine sur une approche technique parce qu'on l'a proposée. On perd 2 heures à défendre une mauvaise idée. Maîtriser son ego, c'est dire : « J'avais tort. Ton approche est meilleure. On fait comme ça. »

### Croire en la mission
On ne peut pas livrer avec conviction si on ne sait pas pourquoi on fait ce qu'on fait. Quand on arrive sur un projet, on demande : quel est le besoin métier ? Quel problème le client essaie de résoudre ? Pourquoi cette fonctionnalité et pas une autre ?

Si la réponse est floue, on creuse. Si la mission ne tient pas la route, on le dit au client. **On ne travaille pas à l'aveugle. On travaille avec un but.**

Ça se vérifie chaque vendredi au Débrief : la cinquième question est exactement ça — « L'équipe sait-elle pourquoi nous faisons ce que nous faisons ? »

### Unis pour avancer — On soutient celui qui avance
La Responsabilité Intégrale ne fonctionne pas seule. Elle fonctionne parce qu'on se soutient mutuellement.

**Avec l'équipe client**, au jour le jour : quand le PO est débordé, on prend le relai sur la clarification des specs. Quand le lead technique est absent, on valide les choix techniques entre nous. Quand le client ne sait pas ce qu'il veut, on propose plutôt qu'on attende. **On avance ensemble. On ne laisse personne seul sous le feu.**

**Avec le collectif**, en cas de besoin : quand un membre est sous l'eau, les deux autres le couvrent. On relit sa PR en urgence. On prend son appel commercial. On gère son client le temps qu'il finisse le livrable. **On ne laisse pas un des nôtres sombrer parce qu'on est trop concentrés sur nos propres missions.**

> *« On se soutient et on avance. »*

**On ne confond pas couvrir et faire le travail à la place de l'autre.** Couvrir, c'est libérer de la pression pour qu'il puisse avancer. Pas faire son travail pour lui.

### Simple — Simplifier
Les plans complexes échouent. Les communications confuses perdent du temps. Les architectures over-engineered coûtent cher à maintenir. **On rend les choses simples.**

Un objectif clair. Un plan direct. Une consigne que tout le monde comprend. Quand on explique une décision technique au client, on utilise ses mots, pas les nôtres. Quand on documente, on écrit pour nous dans 6 mois, pas pour impressionner.

> **Exemple réel** : On hérite d'une architecture micro-services pour une application qui a 3 écrans et 500 utilisateurs. C'est de la complexité inutile. On simplifie. On ne garde la complexité que quand elle est justifiée.

**Test** : si on ne peut pas expliquer la décision en deux phrases à quelqu'un qui ne connaît pas le projet, elle est trop complexe.

### Notre rituel
En rétrospective, on commence chaque intervention par : *« J'aurais dû… »*. Aucun « Il aurait dû » pendant les dix premières minutes. À trois, on sait qui parle. C'est le moment d'assumer, pas de pointer.

> *« Règle numéro deux : pas de noms. »* — Frank Martin, *Le Transporteur*

---

## CHAPITRE II — LES ÉQUILIBRES

Le leadership, ce n'est pas une posture. C'est un ajustement permanent. À trois, chacun bascule d'un rôle à l'autre selon le sujet. Voici les équilibres qu'on cultive :

### Confiant / Arrogant
On défend nos choix avec des arguments. On ne défend pas notre ego quand on a tort.

### Prudent / Paralysé
On évalue les risques. On ne passe pas trois mois à choisir entre deux librairies. On se donne un délai, on tranche, on avance.

### Proactif / Téméraire
On anticipe. On ne déploie pas un vendredi à 17h sans plan de secours testé.

### Leader / Suiveur
On prend la direction quand on sait. On cède quand l'autre sait mieux. À trois, les rôles changent selon le sujet. Pas de titre, juste du bon sens.

### Responsabiliser sans reprendre
On confie un sujet entièrement à celui qui le porte. On lui donne les clés. On vérifie que ça avance, mais on ne reprend pas le volant. Si ça dérape, on alerte avant que ça devienne critique — on ne remplace pas la personne, on l'aide à se repositionner.

### Disponible / Envahissant
On suit les blocages sans micromanager. À trois, on sait vite si quelqu'un est bloqué. On demande. On n'attend pas qu'on vienne nous le dire.

> **Exemple réel** : Un senior voit qu'un autre membre du collectif dérape sur un sujet. Il n'alerte pas. Il pense « il va s'en sortir » ou « ce n'est pas mon rôle ». Le client s'en aperçoit avant nous. La confiance est brisée. **Être disponible, c'est signaler un manque avant que le client ne le voie.**

### Humble / Passif
On accepte qu'une PR soit rejetée. On n'accepte pas une mauvaise décision sans dire pourquoi. Le silence consentant n'existe pas à trois — il se voit trop.

---

## CHAPITRE III — AGRESSIF PAR DÉFAUT

On intervient sur des projets en feu. On dépanne des équipes en perdition. C'est exigeant. C'est intense. Un vrai sprint, ça dure dix secondes. Pour nous, ça dure 2 à 3 semaines. Et nous, nous durons.

### S'entraîner dur sans brûler
On travaille avec exigence. On tient nos délais. On livre la qualité qu'on s'est promise. Mais on ne sacrifie pas notre santé, notre sommeil, ou notre capacité à tenir demain. **La discipline, c'est la capacité de tenir dans la durée.** Pas l'explosion d'effort suivie d'un épuisement.

> **Exemple réel** : On enchaîne trois projets d'urgence en deux semaines. On livre tout. On est fiers. La semaine suivante, on est à plat. On fait des erreurs qu'on ne ferait pas normalement. **S'entraîner dur, c'est savoir dire « je tiens, mais pas à ce rythme indéfiniment ».**

### Par défaut, on est agressifs
Quand on ne sait pas quoi faire, on fait quelque chose. On ne reste pas bloqué parce qu'on n'a pas toute l'information. On ne reporte pas parce qu'on a peur de se tromper. On avance avec ce qu'on a, on s'ajuste en chemin. Ce n'est pas de la témérité. C'est de l'action calculée.

> *« Mets ta ceinture. »* — Frank Martin, *Le Transporteur*

On se prépare. On se protège. Et on avance.

---

## CHAPITRE IV — LE CADRE LIBÈRE

| Le cadre | Liberté qu'il génère |
|---|---|
| Revues de code exigeantes | Déployer sans peur |
| Tests automatisés maintenus | Refactorer sans régression |
| Documentation à jour | Partir en congés sans être rappelé |
| Architecture simple et claire | Ajouter des features rapidement |
| Rétrospectives honnêtes | Améliorer continuellement notre processus |
| Communication proactive | Travailler sans micro-management |

> *« Règle numéro un : on ne change jamais le deal. »* — Frank Martin, *Le Transporteur*

La rigueur n'est pas une contrainte. C'est ce qui nous permet d'être rapides, sereins, et fiables. On tient nos engagements. On ne les change pas en cours de route.

### Les procédures de base (Procédure)

> *« Je ne pose pas de questions. Je livre. »* — Frank Martin, *Le Transporteur*

Quand la procédure est claire, nous n'avons pas besoin de réfléchir à comment faire. Nous savons. Nous agissons. Nous livrons. Nous avons des procédures — des procédures de base — réparties en trois domaines :

**Commerciales** — avant la mission :
- Prise de contact avec un prospect
- Estimation et chiffrage rapide
- Devis et proposition commerciale
- Entretien type "embauche" (avant intégration)
- Entretien client initial (après signature)

**Processus projet** — pendant la mission :
- Arrivée sur un nouveau projet
- Livraison en production
- Communication avec un client
- Revue de code
- Rituels du collectif (débrief du vendredi, auto-évaluation, revue de charte)
- Documentation
- Gestion d'incident
- Priorisation sous pression

**Techniques** — chaque jour :
- Messages de commit (Conventional Commits)
- Commits atomiques
- Branches et flux Git (GitHub Flow par défaut)
- Qualité de code minimale (pre-push)

**Le principe** : Procédure = liberté. Quand la procédure est claire, l'esprit est libre pour se concentrer sur l'essentiel. Elles ne nous enchaînent pas. Elles nous donnent un point de départ. Une ligne de base.

Voir l'**Annexe C** pour le détail de chaque Procédure.

### Discipliné mais pas rigide

On applique nos standards. Mais on ne les applique pas aveuglément quand le contexte change. Une règle qui a du sens sur un projet de 6 mois peut être contre-productive sur une mission de 3 jours. On adapte. On ne s'obstine pas.

Les Procédure sont des lignes de base à partir desquelles nous dévions intelligemment quand le contexte l'exige. Pas des chaînes. Pas des excuse pour ne pas réfléchir. Des points de départ.

---

## CHAPITRE V — NOS RITUELS

### Le Débrief du vendredi
Tous les vendredis, 15 minutes. Cinq questions. Chacun répond à tour de rôle :
1. Qu'est-ce que **j'ai** laissé passer cette semaine ?
2. Où ai-je été **trop souple** ou **trop dur** ?
3. Quelle décision ai-je **reportée** par peur ou par excès de prudence ?
4. Ai-je **écouté** avant de parler ?
5. L'équipe sait-elle **pourquoi** nous faisons ce que nous faisons ?

Pas de compte-rendu formel. Juste une conversation. On se regarde, on dit la vérité, on passe à autre chose.

### Le Debrief post-livraison (100 % des livraisons)
Après chaque sprint, chaque release, chaque livraison en production — réussie ou décevante. Le succès ne dispense pas de l'apprentissage. Quand tout va bien, on comprend pourquoi. Quand ça va mal, on ne revit pas la même situation.

**Format léger** (sprint ou livraison courante) : 15 min. Ce qui s'est bien passé, ce que j'ai laissé passer, une action pour la prochaine fois.

**Format structuré** (release complexe, tension élevée) : on détaille. Chronologie, causes, actions. La profondeur s'adapte.

### Le Post-Mortem (incident critique uniquement)
Quand il y a un impact grave — données perdues, indisponibilité longue, client impacté, réputation en jeu — on sort le grand jeu. Pas de blâme, mais pas de légèreté non plus. On investigate. Voir les **Modèles Opérationnels — Post-Mortem**.

### La Revue de Charte
Tous les trois mois, on relit cette charte ensemble. Dix minutes. On la garde, on l'adapte, ou on en jette des bouts. Elle est vivante. Mais elle ne s'affaiblit pas par lassitude.

---

## CHAPITRE VI — CE QU'ON ATTEND DE CHACUN

- **On parle** quand quelque chose ne va pas, même sans solution.
- **On soutient** une décision collective une fois qu'elle est prise, même si on n'était pas d'accord avant.
- **On documente** ce qu'on apprend pour que les autres n'aient pas à réapprendre seuls.
- **On demande de l'aide** avant que ça devienne critique.
- **On dit « je ne sais pas »** sans honte. Et « j'ai compris » seulement quand c'est vrai.

### Ce qu'on n'accepte pas
- Rejeter la faute sur l'extérieur — **même et surtout sur un membre du collectif**.
- Garder le silence sur un problème qu'on voit venir.
- Le « c'est comme ça qu'on a toujours fait ».
- Déployer en production sans plan de secours.
- Une rétrospective sans action à la clé.

> **Exemple réel** : Un membre du collectif mentionne à un chef de projet externe qu'un retard est lié à un autre membre. Il ne le fait pas pour accuser — il pense donner une information utile. Mais le résultat est le même : l'extérieur entend que le problème vient de l'un des nôtres. **Le sujet aurait dû être traité en interne avant.** On discute entre nous d'abord. On aligne notre version. On ne laisse jamais l'extérieur découvrir nos friction internes avant qu'on les ait résolues.

> *« Ne fais jamais de promesses que tu ne pourras pas tenir. »* — Frank Martin, *Le Transporteur*

Quand on s'engage sur une action en rétrospective ou en retour d'expérience, on la tient. On ne dit pas « je vais corriger ça » pour faire bien. On dit ce qu'on peut faire, et on le fait. Pas de noms quand on parle de problèmes. Pas de « c'est lui qui… ». On parle de faits, de processus, de décisions. À trois, c'est encore plus essentiel — on sait tout de suite de qui on parle. Le but n'est pas de savoir qui a merdé. C'est de ne plus merder de la même façon.

---

## CHAPITRE VII — NOTRE ARTISANAT

### Prioriser et avancer
Face à la surcharge : identifier le sujet le plus critique, agir, passer au suivant. Un seul à la fois. Pas trois en parallèle en se disant qu'on gère.

### Découper et maîtriser
Face à une complexité écrasante : découper en morceaux indépendants, un responsable par morceau, des interfaces claires, on avance morceau par morceau.

> **Exemple réel** : Premier développeur front-end sur un projet datant de 8 ans. Du Jinja legacy, du spaghetti code, aucun test. Au lieu de tout réécrire d'un coup, on a ajouté du Vue progressivement dans les pages critiques, puis migré vers Nuxt page par page. **On n'a pas tout cassé. On a avancé morceau par morceau, avec un plan.**

### Guider par l'intention
Celui qui porte le sujet clarifie le « pourquoi » et le « quoi ». Celui qui l'exécute choisit le « comment ». Si le « comment » échoue, celui qui a porté le sujet assume. S'il réussit, celui qui l'a fait est crédité.

---

## CONCLUSION

On n'est pas des héros. On est des professionnels. On ne demande pas d'être parfait. On demande d'assumer ses imperfections, de les nommer, et de les corriger. Notre force, c'est qu'on est trois, qu'on se connaît, et qu'on sait exactement où chacun en est.

> *« C'est pas un homme de talent. C'est un homme de focus, d'engagement, et de volonté pure. »* — Viggo Tarasov, *John Wick*

---

**Adoptée par le collectif le _______________**

| Nom | Rôle | Signature |
|-----|------|-----------|
|     |      |           |
|     |      |           |
|     |      |           |

---

*Charte vivante — Relue tous les 3 mois*


---

# ANNEXES

*Les outils ci-dessous ne sont pas obligatoires. Ils sont là quand on en a besoin — quand l'incident est complexe, quand on livre en production, quand on veut faire le point sur soi.*

---

## ANNEXE A — GLOSSAIRE

| Terme | Définition |
|-------|-----------|
| **Responsabilité Intégrale** | Responsabilité totale et inconditionnelle du résultat, sans recours au blâme externe. |
| **Débrief du vendredi** | Rituel hebdomadaire de 15 minutes basé sur 5 questions de responsabilisation, en asynchrone. |
| **Debrief post-livraison** | Rituel systématique après chaque livraison, format adaptatif. |
| **Post-Mortem** | Investigation complète après incident critique (Modèles Opérationnels, Post-Mortem). |
| **ADR** | Architecture Decision Record — document traçant les décisions techniques et leur raisonnement. |
| **Plan de Secours** | Procédure documentée et testée permettant de revenir à l'état stable en cas d'échec de la livraison. |
| **Procédure** | Standard Operating Procedure — procédure opérationnelle standard, ligne de base adaptable selon le contexte. |
| **Spike** | Investigation technique de courte durée (max 2 jours) pour trancher une décision. |

---

---

## ANNEXE B — GUIDE DU DÉBRIEF DU VENDREDI

### Les 5 questions, leur sens, et comment y répondre

---

#### Question 1 — Qu'est-ce que j'ai laissé passer cette semaine ?

**Ce qu'elle cherche** : L'auto-examen. Pas la culpabilité. Le recul. Quel sujet as-tu vu déraper sans intervenir ? Quel détail as-tu ignoré parce que tu avais autre chose à faire ?

**Exemples de réponses** :
- « J'ai vu que la doc de l'API n'était plus à jour. Je n'ai rien dit. Résultat : le troisième a perdu 2h ce matin. »
- « J'ai laissé traîner la revue de code de la PR critique. Ça a retardé le merge de 24h. »
- « J'ai remarqué que le monitoring ne couvrait pas le nouveau endpoint. Je me suis dit 'on verra'. »

**Piège à éviter** : L'auto-flagellation vague (« J'ai tout raté »). Viser un fait précis. Un événement. Une décision.

---

#### Question 2 — Où ai-je été trop souple ou trop dur ?

**Ce qu'elle cherche** : L'équilibre. As-tu accepté une qualité insuffisante par facilité ? As-tu bloqué une PR pour un détail sans importance ? As-tu laissé passer un retard sans rien dire, ou harcelé quelqu'un pour une formalité ?

**Exemples de réponses** :
- « Trop souple : j'ai accepté un déploiement sans tester le rollback. On a eu chaud. »
- « Trop dur : j'ai rejeté une PR pour un détail de style quand le fond était bon. J'ai perdu du temps à tout le monde. »
- « Trop souple : j'ai dit 'pas grave' pour un retard de 2 jours. Le client n'a pas dit la même chose. »

**Piège à éviter** : Répondre « ni l'un ni l'autre » chaque semaine. Si tu n'as jamais d'excès, tu ne te regardes pas assez.

---

#### Question 3 — Quelle décision ai-je reportée par peur ou par excès de prudence ?

**Ce qu'elle cherche** : Ce que tu fuis. La décision que tu ne prends pas parce qu'elle est inconfortable. Le sujet que tu laisses traîner parce que trancher signifie s'engager.

**Exemples de réponses** :
- « Je dois dire au client que son délai est irréaliste. Je ne le fais pas parce que j'ai peur de sa réaction. »
- « Il faut qu'on migre de cette base de données legacy. Je reporte depuis 3 semaines parce que c'est risqué. »
- « Je dois dire à l'équipe que mon estimation initiale était fausse. Je ne le fais pas par orgueil. »

**Piège à éviter** : Confondre report de décision et décision de ne pas décider. Si tu as choisi de ne pas agir pour une bonne raison, dis-le. Mais sois honnête : c'était-il vraiment une bonne raison ?

---

#### Question 4 — Ai-je écouté avant de parler ?

**Ce qu'elle cherche** : La qualité de tes échanges. As-tu attendu que l'autre finisse avant de répondre ? As-tu compris son point de vue avant de le contrer ? As-tu demandé « pourquoi » avant de dire « non » ?

**Exemples de réponses** :
- « Lors du conflit sur l'architecture, j'ai défendu mon approche avant de comprendre la sienne. J'aurais dû écouter d'abord. »
- « J'ai coupé l'autre en rétrospective parce que je pensais savoir ce qu'il allait dire. Je ne savais pas. »
- « J'ai bien écouté sur le sujet du déploiement. Ça m'a permis de comprendre son point de vue et de trouver un compromis. »

**Piège à éviter** : Répondre « j'ai toujours bien écouté ». À trois, on se connaît. On sait quand l'autre écoute vraiment et quand il prépare sa réplique.

---

#### Question 5 — L'équipe sait-elle pourquoi nous faisons ce que nous faisons ?

**Ce qu'elle cherche** : L'alignement. Comprendre le sens du travail. Pas seulement les tâches du jour, mais la raison d'être du projet. Si quelqu'un ne sait pas, c'est le signe que la communication sur le « pourquoi » a failli.

**Exemples de réponses** :
- « Le client a changé ses priorités mardi. Je ne l'ai pas communiqué clairement. L'équipe a continué sur l'ancienne roadmap. »
- « Oui, on sait tous pourquoi on fait cette refonte. Le client a validé l'objectif. C'est clair. »
- « Non. J'ai le sentiment qu'on execute sans comprendre le besoin métier derrière. Il faut qu'on clarifie avec le PO. »

**Piège à éviter** : Répondre « oui » par habitude. Si l'équipe sait le « quoi » mais pas le « pourquoi », la réponse est « non ».

---

### Comment animer le Débrief du vendredi

**Durée** : 15 minutes strictes. Pas 20. Pas 30. 15.
**Format** : En asynchrone sur le canal. Chacun répond quand il peut, dans le fil du jour.
**Ordre** : Celui qui a porté le sujet le plus critique cette semaine commence. Ou on tourne.
**Règle d'or** : Pas de « oui mais » sur les réponses des autres. On écoute. On ne juge pas.
**Ce qui en sort** : Pas de compte-rendu. Pas d'action formelle. Juste une conscience partagée de où on en est. Si une action émerge naturellement, on la note. Sinon, on laisse passer.
**Variante allégée** : Si la semaine est calme, une phrase sur ce qui a bien marché + une sur ce qu'on aurait dû faire différemment + une décision pour la semaine prochaine suffit.

**Quand ça ne marche pas** : Si le Débrief du vendredi devient une corvée ou une liste de plaintes, arrêtez-le. Relisez cette annexe. Recommencez quand vous en ressentez le besoin.

---

## ANNEXE C — STANDARD OPERATING PROCEDURES (Procédure)

### Le principe

Les Procédure ne sont pas des chaînes. Ce sont des lignes de base. Quand la procédure est claire, l'esprit est libre pour se concentrer sur l'essentiel — pas pour réinventer la roue à chaque fois.

> *« Nous avions des procédures pour presque tout ce que nous faisions. Mais ces procédures ne nous ont pas contraints sur nos projets. Au contraire, elles nous ont donné la liberté. Les procédures disciplinées étaient une ligne de base à partir de laquelle nous déviions intelligemment, et nous avions la liberté d'agir rapidement sur la base de ces procédures. »*

On adapte en fonction de la taille, de la mission et du temps passé. Un projet de 3 jours n'a pas besoin de la même rigueur qu'un projet de 6 mois. Mais le point de départ reste le même.

---

### Procédure 1 — Arrivée sur un nouveau projet

**À faire la première semaine :**

1. **Obtenir les accès** : repo, environnements (dev, staging, prod si autorisé), documentation existante, outils de suivi (Jira, Trello, etc.)
2. **Lire ce qui existe** : README, doc technique, code de la base, historique des PR récentes
3. **Poser les questions de base** :
   - Quelle est la stack technique exacte ? (versions, dépendances critiques)
   - Comment se fait le déploiement actuellement ?
   - Y a-t-il des pièges connus, de la dette technique documentée ?
4. **Identifier les contacts et les responsabilités** côté client :
   - **Le contact fonctionnel** : qui définit les priorités et le périmètre ? (PO, chef de projet)
   - **Le contact technique** : qui valide les choix techniques ? (lead dev, architecte)
   - **Le contact "pouvoir"** : qui peut signer un avenant ou valider un changement de périmètre ? (pas forcément le même que le contact quotidien)
   - **Les responsables par domaine** : qui gère la base de données, les déploiements, les opérations, l'infrastructure ?
   - **Le processus d'escalade** : si quelque chose bloque, à qui s'adresser et dans quel ordre ?
5. **Documenter la première impression** : remplir la Fiche Projet à l'Arrivée (Modèles Opérationnels, Fiche projet à l'arrivée)
6. **Faire un premier debrief interne** : partager avec le collectif ce qu'on a trouvé, les alertes, les risques

**Déviation autorisée** : sur une mission de moins d'une semaine, on condense en une demi-journée d'immersion. On ne remplit pas la fiche complète, mais on note les 3 points clés à savoir.

---

### Procédure 2 — Livraison en production

**Avant la livraison :**

1. Remplir la Checklist de Livraison (Modèles Opérationnels, Checklist de livraison en production)
2. S'assurer qu'un plan de secours est testé et documenté
3. Prévoir un créneau de disponibilité post-livraison (2h minimum)

**Pendant la livraison :**

4. Suivre la procédure de déploiement étape par étape
5. Vérifier les monitoring et alertes en temps réel
6. Ne pas livrer le vendredi après 16h (sauf urgence critique)

**Après la livraison :**

7. Faire un Debrief post-livraison (Chapitre V)
8. Si incident : déclencher le Post-Mortem (Modèles Opérationnels, Post-Mortem)

**Déviation autorisée** : sur un hotfix critique, on peut raccourcir la checklist aux points de sécurité uniquement. Mais on ne livre jamais sans plan de secours.

---

### Procédure 3 — Rituels du collectif

Nos rituels réguliers, ceux qui cadencent notre travail et maintiennent notre alignement.

**Le Débrief du vendredi** (Chapitre V + Annexe B)
- Quand : tous les vendredis
- Format : en asynchrone sur le canal. 5 questions. Chacun répond quand il peut.
- Durée : 15 minutes de lecture/écriture par personne
- But : alignement, auto-examen, conscience partagée

**Le Débrief post-livraison** (Chapitre V)
- Quand : après chaque sprint, release, livraison. 100 % des opérations.
- Format léger (par défaut) : 15 min. Ce qui s'est bien passé, ce que j'ai laissé passer, une action.
- Format structuré (si complexe) : template des Modèles Opérationnels, Débrief post-livraison. Chronologie, causes, actions SMART.
- But : apprendre. Quand on gagne, on comprend pourquoi. Quand on perd, on ne perd plus de la même façon.

**Le Post-Mortem** (Chapitre V + Modèles Opérationnels, Post-Mortem)
- Quand : incident critique uniquement (données perdues, client impacté, indisponibilité longue)
- Format : template complet. Chronologie, 5 Pourquoi, responsabilité individuelle, actions correctives.
- But : investiguer sans blâme, capitaliser pour ne pas revivre la situation

**La Revue de Charte**
- Quand : tous les 3 mois
- Format : 10 minutes. On relit la charte ensemble. On garde, on adapte, on jette.
- But : la charte reste vivante. Elle ne s'affaiblit pas par lassitude.

**L'Auto-évaluation**
- Quand : toutes les 4-6 semaines
- Format : chacun remplit la grille (Modèles Opérationnels, Grille d'auto-évaluation) seul, puis on partage à trois en 30 minutes
- But : prendre du recul sur soi, identifier ses patterns, demander de l'aide si besoin

**Règle** : un rituel sans régularité n'est pas un rituel. Si on ne peut pas le tenir, on l'arrête. On le reprend quand on en ressent le besoin.

**Déviation autorisée** : en période de rush intense (3 semaines de sprint serré), on peut réduire le Débrief du vendredi à 3 questions au lieu de 5. Mais on ne l'annule pas.

---

### Procédure 4 — Communication avec un client

**Règle d'or** : on ne laisse jamais le client dans le flou. Même quand on n'a pas de nouvelles, on dit qu'on n'a pas de nouvelles.

On applique le principe Unis pour avancer (Chapitre I) avec l'équipe client : quand le PO est débordé, on clarifie les specs. Quand le lead technique est absent, on valide les choix techniques entre nous. On avance ensemble. On ne laisse personne seul sous le feu.

1. **Après chaque réunion** : CR envoyé dans l'heure (Modèles Opérationnels, Compte-rendu de réunion)
2. **Après chaque appel** : CR envoyé dans l'heure (Modèles Opérationnels, Compte-rendu de point téléphonique)
3. **Chaque vendredi** : Rapport d'état hebdomadaire (Modèles Opérationnels, Rapport d'état hebdomadaire)
4. **En cas de blocage** : alerter le client **avant** que le délai ne soit compromis, pas après
5. **En cas de retard** : annoncer le retard avec une solution, pas juste un problème

**Déviation autorisée** : sur un projet de moins d'une semaine, on peut remplacer le rapport hebdo par un simple message dans le canal du projet.

---

### Procédure 5 — Revue de code

**Chaque PR doit être revue par au moins 1 pair avant merge.**

1. Lire la PR dans son ensemble avant de commenter ligne par ligne
2. Vérifier : logique, tests, documentation, style, sécurité évidente
3. Commenter avec bienveillance : sur le code, pas sur la personne
4. Approuver si c'est bon. Demander des changements si nécessaire. Ne pas laisser traîner.
5. Le merge est fait par l'auteur après approbation, pas par le relecteur

**Déviation autorisée** : sur un hotfix critique, le lead peut merger sa propre PR après revue rapide. Mais il en informe le collectif immédiatement.

---

### Procédure 6 — Documentation

**Quand documenter :**

1. Quand on arrive sur un projet pourri → Documentation Rapide (Modèles Opérationnels, Documentation rapide)
2. Quand on prend une décision technique structurante → ADR (Modèles Opérationnels, ADR)
3. Quand on part d'un projet → Transfert/Passation (Modèles Opérationnels, Transfert/Passation)
4. Quand quelqu'un du collectif nous pose 2 fois la même question → ça mérite une doc

**Règle** : 30 minutes de doc aujourd'hui évitent 2 heures de recherche dans 6 mois. La doc n'a pas besoin d'être parfaite. Elle a besoin d'être utile.

**Déviation autorisée** : sur une mission de 2-3 jours, on note juste les 3 pièges à éviter et les accès. Pas de doc exhaustive.

---

### Procédure 7 — Gestion d'incident

**Quand un incident est déclaré :**

1. **Stabiliser** : rollback, hotfix, mitigation immédiate. On ne cherche pas la cause avant d'avoir stabilisé.
2. **Communiquer** : informer le client et le collectif. Qui, quoi, quand, impact connu.
3. **Documenter** : chronologie des faits, actions prises, heures clés.
4. **Résoudre** : correction définitive, tests, déploiement.
5. **Apprendre** : Debrief post-livraison pour les incidents mineurs (Chapitre V) ou Post-Mortem pour les incidents critiques (Modèles Opérationnels, Post-Mortem).

**Règle** : pas de blâme pendant l'incident. On se concentre sur la résolution. Le retour d'expérience vient après.

**Déviation autorisée** : sur un incident mineur (1 utilisateur, 5 min d'impact), on condense les étapes 3-5 en un simple message dans le canal avec les apprentissages.

---

### Procédure 8 — Messages de commit (Conventional Commits)

Chaque message de commit suit le format **[type](scope): description** :

- **type** : `feat` (nouvelle fonctionnalité), `fix` (correction), `refactor` (refonte sans changement comportemental), `docs` (documentation), `test` (tests), `chore` (tâches techniques)
- **scope** : optionnel, le domaine concerné (`auth`, `api`, `ui`)
- **description** : impératif présent, pas de point final. « Ajoute » pas « Ajouté »

**Exemples** :
- `feat(auth): ajoute la connexion OAuth2`
- `fix(api): corrige le timeout sur les gros payloads`
- `refactor(ui): simplifie le composant DatePicker`

**Pourquoi** : quand on arrive sur un projet legacy, l'historique git est souvent la seule documentation. Un historique clair nous sauve des heures.

**Déviation autorisée** : sur un projet urgent (< 1 semaine), on garde le format simple : `[type]: description`. Pas de scope.

---

### Procédure 9 — Commits atomiques

**Un commit = une chose et une seule.**

- Un commit contient une seule modification logique
- On ne mélange pas feature, fix et refactor dans le même commit
- On peut pousser 5 petits commits propres plutôt qu'un gros commit confus
- Chaque commit doit pouvoir être reverté sans casser autre chose

**Test** : si le message de commit contient « et » ou « + », c'est probablement deux commits.

**Pourquoi** : quand on doit cherry-pick, revert ou bisect, un historique atomique nous sauve. Quand on lit l'historique, on comprend.

**Déviation autorisée** : en fin de projet urgent, on peut regrouper des petits commits de polish. Mais jamais des commits de nature différente (feat + fix).

---

### Procédure 10 — Branches et flux Git

Nous utilisons **GitHub Flow** par défaut : main branch protégée, feature branches, PR obligatoire, merge après revue.

| Flux | Quand l'utiliser | Règles |
|---|---|---|
| **GitHub Flow** | Par défaut sur tous nos projets | `main` protégée. Feature branch → PR → revue → merge. Pas de develop, pas de release branch. |
| **GitFlow** | Projets avec releases planifiées (semver, changelog) | `main`, `develop`, `feature/*`, `release/*`, `hotfix/*`. Pour les projets où les releases sont cérémonielles. |
| **GitLab Flow** | Projets avec environnements multiples | Branches par environnement (`production`, `staging`). Plus simple que GitFlow, plus structuré que GitHub Flow. |

**Règles communes à tous les flux** :
- `main` est toujours déployable
- Chaque PR est revue par au moins 1 pair
- Les branches sont supprimées après merge
- Le nom de la branche reflète son contenu : `feat/123-oauth`, `fix/timeout-api`

**Déviation autorisée** : sur un projet solo (< 1 semaine), on peut commit directement sur main. Mais on informe le collectif.

---

### Procédure 11 — Qualité de code minimale (pre-push)

Avant chaque push, on vérifie :

1. **Le code compile** / les tests passent en local
2. **Le linter ne râle pas** (eslint, prettier, black, etc. selon le projet)
3. **Pas de `console.log` oublié**, pas de TODO sans issue associée
4. **La PR a un titre clair** et une description si nécessaire
5. **On a relu son propre code** avant de demander une revue

**Règle** : on ne demande pas à un pair de relire du code qu'on n'a pas relu soi-même.

**Déviation autorisée** : en hotfix, on peut push avec un TODO explicite et une issue créée immédiatement.

---

### Procédure 12 — Prise de contact (premier échange avec un prospect)

**Quand** : premier contact, par téléphone ou email. Pas un entretien formel — une première conversation pour comprendre le besoin.

1. **Écouter avant de parler** : laisser le prospect décrire son problème sans l'interrompre
2. **Poser les questions clés** :
   - Quel est le périmètre technique ? (stack, legacy, projet neuf)
   - Quel est le délai ? (urgent ? date butoir ?)
   - Quel est le budget alloué ? (même une fourchette)
   - Qui prend les décisions techniques côté client ?
   - Quel est l'état actuel du projet ? (ça marche ? c'est en feu ?)
3. **Ne pas s'engager sur le coup de fil** : « Je reviens vers vous sous 24h avec une première estimation »
4. **Remplir le CR d'appel** (Modèles Opérationnels, Compte-rendu de point téléphonique) dans l'heure
5. **Debrief interne** : partager avec le collectif sous 24h. On décide ensemble si on se positionne.

**Règle** : on ne prend pas une mission seul. On en discute à trois. On partage le TJM, le contexte, les risques.

**Déviation autorisée** : si le prospect nous contacte directement (recommandation), on peut accélérer le cycle. Mais on informe toujours le collectif avant de signer.

---

### Procédure 13 — Entretien type "embauche" (avant intégration)

**Quand** : après la prise de contact initiale (Procédure 12), une grande entreprise nous invite à un entretien formel en présentiel ou visio. Ce n'est PAS un premier contact commercial — c'est un entretien d'évaluation technique et culturel. La Procédure 12, c'est la première conversation (téléphone/email). La Procédure 13, c'est l'entretien formel qui suit.

Ce n'est pas un entretien d'embauche. Nous ne sommes pas des candidats. Nous sommes des professionnels qu'on évalue pour une mission. Notre posture change tout.

1. **Se présenter comme un résolveur de problèmes** : pas de CV, pas de parcours scolaire. On parle de projets qu'on a débloqués, de situations qu'on a gérées. On montre, on ne raconte pas.
2. **Poser les questions techniques clés** :
   - Quelle est la stack exacte ? (versions, legacy, dette)
   - Quelle est l'architecture actuelle ? (monolithe, microservices, hybride)
   - Qui est l'équipe en place ? (nombre, seniorité, disponibilité pour nous aider)
   - Quel est l'état du projet ? (ça marche, c'est en feu, c'est un projet neuf)
   - Quel est le périmètre de notre intervention ? (feature, refonte, maintenance, audit)
3. **Évaluer si on peut livrer** :
   - Le délai est-il réaliste ?
   - Le périmètre est-il clair ?
   - Le client a-t-il les ressources pour nous supporter (accès, réponses, validations) ?
4. **Négocier en professionnel** : périmètre, TJM, conditions, accès, rythme de points. On ne dit pas "oui" sur le coup. On dit "je reviens vers vous sous 24h après en avoir parlé avec mon collectif."
5. **Debrief interne** : partager avec le collectif dans les 24h. Est-ce qu'on se positionne ? Quels sont les risques ? Quel TJM ?

**Règle** : on ne passe jamais un entretien de ce type sans le debriefer à trois. Même si c'est "juste" un appel de 20 minutes.

**Déviation autorisée** : si le client nous connaît déjà (mission récurrente), l'entretien peut être un simple appel de 10 min pour valider le périmètre. Mais on debrief quand même.

---

### Procédure 14 — Devis et proposition commerciale

**Structure du devis** :

1. **Contexte** : en 3 lignes, le problème du client et notre compréhension
2. **Périmètre** : ce qui est inclus, ce qui ne l'est pas (front, back, intégration, déploiement, formation)
3. **Déroulement** : phases, livrables, jalons de validation
4. **Budget** : forfait ou TJM, options (fixe, récurrent, maintenance)
5. **Conditions** : paiement (30% à la signature, 40% à mi-parcours, 30% à livraison), révisions, avenants
6. **Validité** : le devis est valable 30 jours

**Avant d'envoyer** :
- Un membre du collectif relit le devis (revue interne)
- On aligne le TJM avec les autres missions en cours
- On s'assure que le délai est réaliste

**Déviation autorisée** : pour une mission de moins de 5 jours, on peut simplifier en 3 lignes (périmètre, TJM, délai) sans devis formel. Mais on envoie quand même un email récapitulatif.

---

### Procédure 15 — Entretien client initial (après signature)

**Premier échange structuré avec le client après signature du contrat.**

1. **Présentation du collectif** : qui sommes-nous, comment on travaille, nos rituels
2. **Clarification du périmètre** : relire le contrat ensemble, s'assurer que tout le monde a la même compréhension
3. **Organisation pratique** :
   - Quels outils de communication ? (Slack, Teams, email)
   - Quel rythme de points ? (hebdo, bi-hebdo)
   - Qui est le contact privilégié côté client ?
   - Qui valide les livrables ?
4. **Accès et environnements** : repo, staging, prod, documentation existante
5. **Première livraison rapide** : identifier un succès rapide pour la première semaine. Ça crée la confiance.

**Règle** : on ne commence pas à coder avant d'avoir eu cet entretien. Même un appel de 20 minutes suffit. Mais on ne part pas dans le flou.

**Déviation autorisée** : si le client est pressé et que le contrat est clair, on peut condenser cet entretien en un email avec les 5 points. Mais on le fait avant le premier commit.

---

### Procédure 16 — Priorisation sous pression

**Quand** : surcharge de travail, urgence multiple, incapable de trancher quoi faire en premier.

**La méthode** :
1. **Lister** : tout ce qui est sur la table, sans filtrer
2. **Trier par impact client** : qu'est-ce qui fait le plus de mal au client s'il n'est pas fait aujourd'hui ?
3. **Trier par réversibilité** : qu'est-ce qu'on peut défaire facilement si on se trompe ? (faire ça en premier — ça débloque)
4. **Prendre un décideur** : une seule personne tranche. Même si c'est discutable. L'indécision coûte plus cher qu'une mauvaise décision réversible.
5. **Communiquer** : dire au client et à l'équipe ce qu'on fait, ce qu'on reporte, et pourquoi.

**Déviation autorisée** : en vrai chaos total (plusieurs clients en même temps), on se rejoint à 3 en 10 minutes pour répartir. Pas de héros solo.

---

### Procédure 17 — Estimation et chiffrage rapide

**Quand** : un prospect appelle pour une mission urgente, on doit répondre rapidement avec un ordre de grandeur.

**La méthode** :
1. **Comprendre le périmètre** : quoi (stack, legacy/neuf), combien de temps (délai), qui (équipe côté client)
2. **Identifier les inconnues majeures** : ce qu'on ne sait pas et qui pourrait tout changer
3. **Donner une fourchette**, pas un chiffre : "Entre X et Y jours, avec Z comme risque principal"
4. **Proposer un premier jalonnement** : "La première semaine nous permettra d'affiner l'estimation"
5. **Ne pas signer sous pression** : "Je reviens vers vous sous 24h après en avoir parlé avec mon collectif"

**Pièges à éviter** :
- Estimer sans voir le code quand c'est du legacy
- Oublier les jours de setup, de réunion, de documentation
- Ne pas prévoir de marge pour l'imprévu (règle : +30% sur un projet inconnu)

**Déviation autorisée** : pour un prospect connu et de confiance, on peut donner une fourchette orale immédiate, suivie d'un email récapitulatif sous 24h.

---

*Les Procédure sont des lignes de base, pas des chaînes. On les suit quand elles nous font gagner du temps. On les adapte quand le contexte l'exige. On les améliore quand on apprend quelque chose de nouveau.*

---

*Fin des annexes*
