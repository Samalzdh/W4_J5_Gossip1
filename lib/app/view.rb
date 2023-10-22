class View
  def create_gossip
    puts "Qui est-ce ?"
    print ">"
    author  = gets.chomp
    puts "Raconte moi tout :"
    print ">"
    gossip  = gets.chomp
    return params = { content: gossip, author: author }
  end
  def index_gossips(gossips)
    gossips = Gossip.all
    gossips.each do |gossip|
      puts "voici le gossip de #{gossip.author}"
      puts
      puts gossip.content
      puts
      puts "-------------------------------------"
      puts
    end
  end
end