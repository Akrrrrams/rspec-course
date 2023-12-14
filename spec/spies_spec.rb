RSpec.describe 'spies' do 
let(:animal) { spy('animal') }

it'confirms that a message has been recived' do 
animal.eat_food
expect(animal).to have_received(:eat_food)
expect(animal).not_to have_received(:eat_human)

end 

it'resets between example' do 
expect(animal).not_to have_received(:eat_food)

end 

it'retains the same functinality of a regular dpuble' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('sushi')

    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')


end


end