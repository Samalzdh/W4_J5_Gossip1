require_relative 'gossip'
require_relative 'view'

class Controller
  @@all_gossips = []
  def initialize
    @view = View.new
  end
  
  def create_gossip 
    params = @view.create_gossip
    @gossip = Gossip.new(params[:author], params[:content])  # Instancie Gossip avec les paramètres
    @gossip.save
  end

  def Gossip.all

    # 2) Parcours le fichier CSV et ajoute chaque potin à l'array
    CSV.foreach('/Users/sam/Downloads/THP SEMAINE 4/J5_MVC/TGP/db/gossip.csv') do |row|
      author, content = row  # 2-a) Décompose les paramètres de la ligne

      # 2-a) Crée un objet Gossip pour chaque ligne
      gossip_provisoire = Gossip.new(author, content)

      # 2-b) Ajoute le gossip provisoire à l'array
      @@all_gossips << gossip_provisoire
      
    end

    return @@all_gossips  # 3) Renvoie l'array contenant tous les potins
  end
  def index_gossips 

    @view.index_gossips(@@all_gossips) 
  end


end