---
id: permissions
title: Permissions
---

The platform supports an inherited permissions model, where applying permissions to a parent entity will apply the permission to all child entities.

The permissions model supports two different permissions:

- **Control**
  - A user can 'view', 'download' and 'edit'
  - If the permission is applied to a 'vault' or 'folder' it means that the user can also add sub-folders or documents to the entity and child entities.
- **See**
  - A user can 'view' and 'download'
  - If the permission is applied to a 'vault' or 'folder' it means that the user can also access all child entities.

The API returns back a permissions array which contains a series of permissionEntities which shows what permissions each user has.

**Note** that the user who created the entity is automatically added with **Control** permissions.

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
