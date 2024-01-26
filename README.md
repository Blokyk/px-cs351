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
Les immédiats utilisent une fonction basique qui parcours la chaîne
de gauche à droite; celle-ci supporte les bases 2, 8, 10, 16, avec
leurs préfixes habituels ("0b" pour base 2, "0" pour base 8, "0x"
pour base 16). Elle prend aussi soin de ne pas causer d'overflow
lors de la conversion.

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

todo: breakup `all_instrs` into a dedicated folder of smaller tests for each instr

* Quelle a été votre expérience avec l'utilisation et la compréhension de la
documentation fournie sur l'encodage des instructions RISC-V ?

👍

* Cochez (en remplaçant `[ ]` par `[x]`) si vous avez :
  - [x] Implémenté la traduction pour toutes les instructions de la documentation
  - [x] Pris en compte les cas particuliers comme les valeurs immédiates négatives et le bit manquant dans l'encodage de `jal`
  - [x] Écrit du code de gestion d'erreur pour que le programme ait une réaction propre si le code assembleur est invalide _(pas demandé par le sujet)_

## Rendu 3

Questions à remplir _avant_ de programmer l'émulateur (10 lignes sont conseillées à chaque fois pour bien y réfléchir) :

* Listez tous les éléments matériels auxquels vous pouvez penser dont l'émulateur doit reproduire le comportement, et déduisez-en une liste de toutes les tâches individuelles de l'émulateur.

On doit émuler les éléments matériel suivant:
  - RAM / bus mémoire
  - CPU
    - décodeur
    - table des registres
    - APU

On peut donc essayer de dresser une liste des tâches:
  - créer et gérer un buffer pour émuler la RAM
  - décoder les instructions
  - gérer les registres (attention à `x0` et `sp!)
  - implémenter les différentes opérations arithmétiques

* Quelle fonction de la bibliothèque standard pouvez-vous utiliser pour lire les valeurs listées dans le fichier `.hex` sans vous casser la tête ? (Indice : ces valeurs ont été écrites avec `fprintf()`.)

L'option évidente est `fscanf(hex_file, " %08x \n")` en boucle ([à lire avant+après impl](https://sekrit.de/webdocs/c/beginners-guide-away-from-scanf.html)), ce qui est l'option "naturelle" étant donné que le fichier a normalement été crée en appellant `fprintf` en boucle.

* Décrivez comment vous allez répartir les tâches de l'émulateur en différents fichiers, ou ne pas les répartir et tout faire dans le même fichier. Expliquez les avantages de votre choix.

On miroite la structure de l'assembleur : on a un fichier qui contient le décodeur, et un autre qui contient le "coeur d'exécution" : APU + gestionnaire de registres + gestionnaire de mémoire

Questions à remplir _après_ avoir programmé l'émulateur :

* Aviez-vous réussi à listé toutes les tâches dans la première question ? Rétrospectivement, y a-t-il des tâches dont vous aviez sous-estimé ou sur-estimé la complexité ?

Avec notre architecture les tâches étaient assez compartimentées. Le décodeur a été la source principale de bugs, mais ce n'était pas difficile à prévoir étant donné que c'est que de la manipulation de bits, qui est connue pour être généralement error-prone.

* Avez-vous compris le fonctionnement de chaque instruction à partir de la
documentation fournie ? Si non, quels sont les points obscurs ?

Oui, même si pour certaines il a fallut croiser les sources (spec, github issues, slides d'autres cours, assembler user manual, etc.) car on pouvait trouver des infos contradictoires.

* Quels exemples de programmes avez-vous choisi pour tester le calcul ? Les
comparaisons et sauts ? La mémoire ?

Quelques tests ont été écrits et testés à la main, pour tester des scénarios précis (e.g. `overflow.s`), ou alors pour s'assurer du fonctionnement d'un programme typique (e.g. `calc.s`).

Cependant, un corpus de tests fut généré aléatoirement en utilisant un émulateur de référence. Celui-ci produisait d'abord du code pour charger quelques valeurs dans des registres, puis générait un ensemble d'instructions aléatoirement[^1] et tentait de les exécuter sur l'émulateur de référence. Si cela produit un crash, alors on régénère un nouvel l'ensemble, on ré-initialise l'émulateur et on réessaye[^2]; sinon, on sauvegarde les instructions  dans un fichier, avec l'état final des registres du simulateur (de façon à ce qu'il soit compris par le harnais de test). Ceci a permis de déceler quelques bugs dans notre émulateur pour des cas assez ésotériques auxquelles nous n'avions pas pensé.

[^1]: La distribution des types d'instructions n'étaient pas uniforme, et a été établie à la main, pour essayer d'équilibrer couverture des tests et vraisemblance à un programme typique
  - R-type: 25%
  - I-type (arithmétique): 30%
  - I-type (loads): 10%
  - I-type (jalr): 4%
  - S-type: 10%
  - SB-type: 10%
  - U-type: 5%
  - J-type: 6%

[^2]: Cette méthode de "brute-force" est assez inefficace en terme de temps, et est biaisé en faveur des instructions moins "dangereuses," telles que les
      opérations registre-registre ou arithmétiques. On pourrait imaginer à la place sélectionner une seule instruction à la fois, tenter de l'exécuter, puis si l'émulateur a crashé, on choisit une nouvelle instruction et on réessaie jusqu'à ce que ça fonctionne. On concatène ensuite une nouvelle instruction et on applique la même processus. Ainsi, on ne "jette" qu'une seule instruction à la fois, et on évite de se trouver dans un scénario où on a 49 instructions valides déjà générées mais la 50e ne l'est pas et on est forcés de tout recommencer à zéro. Cette technique réduirait *énormément* le temps nécessaire pour générer des instructions valides, d'abord car nous ne serions plus sujet à l'exponentialité de la méthode originelle, mais aussi car elle se prête particulièrement bien à un modèle d'exécution spéculative et par étape, là ou le générateur actuel doit créer une nouvelle CPU et réinitialiser sa mémoire à chaque fois, ce qui a un impact non-négligeable étant donné la lenteur de sa convergence (par ex. s'il faut 1500 générations pour générer 30 instructions valides, il faudra aussi initialiser la mémoire 1500 fois).

      Cependant, cette technique n'est pas si facile à implémenter que ça, car il faut pouvoir suivre l'évolution de la CPU, comme les accès mémoire ou la valeur du PC, pour pouvoir s'assurer qu'on exécute bien les instructions que l'on a générer (et non pas), et que l'environment dans lequel s'exécute les premières instructions est toujours cohérents une fois les instructions finales choisies. Par exemple, que faire lorsqu'on charge la partie de la mémoire où son stockées les instructions? Puisqu'on n'a pas encore décider de leur valeurs, l'état actuel de la CPU devient dépendant des instructions futures, qui elles dépendent de l'état actuel et futur. Il y a bien sûr des solutions aux problèmes introduit par cette génération incrémentale (e.g. garder une liste des accès mémoire créant des dépendances aux instructions futures et démarrer l'exécution à ces points-ci lorsqu'on génère de nouvelles instructions), mais notre budget temps s'est resserré pendant la finalisation de ce projet, et nous avons préférer perdre quelques millisecondes à utiliser une méthode brute-force simple, plutôt que de passer du temps à s'assurer du bon fonctionnement d'un système aussi complexe.

todo: trouver une façon de tester que les jumps infinis (i.e. `j 0`) fonctionnent correctement (e.g. n'avancent pas tous seuls)

* Reste-t-il des bugs que vous avez découverts et pas corrigés ?

Pas que je m'en souvienne.

* D'autres remarques sur votre programme ?

J'ai pas eu le temps de faire tourner DOOM :,(

* Cochez (en remplaçant `[ ]` par `[x]`) si vous avez :
  - [x] Implémenté l'émulation de toutes les instructions gérées par le rendu 2.
  - [x] Implémenté l'émulation de toutes les instructions.
  - [x] Tous vos tests qui passent.
  - [x] Vérifié que vous tests couvrent toutes les instructions émulées.
  - [x] Testé les cas particuliers : valeurs négatives, overflows...
  - [ ] Testé les cas d'erreur : division par zéro, sauts invalides... _(pas demandé par le sujet)_
  - [ ] Un port fonctionnel de DOOM pour votre émulateur.

* Des retours sur le projet en général ?

[COMPLÉTER ICI]
