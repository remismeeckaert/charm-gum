# charm-gum

Ce reposiory est un test de [Gum](https://github.com/charmbracelet/gum)

Un dockerfile es mis à disposition afin de pouvoir tester Gum.

Une fois l'image docker buildée et lancée, vous pouvez executer les scripts en lancant les commandes du tableau ci-dessous.

## Docker

### Build Image
```bash
docker build --tag charm-gum .
```
### Run container
```bash
docker run -d --name charm charm-gum
```
### Jump into container
```bash
docker exec -it charm /bin/bash
```

### Scripts

| Commande | Actions |
|---|---|
|./scripts/spin.sh |Affiche un spinner|
|./scripts/markdown.sh|Affiche le fichier Readme dans le terminal|
|./scripts/multiple_choice.sh|Choix multiple issue d'une liste|
|./scripts/single_choice.sh|Choix simple issue d'une liste|
|./scripts/style.sh|Affichage d'un layout|
|./scripts/main.sh|Et le tout mis ensemble ca pourrait donner quoi?|



### Stop le container
```bash
docker container stop charm
```
## Prune
```bash
docker container prune
docker image prune
```
# lien du blog

[remismeeckaert.blogspot.com](https://remismeeckaert.blogspot.com/2022/09/un-peu-de-glamour-dans-vos-scripts-shell.html)
