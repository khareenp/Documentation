---
id: permissions
title: Autorisations
---

La plate-forme prend en charge un modèle d'autorisations héritées, où l'application d'autorisations à une entité parente appliquera l'autorisation à toutes les entités enfants.

Le modèle d'autorisations prend en charge deux autorisations différentes :

- **Contrôler**
  - Un utilisateur peut "afficher", "télécharger" et "modifier"
  - Si l'autorisation est appliquée à un « coffre-fort » ou à un « dossier », cela signifie que l'utilisateur peut également ajouter des sous-dossiers ou des documents à l'entité et aux entités enfants.
- **Voir**
  - Un utilisateur peut "afficher" et "télécharger"
  - Si l'autorisation est appliquée à un « coffre-fort » ou à un « dossier », cela signifie que l'utilisateur peut également accéder à toutes les entités enfants.

L'API renvoie un tableau d'autorisations contenant une série d'entités permissionEntities indiquant les autorisations dont dispose chaque utilisateur.

**Noter** que l'utilisateur qui a créé l'entité est automatiquement ajouté avec **Contrôler** autorisations.

```
    [
     {
     "entityId":  "60079696b6cbcb001205bd38",
     "entityType":  "USER",
     "permission":  "SEE",
     "firstName":  "Tressa",
     "lastName":  "Hansen",
     "email":  "tressa.hansen@test.com",
     "imageUrl":  ""
     },
     {
     "entityId":  "600796b4b6cbcb001205bd54",
     "entityType":  "USER",
     "permission":  "CONTROL",
     "firstName":  "Doyle",
     "lastName":  "Little",
     "email":  "doyle.little@test.com",
     "imageUrl":  ""
     }
    ]
```
