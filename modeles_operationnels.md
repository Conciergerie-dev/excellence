# MODÈLES OPÉRATIONNELS
## Le Kit de Service du Collectif de Développement

---

## PRÉAMBULE

Ce document regroupe les modèles que nous utilisons au quotidien. Ils ne sont **pas tous obligatoires sur chaque projet**. Un projet de 3 jours n'a pas besoin d'une fiche d'arrivée complète. Un projet de 6 mois sans livraison en production n'a pas besoin d'une checklist de déploiement. **On adapte en fonction de la taille, de la mission et du temps passé.**

La règle est simple : **on utilise le modèle quand il nous fait gagner du temps ou de la qualité**. Pas quand il nous ralentit.

> *« Les règles sont les règles. »* — Frank Martin, *Le Transporteur*

---

## SOMMAIRE PAR PHASE DE MISSION

Les modèles sont organisés selon le parcours type d'une intervention : **entrée sur un projet**, **en cours de mission**, **sortie et livraison**, ou **gestion d'incident**.

### A — Entrée sur un projet

| Modèle | Quand l'utiliser |
|---|---|
| **Fiche projet à l'arrivée** | Première semaine sur un nouveau projet |

### B — En cours de mission

| Modèle | Quand l'utiliser |
|---|---|
| **Compte-rendu de réunion** | Après chaque réunion structurante (client, équipe, planning) |
| **Compte-rendu de point téléphonique** | Après chaque appel avec un client ou un tiers |
| **Rapport d'état hebdomadaire** | Chaque vendredi, à destination du client ou du PO |
| **Documentation rapide** | Quand on a compris un système complexe et qu'on veut capitaliser avant d'oublier |
| **Architecture Decision Record (ADR)** | Quand on prend une décision technique structurante |
| **Grille d'auto-évaluation** | Toutes les 4-6 semaines, en individuel puis en discussion |

### C — Sortie et livraison

| Modèle | Quand l'utiliser |
|---|---|
| **Checklist de livraison en production** | Avant chaque déploiement en production |
| **Procès-verbal de livraison** | Quand nous livrons notre travail au client, à signer par les deux parties |
| **Transfert / Passation** | Quand on passe le relais à une autre équipe ou un autre développeur |
| **Débrief post-livraison** | Dans les 48h suivant une livraison |

### D — Gestion d'incident

| Modèle | Quand l'utiliser |
|---|---|
| **Post-Mortem** | Incident critique — données perdues, client impacté, indisponibilité longue |

---
---

# A — ENTRÉE SUR UN PROJET

---

## FICHE PROJET À L'ARRIVÉE

*Procédure liée : Procédure 1 — Arrivée sur un nouveau projet (étape 4 : Documenter la première impression)*

### À compléter la première semaine sur un nouveau projet

**Projet :** _________________________ **Client :** _________________________
**Date de début :** _________________________ **Durée estimée :** _________________________
**Responsable côté client :** _________________________ **Contact technique :** _________________________

---

### 1. Contexte
**Ce qu'on nous a dit :**
________________________________________________________________________

**Ce qu'on a trouvé en arrivant :**
________________________________________________________________________

### 2. Stack technique
| Couche | Technologie | Version | Commentaire |
|--------|-------------|---------|-------------|
| Front  |             |         |             |
| Back   |             |         |             |
| Base de données |    |         |             |
| Hébergement |        |         |             |
| CI/CD  |             |         |             |

### 3. Accès et environnements
| Environnement | URL | Accès obtenu ? | Commentaire |
|---------------|-----|----------------|-------------|
| Développement |     | ☐ Oui / ☐ Non |             |
| Recette / Staging | | ☐ Oui / ☐ Non |             |
| Production |        | ☐ Oui / ☐ Non |             |
| Repo(s) source |    | ☐ Oui / ☐ Non |             |

### 4. Dette technique identifiée (première semaine)
- [ ] _________________________
- [ ] _________________________
- [ ] _________________________

### 5. Premières alertes
**Ce qui nous inquiète déjà :**
________________________________________________________________________

**Ce qu'il faut creuser :**
________________________________________________________________________

### 6. Livrables attendus
| Livrable | Deadline | Statut |
|----------|----------|--------|
|          |          |        |
|          |          |        |

---

*Cette fiche est vivante. On la met à jour quand on découvre quelque chose de nouveau.*

---
---

# B — EN COURS DE MISSION

---

## COMPTE-RENDU DE RÉUNION

*Procédure liée : Procédure 4 — Communication avec un client (étape 1 : CR de réunion)*

### À compléter pendant ou juste après la réunion

**Projet :** _________________________ **Date :** _________________________
**Durée :** _________________________ **Lieu / Outil :** _________________________
**Animateur :** _________________________ **Rédacteur :** _________________________

**Participants :** ___________________________________________________________

---

### Ordre du jour
1. _________________________
2. _________________________
3. _________________________

---

### Décisions prises
| # | Décision | Prise par | Impact |
|---|----------|-----------|--------|
|   |          |           |        |
|   |          |           |        |

---

### Actions à retenir
| Action | Responsable | Deadline | Priorité (Haute / Moyenne / Basse) |
|--------|-------------|----------|-------------------------------------|
|        |             |          |                                     |
|        |             |          |                                     |

---

### Points de vigilance / Blocages
________________________________________________________________________

### Prochaine réunion
**Date :** _________________________ **Ordre du jour esquissé :** _________________________

---

*Distribué dans les 24h suivant la réunion. Pas de CR = pas de réunion.*

---

## COMPTE-RENDU DE POINT TÉLÉPHONIQUE

*Procédure liée : Procédure 4 — Communication avec un client (étape 2 : CR d'appel)*

### À compléter immédiatement après l'appel — 5 minutes maximum

**Projet :** _________________________ **Date :** __________ **Heure :** __________
**Interlocuteur :** _________________________ **Objet :** _________________________
**Rédacteur :** _________________________

---

### Ce qui a été dit (faits, pas interprétations)
________________________________________________________________________

### Décisions prises pendant l'appel
________________________________________________________________________

### Engagements pris par le prestataire
- [ ] _________________________ (deadline : __________)
- [ ] _________________________ (deadline : __________)

### Engagements pris par l'interlocuteur
- [ ] _________________________ (deadline : __________)
- [ ] _________________________ (deadline : __________)

### Points à vérifier / creuser en interne
- [ ] _________________________
- [ ] _________________________

---

*Envoyé par email à l'interlocuteur dans l'heure qui suit. C'est la trace écrite de ce qui a été convenu.*

---

## RAPPORT D'ÉTAT HEBDOMADAIRE

*Procédure liée : Procédure 4 — Communication avec un client (étape 3 : Rapport hebdomadaire)*

### À envoyer chaque vendredi au client ou au PO

**Projet :** _________________________ **Semaine du :** __________ au __________
**Rédacteur :** _________________________

---

### Ce qui a été livré cette semaine
- [ ] _________________________
- [ ] _________________________
- [ ] _________________________

### Ce qui est en cours
- _________________________ (avancement : ___%)
- _________________________ (avancement : ___%)

### Ce qui est bloqué (et pourquoi)
- _________________________

### Ce qui est prévu la semaine prochaine
- _________________________
- _________________________

### Risques et vigilance
________________________________________________________________________

---

*Un rapport d'état ne doit jamais être une surprise. Si quelque chose est bloqué, on en a déjà parlé au client avant le vendredi.*

---

## DOCUMENTATION RAPIDE

*Procédure liée : Procédure 6 — Documentation (étape 1 : Arrivée sur projet pourri)*

### À compléter quand on a compris un système complexe

**Projet :** _________________________ **Sujet documenté :** _________________________
**Auteur :** _________________________ **Date :** _________________________
**Lecteur cible :** ☐ Moi dans 6 mois / ☐ Un autre dev / ☐ Le client

---

### En une phrase, à quoi sert ce système ?
________________________________________________________________________

### Comment ça marche (simplifié)
________________________________________________________________________

### Les pièges à éviter
- [ ] _________________________
- [ ] _________________________
- [ ] _________________________

### Les commandes / accès utiles
```
# Lancer le projet
_________________________

# Accès admin
_________________________

# Variables d'environnement critiques
_________________________
```

### Ce qu'on n'a pas encore compris
- [ ] _________________________
- [ ] _________________________

---

*30 minutes de documentation aujourd'hui évitent 2 heures de recherche dans 6 mois. Cette doc n'a pas besoin d'être parfaite. Elle a besoin d'être utile.*

---

## ARCHITECTURE DECISION RECORD (ADR)

*Procédure liée : Procédure 6 — Documentation (étape 2 : Décision technique structurante)*

### À compléter pour toute décision technique structurante

**ADR-XXX** (numéro séquentiel)

**Titre :** ___________________________________________________________

**Date :** _________________________ **Statut :** ☐ Proposé / ☐ Accepté / ☐ Déprécié / ☐ Supersédé
**Contexte :** ☐ Conflit technique / ☐ Nouvelle fonctionnalité / ☐ Dette technique / ☐ Incident

---

### 1. Contexte
Quel est le problème ? Quelles sont les contraintes (délai, budget, compétences, legacy) ?

________________________________________________________________________

### 2. Décision
Quelle solution a été retenue ? Soyez précis et technique.

________________________________________________________________________

### 3. Conséquences

**Positives**
- _________________________
- _________________________

**Négatives / Risques acceptés**
- _________________________
- _________________________

### 4. Alternatives considérées et écartées
| Alternative | Pourquoi écartée ? |
|-------------|-------------------|
|             |                   |
|             |                   |

### 5. Validation
- [ ] Au moins 1 relecteur technique
- [ ] Le lead technique (si applicable)

**Signatures :**
- Auteur : _________________________ Date : _________________________
- Relecteur : _________________________ Date : _________________________

---

*ADR stocké dans : `/docs/adr/ADR-XXX-titre.md`*

---

## GRILLE D'AUTO-ÉVALUATION

*Procédure liée : Procédure 3 — Rituels du collectif (Auto-évaluation)*

### À remplir individuellement, toutes les 4-6 semaines, puis en discussion

**Nom :** _________________________ **Date :** _________________________

#### 1. Responsabilité Intégrale
| Question | Jamais | Rarement | Parfois | Souvent | Toujours |
|----------|--------|----------|---------|---------|----------|
| J'assume mes échecs sans blâmer l'extérieur | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je commence mes retours par « J'aurais dû… » | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je remonte les problèmes avant qu'ils ne deviennent critiques | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je demande de l'aide quand j'en ai besoin | ☐ | ☐ | ☐ | ☐ | ☐ |

#### 2. Les Équilibres
| Question | Jamais | Rarement | Parfois | Souvent | Toujours |
|----------|--------|----------|---------|---------|----------|
| Je défends mes idées avec des arguments, pas avec mon ego | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je cède le lead quand un autre est mieux placé | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je prends des décisions dans les délais impartis | ☐ | ☐ | ☐ | ☐ | ☐ |
| J'écoute avant de porter un jugement | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je suis proactif sans être téméraire | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je couvre les autres quand ils en ont besoin | ☐ | ☐ | ☐ | ☐ | ☐ |

#### 3. Le cadre libère
| Question | Jamais | Rarement | Parfois | Souvent | Toujours |
|----------|--------|----------|---------|---------|----------|
| Mes revues de code sont rigoureuses et constructives | ☐ | ☐ | ☐ | ☐ | ☐ |
| J'écris des tests pour mes développements | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je documente ce que je produis ou apprends | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je ne déploie pas sans plan de secours | ☐ | ☐ | ☐ | ☐ | ☐ |

#### 4. Agir plutôt qu'attendre
| Question | Jamais | Rarement | Parfois | Souvent | Toujours |
|----------|--------|----------|---------|---------|----------|
| Je tiens dans la durée sans m'épuiser | ☐ | ☐ | ☐ | ☐ | ☐ |
| J'avance quand je n'ai pas toute l'information | ☐ | ☐ | ☐ | ☐ | ☐ |
| Je simplifie plutôt que je ne complexifie | ☐ | ☐ | ☐ | ☐ | ☐ |

#### 5. Réflexion libre
**Ce que j'ai le mieux géré depuis la dernière évaluation :**
________________________________________________________________________

**Ce que j'aurais dû gérer différemment :**
________________________________________________________________________

**Une décision que j'ai reportée et que je dois prendre :**
________________________________________________________________________

**Ce que je vais améliorer dans les 4 semaines à venir :**
________________________________________________________________________

---

*À remplir seul, puis partager en discussion à trois. Pas de jugement. Juste de la clarté.*

---
---

# C — SORTIE ET LIVRAISON

---

## CHECKLIST DE LIVRAISON EN PRODUCTION

*Procédure liée : Procédure 2 — Livraison en production (étape 1 : Remplir la Checklist)*

### À compléter et signer avant tout déploiement en production

**Fonctionnalité / Correctif :** _________________________ **Version :** _________________________
**Responsable de la livraison :** _________________________ **Date prévue :** _________________________
**Relecteur :** _________________________

---

### Pré-livraison
| # | Vérification | Statut |
|---|-------------|--------|
| 1 | Les tests automatisés passent (CI verte) | ☐ Oui / ☐ Non |
| 2 | La revue de code est validée par au moins 1 pair | ☐ Oui / ☐ Non |
| 3 | La documentation est à jour (README, API, runbook) | ☐ Oui / ☐ Non |
| 4 | Les variables d'environnement sont configurées en prod | ☐ Oui / ☐ Non |
| 5 | La base de données est compatible (migrations testées) | ☐ Oui / ☐ Non |
| 6 | Les dépendances externes sont opérationnelles | ☐ Oui / ☐ Non |

### Plan de secours (Retour en arrière)
| # | Vérification | Statut |
|---|-------------|--------|
| 7 | La version précédente est identifiée et taguée | ☐ Oui / ☐ Non |
| 8 | La procédure de retour en arrière est documentée et testée | ☐ Oui / ☐ Non |
| 9 | La base de données peut être restaurée en cas de migration échouée | ☐ Oui / ☐ Non |
| 10 | Un point de restauration (snapshot) est créé avant livraison | ☐ Oui / ☐ Non |
| 11 | Le plan de communication en cas d'incident est connu | ☐ Oui / ☐ Non |

### Suivi post-livraison
| # | Vérification | Statut |
|---|-------------|--------|
| 12 | Les alertes de monitoring sont actives et configurées | ☐ Oui / ☐ Non |
| 13 | Les tableaux de suivi sont accessibles | ☐ Oui / ☐ Non |
| 14 | Quelqu'un est disponible pendant 2h post-livraison | ☐ Oui / ☐ Non |
| 15 | Le canal d'alerte est surveillé | ☐ Oui / ☐ Non |

### Déclaration
Je certifie que cette livraison a été préparée selon les standards du collectif. J'en assume pleinement la responsabilité. En cas d'incident, je m'engage à déclencher immédiatement le plan de secours et à convoquer un retour d'expérience dans les 24h.

**Responsable de la livraison :** _________________________ **Date :** _________________________

**Relecteur :** _________________________ **Date :** _________________________

---

*Aucune livraison en production n'est autorisée sans cette checklist complète et validée.*

---

## PROCÈS-VERBAL DE LIVRAISON

*Procédure liée : Procédure 2 — Livraison en production (étape 7 : Faire un Debrief post-livraison + réception client)*

### À signer par le client à la fin de la prestation

**Projet :** _________________________ **Prestataire :** _________________________
**Client :** _________________________ **Date de livraison :** _________________________
**Référence du livrable :** _________________________

---

### Description du livrable livré
________________________________________________________________________

### Vérifications effectuées par le prestataire avant livraison
| # | Vérification | Statut |
|---|-------------|--------|
| 1 | Les fonctionnalités livrées correspondent au périmètre convenu | ☐ Oui / ☐ Non / ☐ Partiellement |
| 2 | Les tests passent (tests automatisés + tests manuels) | ☐ Oui / ☐ Non / ☐ Partiellement |
| 3 | La documentation est à jour et transmise | ☐ Oui / ☐ Non / ☐ Partiellement |
| 4 | Les accès et les environnements sont configurés et testés | ☐ Oui / ☐ Non / ☐ Partiellement |
| 5 | Aucun bug bloquant identifié en recette | ☐ Oui / ☐ Non |

---

### Décision du client

**Le client atteste avoir réceptionné le livrable et déclare :**

- ☐ **Accepter** la livraison sans réserve
- ☐ **Accepter** la livraison **avec réserve** (voir détails ci-dessous)
- ☐ **Refuser** la livraison **avec réserve** (voir détails ci-dessous)

**Détails des réserves (le cas échéant) :**
________________________________________________________________________

**Actions attendues pour lever les réserves :**
________________________________________________________________________

**Délai convenu pour lever les réserves :** _________________________

---

### Signatures

**Pour le prestataire :**

Nom : _________________________ Signature : _________________________ Date : __________

**Pour le client :**

Nom : _________________________ Signature : _________________________ Date : __________

---

*Ce document fait foi de la réception du livrable. En cas de réserve, les deux parties s'engagent à traiter les points soulevés dans le délai convenu.*

---

## TRANSFERT / PASSATION

*Procédure liée : Procédure 6 — Documentation (étape 3 : Départ du projet)*

### À compléter quand on passe le relais

**Projet :** _________________________ **Date de passation :** _________________________
**Passant :** _________________________ **Repreneur :** _________________________

---

### 1. Ce qu'on a fait
**Résumé des livrables et des décisions prises :**
________________________________________________________________________

### 2. L'état actuel du projet
| Élément | Statut | Commentaire |
|---------|--------|-------------|
| Code source | ☐ Stable / ☐ En cours / ☐ Fragile |             |
| Documentation | ☐ Complète / ☐ Partielle / ☐ Inexistante |             |
| Tests | ☐ OK / ☐ Partiels / ☐ À refaire |             |
| Déploiement | ☐ Automatisé / ☐ Manuel / ☐ Non testé |             |

### 3. Les pièges à connaître
**Ce qu'il faut savoir avant de toucher quoi que ce soit :**
- [ ] _________________________
- [ ] _________________________
- [ ] _________________________

### 4. Les accès et les contacts
| Élément | Détail |
|---------|--------|
| Repo(s) | _________________________ |
| Environnements | _________________________ |
| Contact client | _________________________ |
| Contact technique | _________________________ |

### 5. Ce qu'il reste à faire
| Tâche | Priorité | Deadline | Contact |
|-------|----------|----------|---------|
|       |          |          |         |
|       |          |          |         |

### 6. Ce qu'on aurait aimé savoir en arrivant
________________________________________________________________________

---

*Le repreneur a lu ce document, posé ses questions, et est prêt à prendre le relais.*

**Signature du passant :** _________________________ **Date :** __________

**Signature du repreneur :** _________________________ **Date :** __________

---

## TEMPLATE DEBRIEF POST-LIVRAISON

*Procédure liée : Procédure 3 — Rituels du collectif (Débrief post-livraison)*

**Sprint / Release / Événement :** _________________________ **Date :** _________________________
**Durée :** _________________________ **Participants :** _________________________

---

#### 1. Ce qui s'est bien passé
Chacun cite au moins un élément concret. Pas de « on a bien travaillé ». Qu'est-ce qui a fonctionné et pourquoi ?

| Nom | Ce qui s'est bien passé | Pourquoi cela a fonctionné |
|-----|-------------------------|---------------------------|
|     |                         |                           |

#### 2. Ce que j'ai laissé passer
On commence par soi. Un fait, un événement, une décision. Pas de jugement.

| Nom | Ce que j'ai laissé passer | Ce que je ferais différemment |
|-----|---------------------------|-------------------------------|
|     |                           |                               |

#### 3. Les décisions clés *(optionnel — quand la livraison a été complexe)*
Quelle décision a eu le plus d'impact ? A-t-elle été prise au bon moment ?

| Décision | Prise par | Moment | Évaluation (trop tôt / bien / trop tard) |
|----------|-----------|--------|-------------------------------------------|
|          |           |        |                                           |

#### 4. Actions à retenir
Chaque action est SMART. Un responsable. Une date. Pas de « on fera attention ».

| Action | Responsable | Deadline |
|--------|-------------|----------|
|        |             |          |

---

*Pas de blâme. Juste des faits, des apprentissages, des actions. À trois, on sait qui parle — le courage reste le même.*

---
---

# D — GESTION D'INCIDENT

---

## POST-MORTEM

*Procédure liée : Procédure 7 — Gestion d'incident (étape 5 : Apprendre)*

### À remplir dans les 24h suivant un incident critique

**Date de l'incident :** _________________________ **Heure de début :** __________ **Heure de fin :** __________
**Référence :** _________________________ **Rédacteur :** _________________________

---

### 1. Chronologie factuelle (pas d'interprétation)
| Heure | Événement | Source (log, monitoring, témoignage) |
|-------|-----------|--------------------------------------|
|       |           |                                      |
|       |           |                                      |
|       |           |                                      |

### 2. Impact mesuré
- **Utilisateurs affectés :** _________________________
- **Durée de l'indisponibilité :** _________________________
- **Données perdues ou corrompues :** _________________________
- **Réputation / contrat impacté :** _________________________

### 3. Chaîne de causes (5 Pourquoi)
| Niveau | Pourquoi ? | Réponse |
|--------|------------|---------|
| 1 | Pourquoi l'incident s'est-il produit ? | |
| 2 | Pourquoi cette cause ? | |
| 3 | Pourquoi cette cause ? | |
| 4 | Pourquoi cette cause ? | |
| 5 | Pourquoi cette cause ? (cause racine) | |

### 4. Responsabilité Intégrale
**Chaque participant répond individuellement : « Qu'est-ce que j'ai laissé passer ? »**

| Nom | Ce que j'ai laissé passer | Ce que je vais corriger |
|-----|---------------------------|------------------------|
|     |                           |                        |
|     |                           |                        |
|     |                           |                        |

### 5. Actions correctives
| Action | Responsable | Deadline | Statut |
|--------|-------------|----------|--------|
|        |             |          | ☐ En cours / ☐ Terminée |
|        |             |          | ☐ En cours / ☐ Terminée |
|        |             |          | ☐ En cours / ☐ Terminée |

### 6. Leçons à capitaliser
**Ce que l'équipe doit retenir pour l'avenir :**
________________________________________________________________________

**Ce qui doit être ajouté à la documentation ou aux runbooks :**
________________________________________________________________________

---

*Pas de blâme. Juste des faits, des causes, des actions. À trois, on sait qui parle — le courage reste le même.*

---

*Fin des modèles opérationnels*
