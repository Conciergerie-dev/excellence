# PLAN DE FORMATION VERS L'EXCELLENCE
## L'Ascension du Collectif

---

## PRINCIPE

Ce plan n'est pas une formation en salle. C'est un **parcours d'application** : on apprend en faisant, sur nos missions réelles, et on se rejoint régulièrement pour partager ce qu'on a découvert.

**Durée** : 12 semaines, 4 phases de 3 semaines.
**Rythme** : ~1 heure de lecture/réflexion par semaine + application en mission + 1 point collectif par phase (30-45 min).
**Règle d'or** : on ne valide pas une phase sans que les trois aient pratiqué ce qu'elle contient. Pas de théorie sans terrain.

> *« Ce n'est pas la destination qui compte. C'est le trajet. »* — Frank Martin, *Le Transporteur*

---

## ARCHITECTURE DU PARCOURS

| Phase | Semaines | Thème | Ce qu'on maîtrise | Point de validation collectif |
|-------|----------|-------|-------------------|------------------------------|
| **1 — Fondation** | 1 à 3 | Responsabilité Intégrale & Discipline | Les 5 attitudes, les 3 procédures techniques, le Débrief du vendredi | Premier Débrief du vendredi réussi + première revue de code avec la Procédure |
| **2 — Opération** | 4 à 6 | Arriver, livrer, documenter | Procédure Arrivée, Procédure Livraison, Procédure Documentation, modèles d'entrée et de sortie | Fiche projet remplie sur une mission réelle + une livraison avec checklist |
| **3 — Communication** | 7 à 9 | Le client, l'équipe, le debrief | Procédure Communication, modèles de CR, Débrief post-livraison, Post-Mortem | CR envoyé dans l'heure + un Débrief post-livraison animé |
| **4 — Excellence** | 10 à 12 | Le commercial, la transmission, l'amélioration | procédures commerciales, Auto-évaluation, Revue de Charte, nouvelles Procédure | Auto-évaluation partagée + Revue de Charte + proposition d'amélioration |

---

# PHASE 1 — FONDATION
## Semaines 1 à 3 : Responsabilité Intégrale & Discipline

**Objectif** : intégrer les principes de Responsabilité Intégrale comme réflexe, et ancrer les procédures techniques dans notre quotidien de développeur.

---

### Semaine 1 — On assume

**À lire** : Charte, Chapitre I — Responsabilité Intégrale (tout : le principe, Maîtriser son ego, Croire en la mission, Unis pour avancer, Simple)

**À pratiquer sur sa mission** :
- Chaque fois qu'un problème survient, poser la question : *« Qu'est-ce que j'ai laissé passer ? »* au lieu de chercher un coupable.
- Tenir un petit carnet (ou un fichier texte) : 3 situations où on a appliqué EO, 1 où on a oublié.

**Exercice collectif** (30 min, visio ou autour d'une bière) :
- Chacun partage sa situation EO de la semaine. Pas de jugement, juste des faits.
- On se met d'accord sur le rituel : le Débrief du vendredi commence quand ? Où ? (canal Slack, email, visio ?)

> *« Règle numéro deux : pas de noms. »* — Frank Martin, *Le Transporteur*

---

### Semaine 2 — On se discipline

**À lire** : Charte, Chapitre IV — Le cadre libère (les procédures techniques)

**À appliquer quotidiennement** :
- **Procédure 8 — Conventional Commits** : tous les commits de la semaine suivent le format `[type](scope): description`
- **Procédure 9 — Commits atomiques** : un commit = une chose. Test : si le message contient « et », c'est deux commits.
- **Procédure 10 — GitHub Flow** : feature branch → PR → revue → merge. Pas de commit direct sur `main`.
- **Procédure 11 — Qualité pre-push** : relire son code avant de demander une revue. Pas de `console.log` oublié.

**À pratiquer** :
- Faire au moins une revue de code cette semaine en appliquant la Procédure 5 (lire la PR dans son ensemble, commenter sur le code pas sur la personne, approuver ou demander des changements sans laisser traîner).

**Exercice individuel** :
- Relire son historique git de la semaine précédente. Combien de commits respectent le format ? Combien auraient dû être découpés ?

---

### Semaine 3 — On s'ajuste

**À lire** : Charte, Chapitre II — Les Équilibres

**À pratiquer** :
- Lancer le **Débrief du vendredi** pour la première fois. Les 5 questions, en asynchrone sur le canal convenu. 15 minutes max.
- Cette semaine, observer ses propres bascules d'équilibre : suis-je passé de confiant à arrogant ? De prudent à paralysé ? De disponible à envahissant ?

**Exercice collectif** — Point de validation Phase 1 (45 min) :
- Chacun partage : un moment où EO a changé son approche, un moment où il a galéré avec les procédures techniques.
- On valide ensemble : les commits sont propres, les PR sont revues, le Débrief du vendredi a eu lieu.
- On décide si on continue, si on adapte, ou si on répète une semaine.

> *« On ne change jamais le deal. »* — Frank Martin, *Le Transporteur*

---

# PHASE 2 — OPÉRATION
## Semaines 4 à 6 : Arriver, Livrer, Documenter

**Objectif** : maîtriser les procédures d'entrée et de sortie de mission, et construire l'habitude de documenter.

---

### Semaine 4 — On débarque proprement

**À lire** : Procédure 1 — Arrivée sur un nouveau projet + Modèle "Fiche projet à l'arrivée"

**À pratiquer** :
- Si on démarre une nouvelle mission cette semaine : appliquer la Procédure 1 à la lettre. Accès, questions, contacts, fiche projet.
- Si on est en cours de mission : faire l'exercice rétrospectif — remplir la Fiche projet à l'arrivée *maintenant* avec ce qu'on sait. Ce qu'on aurait aimé savoir le jour 1.

**À documenter** :
- Remplir le Modèle "Fiche projet à l'arrivée" sur la mission en cours. Même incomplète, elle sera utile.

---

### Semaine 5 — On livre sans stress

**À lire** : Procédure 2 — Livraison en production + Modèle "Checklist de livraison en production"

**À pratiquer** :
- Si on livre cette semaine : appliquer la checklist complète. Signer. Avoir un relecteur.
- Si on ne livre pas : faire l'exercice à blanc — remplir la checklist sur la dernière livraison qu'on a faite. Ce qu'on aurait dû vérifier et qu'on a oublié.

**À lire aussi** : Procédure 7 — Gestion d'incident (les 5 étapes : Stabiliser → Communiquer → Documenter → Résoudre → Apprendre)

---

### Semaine 6 — On documente pour les autres

**À lire** : Procédure 6 — Documentation + Modèles "Documentation rapide" et "ADR"

**À pratiquer** :
- Identifier un système qu'on a compris sur sa mission et qui n'est pas documenté. Remplir le Modèle "Documentation rapide" (30 min max).
- Ou : prendre une décision technique qu'on a faite cette semaine et la formaliser en ADR si elle est structurante.

**Exercice collectif** — Point de validation Phase 2 (45 min) :
- Chacun présente : sa fiche projet (même incomplète) + sa doc rapide ou son ADR.
- On valide : la checklist de livraison est comprise, la Procédure d'incident est connue de tous.
- On vote : quelle Procédure on a trouvée la plus utile ? La plus contraignante ?

> *« Je ne pose pas de questions. Je livre. »* — Frank Martin, *Le Transporteur*

---

# PHASE 3 — COMMUNICATION
## Semaines 7 à 9 : Le Client, L'Équipe, Le Débrief

**Objectif** : maîtriser la communication client, animer les rituels de retour d'expérience, et gérer les incidents comme des opportunités d'apprendre.

---

### Semaine 7 — On communique comme des pros

**À lire** : Procédure 4 — Communication avec un client + Modèles "Compte-rendu de réunion" et "Compte-rendu de point téléphonique"

**À pratiquer** :
- Après chaque réunion ou appel client cette semaine : envoyer le CR dans l'heure. Même court. Même informel. Mais envoyé.
- Si pas de réunion cette semaine : écrire le CR d'un appel passé récemment, à titre d'exercice.
- Envoyer le rapport d'état hebdomadaire (Modèle "Rapport d'état hebdomadaire") le vendredi, même si le client ne le demande pas.

**Rappel** : la règle d'or de la Procédure 4 — on ne laisse jamais le client dans le flou.

---

### Semaine 8 — On débrief systématiquement

**À lire** : Charte, Chapitre V — Nos Rituels (Débrief post-livraison) + Modèle "Débrief post-livraison"

**À pratiquer** :
- Si on a livré cette semaine : animer un Débrief post-livraison. 15 min. Ce qui s'est bien passé, ce que j'ai laissé passer, une action.
- Si pas de livraison : faire le Débrief sur la dernière livraison, même rétrospectivement.

**À lire aussi** : Charte, Chapitre III — Agir plutôt qu'attendre + Annexe B — Guide du Débrief du vendredi

**Rituel** : le Débrief du vendredi continue. Cette semaine, on essaie d'approfondir une des 5 questions au lieu de répondre en une phrase.

---

### Semaine 9 — On apprend de nos incidents

**À lire** : Procédure 7 — Gestion d'incident (étape 5 : Apprendre) + Modèle "Post-Mortem"

**À pratiquer** :
- Si un incident a eu lieu récemment : remplir le Post-Mortem. Chronologie, 5 Pourquoi, responsabilité, actions.
- Si pas d'incident : faire l'exercice à blanc sur un incident passé (avant le collectif). Le traiter comme s'il venait de se produire.

**Exercice collectif** — Point de validation Phase 3 (45 min) :
- Chacun partage : un CR qu'il a envoyé cette semaine (ou un exercice) + son Débrief post-livraison.
- On valide : la communication client est régulière, les rituels sont ancrés.
- On discute : a-t-on vécu un moment où Unis pour avancer a fait la différence ?

> *« On progresse, on ne vise pas la perfection. »* — Robert McCall, *The Equalizer*

---

# PHASE 4 — EXCELLENCE
## Semaines 10 à 12 : Le Commercial, La Transmission, L'Amélioration

**Objectif** : maîtriser les procédures commerciales, prendre le recul sur soi, et animer l'amélioration continue du collectif.

---

### Semaine 10 — On prend le recul

**À lire** : Modèle "Grille d'auto-évaluation"

**À pratiquer** :
- Remplir la grille d'auto-évaluation individuellement. Toutes les questions. Être honnête.
- Se préparer à partager : ce qu'on a bien géré, ce qu'on aurait dû gérer différemment, ce qu'on va améliorer.

**Point collectif** (30 min) :
- Chacun partage ses réponses en 5 minutes. Pas de jugement. Pas de conseil non sollicité. Juste de la clarté.
- On note les patterns communs : est-ce qu'on galère tous sur le même point ? Est-ce qu'une procédure manque ?

---

### Semaine 11 — On fait évoluer le collectif

**À lire** : Charte, conclusion + les 3 procédures commerciales (Procédure 12, 13, 14)

**À pratiquer** :
- Si un prospect nous contacte cette semaine : appliquer la Procédure 12 (Prise de contact) à la lettre. Debrief interne sous 24h.
- Si pas de contact commercial : faire l'exercice à blanc — simuler un premier appel avec un prospect imaginaire, remplir le CR, faire le debrief à trois.

**Rituel** : la Revue de Charte. 10 minutes. On relit la charte ensemble. On garde, on adapte, on jette. Elle est vivante.

---

### Semaine 12 — On valide et on transmet

**Exercice collectif final** — Point de validation Phase 4 (1h) :

1. **Auto-évaluation partagée** : on re-lit nos grilles de la semaine 10. Est-ce qu'on a progressé sur nos axes d'amélioration ?
2. **Revue de Charte** : proposition d'amélioration. Chacun vient avec une modification, une suppression, ou une addition.
3. **Validation du parcours** : chacun partage ce qu'il a le plus appris, ce qui a été le plus dur, ce qui est devenu réflexe.
4. **Amélioration continue** : proposer une modification, une suppression ou une addition à la charte ou aux Procédure.

> *« Ce n'était pas le diable qu'on venait chercher. C'était celui qu'on envoyait pour le tuer. »* — Viggo Tarasov, *John Wick*

On est maintenant opérationnels. On arrive sur n'importe quel projet en feu, on assume, on livre, on apprend.

---

# RÉCAPITULATIF DES LIVRABLES DU PARCOURS

| Semaine | Livrable individuel | Livrable collectif |
|---------|---------------------|---------------------|
| 1 | Carnet EO (3 situations) | Choix du canal + règles du Débrief |
| 2 | Historique git propre (Procédure 8-9-10-11) | Première revue de code selon Procédure 5 |
| 3 | Bilan des équilibres | **Point de validation Phase 1** |
| 4 | Fiche projet à l'arrivée remplie | — |
| 5 | Checklist de livraison remplie (ou exercice) | — |
| 6 | Documentation rapide ou ADR | **Point de validation Phase 2** |
| 7 | CR de réunion + CR d'appel + rapport hebdo | — |
| 8 | Débrief post-livraison animé | — |
| 9 | Post-Mortem (ou exercice) | **Point de validation Phase 3** |
| 10 | Grille d'auto-évaluation remplie | Partage des auto-évaluations |
| 11 | CR de prise de contact (ou exercice) + Revue de Charte | — |
| 12 | Proposition d'amélioration de la charte | **Point de validation Phase 4** |

---

# MATÉRIEL DE RÉFÉRENCE

| Document | Quand le consulter |
|---|---|
| **Charte d'Excellence** | Tous les jours au début, puis quand on hésite sur un principe |
| **Guide d'Accueil** | Quand on présente la charte à un nouveau membre ou à un client curieux |
| **Guide d'Animation du Débrief** | Avant chaque Débrief du vendredi (la 1ère fois, puis quand on sent que ça s'essouffle) |
| **Modèles Opérationnels** | Quand on a besoin d'un template (arrivée, livraison, incident, etc.) |
| **Annexe C — Procédure** | Quand on ne sait pas comment faire une étape précise |

---

*Ce plan est vivant. S'il ne correspond pas à votre rythme, changez-le. La seule règle : ne pas abandonner les rituels. Tout le reste est négociable.*

---

*« C'est pas un homme de talent. C'est un homme de focus, d'engagement, et de volonté pure. »* — Viggo Tarasov, *John Wick*
