# Doctrine Excellence

La doctrine du collectif : une charte d'excellence, ses modèles opérationnels, ses guides d'adoption — et un plugin Kimi Code qui rend la doctrine applicable par les agents IA au quotidien.

> **On assume, on s'améliore, on livre.**

## Contenu

### La doctrine (documents racine)

| Fichier | Rôle |
|---|---|
| `charte_excellence_collectif_dev.md` | La charte : principes (responsabilité intégrale, maîtrise de l'ego, agir plutôt qu'attendre, excellence de service), rituels (débrief du vendredi, debrief post-livraison, post-mortem) et les 19 procédures |
| `modeles_operationnels.md` | Le kit de service : modèles prêts à l'emploi (post-mortem, comptes-rendus, checklist de livraison, ADR, fiches projet…) |
| `guide_accueil_charte.md` | Guide de conversation pour présenter la charte à quelqu'un qui rejoint le collectif |
| `guide_animation_retour.md` | Aide-mémoire pour animer un retour d'expérience à trois |
| `plan_formation_excellence.md` | Plan de formation vers l'excellence |
| `historique_versions.md` | La généalogie des versions de la charte (V1 → V3), maintenue à chaque Revue de Charte |

### La méthode commerciale (documents racine)

| Fichier | Rôle |
|---|---|
| `destination_excellence.md` | La méthode du collectif — formation praticable pour développeurs et équipes techniques |
| `destination-excellence-one-pager-commercial.md` | Version commerciale condensée de la méthode |

### Le plugin Kimi Code (`skills/`, `kimi.plugin.json`)

Six skills qui enseignent la doctrine aux agents IA :

| Skill | Usage |
|---|---|
| `using-excellence` | Chargé au démarrage de chaque session (`sessionStart`). Établit la doctrine et route vers le bon skill ou document avant toute action |
| `excellence-principles` | Doctrine générale : posture et jugement pour les situations de mission (incidents, retards, communication client, projets legacy, priorisation, désaccords) |
| `code-review-excellence` | Revue de code et qualité : procédures de review, checks pre-push, checklist de livraison — avec la nuance code interne (nos conventions) / externe (celles du client) |
| `planner-excellence` | Disciplines la phase de conception : vérifier les comportements framework avant de les prescrire, réviser les plans en cas de doute, découper les plans surdimensionnés, prévoir la vérification manuelle de ce que seul un navigateur montre |
| `framing-excellence` | Cadre les missions selon la Procédure 18 : problème énoncé, appétit fixé, rabbit holes et non-objectifs écrits avant de construire (Pitch de cadrage) |
| `service-excellence` | Veille sur les cinq moments de vérité du service rendu : première réponse, cadrage, premier livrable, incident, renouvellement (Procédure 19) |

## Installation du plugin

Le dossier `skills/` et le manifest `kimi.plugin.json` à la racine constituent un plugin Kimi Code :

```bash
# Depuis Kimi Code
/plugins
# → installer/activer "doctrine-excellence"
```

Une fois activé :

- `using-excellence` se charge automatiquement à chaque nouvelle session
- Les autres skills se déclenchent selon le contexte (revue de code, incident, retard, etc.)

## Principes de contribution

- **La charte est vivante** : relue tous les 3 mois, adaptable — mais elle ne s'affaiblit pas par lassitude
- Les documents de doctrine sont en **français** ; les skills (lus par les agents) sont en **anglais**
- Un nouveau skill se teste avant déploiement : scénario de pression sans le skill (baseline) → skill écrit → vérification avec le skill. Pas de skill non testé
- Tout nouveau dossier sous `skills/` est automatiquement déclaré dans le plugin (`"skills": ["./skills/"]`)
