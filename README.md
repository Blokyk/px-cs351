# Projet RISC-V CS351

Auteurs : Zoë COURVOISIER

## Rendu 1

* Cochez (en remplaçant `[ ]` par `[x]`) si vous avez :
  - [x] Vérifié que `make test` se plaint sur le nombre d'instructions et pas
      sur l'existence des fichiers de sortie.
  - [x] Vu sur Chamilo que les soumissions se font avec `make tar`.

## Rendu 2

(Une dizaine de lignes devrait suffire à chaque fois)

Comment avez-vous choisi de programmer l'analyse de texte (dont la lecture
des opérandes entières) ? Comment identifiez-vous les noms de registres, des noms "jolis", des entiers ?

L'analyse de texte, dont le point d'entrée est `parse_line`, opère
ligne-par-ligne. Celle-ci élimine d'abord les espaces superflus et
les commentaires de début de ligne, et (si la ligne n'est pas vide
après ça), essaie de parser la ligne et de l'encoder dans une
structure `instr_t` (qui sera ensuite passée à `encode()` pour être
transformée en code machine).

Le parser découpe la ligne petit-à-petit; il n'y a pas d'étape de
tokenization[^1] ou preprocessing, tout est fait d'un seul pass.
Il récupère d'abord le mnémonique, puis, selon la syntaxe qui y
est associée, analyse la ligne pour récupérer les opérandes.
Chaque type d'opérande est gérée par une fonction différente:
  - les registres par `try_parse_reg`
  - les constantes numériques (immédiats) par `try_parse_imm`
  - le format `imm(reg)` par `try_parse_offset_and_reg`

Les registres sont reconnus soit par `strcmp` (par ex. pour `zero`,
`gp`, etc...), soit vu comme une paire lettre-nombre qui est ensuite
traduite en "vrai" numéro de registre.
Les immédiats utilise un simple `scanf(%i)`, permettant de gérer des
entiers signés et en base 8, 10, ou 16.

Une fois les opérandes récupérée, l'instruction est vérifiée par
`validate_instr`, qui assure, par exemple, que l'offset utilisé
dans `jal` est bien aligné à 2 octets.

Les pseudo-instructions sont gérées de façon similaire, mais
nécessitent une compréhension des opérandes faite au cas-par-cas.
Elles sont traduites avant la validation pour s'assurer que la
diversité/complexité qu'elles rajoutent ne se propagent pas
inutilement.

La cheffe d'orchestre de tout cela est la fonction `try_parse_single_instr`,
initialement assez garnie, mais après les différentes factorisations
résultantes de l'évolution organique du code, ce n'est finalement pas
bien plus qu'un énorme bloc `switch`.

[^1] Le sous-ensemble que nous devons implémenter est de toute façon
     tellement restreint qu'un lexer serait largement superflu

* Avez-vous vu des motifs récurrents émerger ? Avez-vous "factorisé" ces motifs
pour éviter de les répéter ? Si non, serait-ce difficile ?

Nous avons pris une approche déclarative pour les instructions, en
utilisant notamment la technique des [X macros](https://en.wikipedia.org/wiki/X_macro),
nous permettant d'éliminer la plupart du code répétitif inhérent au
parser (&cie.). Ainsi, il est trivial d'ajouter de nouvelles
instructions, tant que le format est déjà implémenté. L'introduction
des pseudo-instructions fut aussi relativement rapide, et nous a
donné quelques pistes à explorer pour améliorer la "déclarativité"
de notre code et simplifier le parser. Nous avons aussi essayé de
"compacter" certaines informations, par exemple en se servant de
l’énumération listant les différentes instructions pour aussi
stocker les champs `opcode`, `funct3` et `funct7` pour rendre
l'écriture de l'encodeur plus facile.

* Comment avez-vous procédé pour écrire les tests ? Étes-vous confiant·e·s que
toutes les instructions sont gérées et tous les types d'arguments sont couverts ?

Les tests sont écrits de façon à être suffisamment exhaustifs. Un des
tests, `all_regs`, permet de tester que chaque registre est géré
correctement (nom de base + nom de l'ABI); de la même façon, le test
`all_instrs` vérifie l'encodage correct de l'entièreté des 13
instructions supportées, en variant les arguments pour vérifier les
cas limites des différents formats d'instruction.

Si l'entièreté des 39 instructions RV64I de base devaient être
supportées, des tests aussi exhaustifs deviendraient vite difficiles
à maintenir et écrire, et c'est sans compter les complexité
additionnelles d'un assembleur classique (labels, options, sections,
etc). Dans ce cas-là, il serait nécessaire de revoir notre stratégie,
par exemple en générant des tests ou en utilisant du fuzzing pour
avoir une couverture maximale.

<!-- todo: breakup `all_instrs` into a dedicated folder of smaller tests for each instr -->

* Quelle a été votre expérience avec l'utilisation et la compréhension de la
documentation fournie sur l'encodage des instructions RISC-V ?

👍

* Cochez (en remplaçant `[ ]` par `[x]`) si vous avez :
  - [x] Implémenté la traduction pour toutes les instructions de la documentation
  - [x] Pris en compte les cas particuliers comme les valeurs immédiates négatives et le bit manquant dans l'encodage de `jal`
  - [x] Écrit du code de gestion d'erreur pour que le programme ait une réaction propre si le code assembleur est invalide _(pas demandé par le sujet)_

todo: add a line number for errors

## Rendu 3

Questions à remplir _avant_ de programmer l'émulateur (10 lignes sont conseillées à chaque fois pour bien y réfléchir) :

* Listez tous les éléments matériels auxquels vous pouvez penser dont l'émulateur doit reproduire le comportement, et déduisez-en une liste de toutes les tâches individuelles de l'émulateur.

[COMPLÉTER ICI]

* Quelle fonction de la bibliothèque standard pouvez-vous utiliser pour lire les valeurs listées dans le fichier `.hex` sans vous casser la tête ? (Indice : ces valeurs ont été écrites avec `fprintf()`.)

- fscanf in a loop (though you should [read this](https://sekrit.de/webdocs/c/beginners-guide-away-from-scanf.html)
before+after impl)
- fgets + strtoul(base: 16)

* Décrivez comment vous allez répartir les tâches de l'émulateur en différents fichiers, ou ne pas les répartir et tout faire dans le même fichier. Expliquez les avantages de votre choix.

[COMPLÉTER ICI]

Questions à remplir _après_ avoir programmé l'émulateur :

* Aviez-vous réussi à listé toutes les tâches dans la première question ? Rétrospectivement, y a-t-il des tâches dont vous aviez sous-estimé ou sur-estimé la complexité ?

[COMPLÉTER ICI]

* Avez-vous compris le fonctionnement de chaque instruction à partir de la
documentation fournie ? Si non, quels sont les points obscurs ?

[COMPLÉTER ICI]

* Quels exemples de programmes avez-vous choisi pour tester le calcul ? Les
comparaisons et sauts ? La mémoire ?

[COMPLÉTER ICI]

* Reste-t-il des bugs que vous avez découverts et pas corrigés ?

[COMPLÉTER ICI]

* D'autres remarques sur votre programme ?

[COMPLÉTER ICI]

* Cochez (en remplaçant `[ ]` par `[x]`) si vous avez :**
  - [ ] Implémenté l'émulation de toutes les instructions gérées par le rendu 2.
  - [ ] Implémenté l'émulation de toutes les instructions.
  - [ ] Tous vos tests qui passent.
  - [ ] Vérifié que vous tests couvrent toutes les instructions émulées.
  - [ ] Testé les cas particuliers : valeurs négatives, overflows...
  - [ ] Testé les cas d'erreur : division par zéro, sauts invalides... _(pas demandé par le sujet)_
  - [ ] Un port fonctionnel de DOOM pour votre émulateur.

* Des retours sur le projet en général ?

[COMPLÉTER ICI]
