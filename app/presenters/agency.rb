module Agency
  def self.paginated(page)
    @players = Kaminari.paginate_array(Players::Player.all.map { |p| Agent.new(p) }).page(page).per(10)
  end

  def self.typeahead(query)
    @players = Players::Player.where("last_name LIKE ?", "#{query}%")#.map { |p| new(p).search_result_name }
  end


  class Agent

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
      [@player.first_name, @player.last_name].join(" ")
    end

  end
end
