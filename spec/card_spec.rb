class Card
  attr_accessor :rank, :suit
    def initialize(rank,suit)
      @rank = rank
      @suit = suit   
    end
end

# Let method   
RSpec.describe Card do
  let(:card){Card.new('Ace','Spades')}   # let(:x) {1+1} # let(:y) {x + 10}

 it 'has a rank and that rank can change' do 
  expect(card.rank). to eq('Ace')
  card.rank = 'Queen'
  expect(card.rank). to eq('Queen')
 end

 it 'has a suit' do
   expect(card.suit). to eq('Spades')
 end

 it 'has a custom error' do
  #card.suit = 'Noonsense'
    comparison = 'Spades'   # comparison verbal 
    expect(card.suit).to eq(comparison),"Hey I expected #{comparison} but I got #{card.suit} instead!"
end
end

#Helper method
#RSpec.describe Card do
#  def card
#   card = Card.new('Ace','Spades')
#  end 

# it 'has a rank and that rank can change' do 
#  expect(card.rank). to eq('Ace')
#  card.rank = 'Queen'
#  expect(card.rank). to eq('Queen')
# end

# it 'has a suit' do
#   expect(card.suit). to eq('Spades')
#end
#end

# Before Hooks and Instance Variable
#RSpec.describe Card do    
#  before do  
#    @card = Card.new('Ace','Spades')
#   end 

#  it 'has a type' do 
#   expect(@card.rank). to eq('Ace')
#  end

#  it 'has a suit' do
#    expect(@card.suit). to eq('Spades')
# end
#end


#class School
#  attr_reader :name, :students
#  def initialize(name)
#      @name = name 
#      @students = []
#end
#end

#RSpec.describe School do
#  it 'has a name' do
#    school = School.new('Beverly Hills High School')
#    expect(school.name).to eq('Beverly Hills High School')
#  end

#  it 'should start off with no students' do
#    school = School.new('Notre Dame High School')
#    expect(school.students).to eq([])
#  end
#end

#RSpec.describe 'math calculations' do
#    it 'does basic math' do
#      expect (3+4).to eq(7)
#      expect (10-5).to eq(5)
#      expect (3*4).to eq(12)
#      expect (20/5).to eq(4)
#    end
#end