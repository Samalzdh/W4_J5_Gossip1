
class Gossip
  require 'csv'
  attr_reader :content, :author
  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open('/Users/sam/Downloads/THP SEMAINE 4/J5_MVC/TGP/db/gossip.csv', 'w') do |csv|
      csv << [@author, @content]
    end
  end 
end