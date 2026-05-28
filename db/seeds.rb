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

puts "Finished!"
