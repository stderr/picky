FactoryGirl.define do
  factory :home_team, class: Team do
    name "Colts"
    city "Indianapolis"
  end

  factory :away_team, class: Team do
    name "Texans"
    city "Houston"
  end

  factory :quarterback, class: Players::Quarterback do
    first_name "Andrew"
    last_name "Luck"
    ffn_key "1932"
  end
  
  factory :receiver, class: Players::WideReceiver do
    first_name "Reggie"
    last_name "Wayne"
    ffn_key 223
  end

  factory :game do
    home_team
    away_team
  end

  factory :score do
  end

  factory :scheduling do
    association :player, factory: :quarterback
    game
    score
  end
end
