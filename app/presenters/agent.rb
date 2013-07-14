class Agent

  def self.typeahead(query)
    @players = Players::Player.where("last_name LIKE ?", "#{query}%").map { |p| new(p).search_result_name }
  end

  def initialize(player)
    @player = player
  end

  def search_result_name
    "#{@player.last_name}, #{@player.first_name}"
  end

  def position_acronym
    @acronym ||= begin
                   return "QB" if @player.position == 'Quarterback'
                   @player.position.scan(/\p{Upper}/)
                 end
  end

  def full_name
    [first_name, last_name].join(" ")
  end

end
