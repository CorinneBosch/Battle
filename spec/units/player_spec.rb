require 'player'

describe Player do
  it 'returns name' do
    expect(subject.name).to eq "Frosmoth"
  end

  it 'reduces player2 hp by 10 when attacked' do
    expect { subject.is_attacked }.to change { subject.hp }.by(-10)
  end

end