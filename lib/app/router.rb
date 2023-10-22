require_relative 'controller'

class Router 
  def initialize
    @controller = Controller.new
  end
  
  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      #on affiche le menu
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1\. Je veux créer un gossip"
      puts "2\. Je veux voir les gossiers"
      puts "4\. Je veux quitter l'app"
      params = gets.chomp.to_i #on attend le choix de l'utilisateur
      case params
      when 1
        @controller.create_gossip
      when 2
        @controller.index_gossips
      when 4
        puts
        puts "XoXo Gossip Girl!"
        puts
        break
      else 
        puts "Choix invalide"
      end
    end    
  end  
end