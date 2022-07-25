---
id: security
title: Dans quelle mesure MODV est-il sécurisé ?
---

MODV est construit sur le cryptage et l'authentification standard de l'industrie.

Les fichiers sont cryptés à l'aide d'AES-256-GCM lorsqu'ils sont au repos et sont protégés contre la falsification en stockant le hachage du fichier dans le [Ethereum](https://ethereum.org/en/) chaîne de blocs.

![Example banner](../static/img/modv-hosted.png)

<!-- ![Example banner](/i18n/fr/docusaurus-plugin-content-docs/current/static/img/modv-hosted.png) -->

:::note Entreprise
Pour plus de sécurité, l'intégralité de la plate-forme MODV peut être hébergée dans votre infrastructure de cloud privé ou sur site. Le déploiement de l'ensemble de la solution se fait avec un seul [docker-compose](https://docs.docker.com/compose/) dossier.
:::
