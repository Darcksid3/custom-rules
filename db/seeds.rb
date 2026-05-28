# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."
Game.create!(
  name: "Monopoly",
  nb_players: 6,
  real_rules: <<~RULES
    ## But du jeu

    Acheter des propriétés, construire des maisons et hôtels, puis faire payer des loyers aux autres joueurs.

    ## Résumé des règles

    - Chaque joueur lance les dés et avance son pion.
    - Si une propriété libre est atteinte, le joueur peut l'acheter.
    - Si la propriété appartient à un autre joueur, il faut payer un loyer.
    - Les groupes de couleur complets permettent de construire.
    - Un joueur est éliminé s'il ne peut plus payer ses dettes.
    - Le dernier joueur encore en jeu gagne la partie.
  RULES
)

Game.create!(
  name: "Skyjo",
  nb_players: 8,
  real_rules: <<~RULES
    ## But du jeu

    Avoir le moins de points possible à la fin de la partie.

    ## Résumé des règles

    - Chaque joueur possède une grille de cartes face cachée.
    - À son tour, un joueur pioche ou prend la carte visible de la défausse.
    - Il peut remplacer une carte de sa grille ou défausser la carte piochée.
    - Les cartes révélées comptent dans le score du joueur.
    - La manche se termine quand un joueur a révélé toutes ses cartes.
    - Après plusieurs manches, le plus petit total gagne.
  RULES
)

Game.create!(
  name: "Br-Uno",
  nb_players: 10,
  real_rules: <<~RULES
    ## But du jeu

    Être le premier joueur à ne plus avoir de cartes en main.

    ## Résumé des règles

    - Chaque joueur reçoit des cartes.
    - À son tour, il faut poser une carte de même couleur, même chiffre ou même symbole.
    - Si aucun coup n'est possible, le joueur pioche une carte.
    - Les cartes spéciales changent le sens, font passer un tour ou ajoutent des cartes à piocher.
    - Quand il ne reste qu'une carte, le joueur doit annoncer Uno.
    - Le premier joueur sans carte remporte la manche.
  RULES
)

Game.create!(
  name: "Scrabble",
  nb_players: 4,
  real_rules: <<~RULES
    ## But du jeu

    Former des mots sur le plateau pour marquer plus de points que les autres joueurs.

    ## Résumé des règles

    - Chaque joueur pioche des lettres.
    - À son tour, un joueur place un mot connecté aux mots déjà présents.
    - Les mots doivent être valides dans le dictionnaire choisi.
    - Les lettres et cases bonus donnent des points.
    - Le joueur complète sa main après avoir joué.
    - La partie se termine quand il n'y a plus de lettres ou plus de coups possibles.
  RULES
)

Game.create!(
  name: "7 Wonders Duel",
  nb_players: 2,
  real_rules: <<~RULES
    ## But du jeu

    Développer la civilisation la plus puissante face à un seul adversaire.

    ## Résumé des règles

    - La partie se joue en trois âges.
    - À chaque tour, un joueur choisit une carte disponible.
    - Les cartes permettent de produire des ressources, construire des bâtiments ou gagner des points.
    - La victoire peut arriver par domination militaire ou scientifique.
    - Si aucune victoire immédiate n'arrive, les points sont comptés à la fin du troisième âge.
    - Le joueur avec le meilleur score gagne la partie.
  RULES
)

Game.create!(
  name: "Dobble Anarchy Pancakes",
  nb_players: 6,
  real_rules: <<~RULES
    ## But du jeu

    Être le premier joueur à gagner deux manches en posant rapidement ses cartes pancakes.

    ## Résumé des règles

    - Chaque joueur reçoit des cartes pancakes.
    - Au signal, tout le monde joue en même temps.
    - Il faut repérer un ingrédient commun entre ses cartes et celles des autres joueurs.
    - Quand un ingrédient commun est trouvé, le joueur pose sa carte sur la pile correspondante.
    - La rapidité et l'observation sont essentielles.
    - Le premier joueur à remporter deux manches gagne la partie.
  RULES
)

Game.create!(
  name: "Catan Duel",
  nb_players: 2,
  real_rules: <<~RULES
    ## But du jeu

    Développer sa principauté de Catan plus efficacement que son adversaire.

    ## Résumé des règles

    - Chaque joueur commence avec une petite principauté.
    - Les dés produisent des ressources selon les cartes en jeu.
    - Les ressources servent à construire des routes, colonies, villes et bâtiments.
    - Les joueurs peuvent améliorer leur économie et renforcer leur stratégie.
    - Certaines cartes apportent des avantages ou gênent l'adversaire.
    - Le premier joueur à atteindre l'objectif de points remporte la partie.
  RULES
)

Game.create!(
  name: "Splendor",
  nb_players: 4,
  real_rules: <<~RULES
    ## But du jeu

    Devenir le marchand le plus prestigieux en achetant des cartes de développement.

    ## Résumé des règles

    - À son tour, un joueur prend des jetons, réserve une carte ou achète une carte.
    - Les jetons servent à payer les cartes de développement.
    - Les cartes achetées donnent des bonus permanents pour les prochains achats.
    - Certaines cartes rapportent des points de prestige.
    - Les nobles peuvent rejoindre un joueur qui possède les bons bonus.
    - La partie se termine quand un joueur atteint le seuil de points requis.
  RULES
)

puts "Finished!"
