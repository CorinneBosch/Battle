require 'game'

describe Game do
  it 'attacks player' do
    player = (double)
    expect(player).to receive(:is_attacked)
    subject.attack(player)
  end
end

# game(p1 , p2)
# game.(p1 decided .attack p2)
# game.attack(player)

# attack (p2)
# p1.attack(p2)
# game.attack(Player2.is_attacked)

# subject.attack with 1 argument 
# player responds to is_attacked