namespace :poll do
  desc "Populate the players table with data from the FFN api"
  task players: :environment do
    mapping = {
      "QB" => Players::Quarterback,
      "RB" => Players::RunningBack,
      "WR" => Players::WideReceiver,
      "TE" => Players::TightEnd,
      "K"  => Players::Kicker,
      "DEF" => Players::Defense
    }

    players = FFNerd.player_list
    players.each do |p|
      player = FFNerd.player_detail(p.id)

      params = {
        first_name: player.first_name,
        last_name: player.last_name,
        ffn_key: p.id
      }
      
      player = mapping[player.position].create(params)
      puts "Inserted #{player.name}"

    end
  end
end
