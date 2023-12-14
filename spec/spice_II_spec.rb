class Car
    def initialize(model)
        @model = model 
    end
    
end

class Garge
attr_reader :storage

def initialize
    @storage =[]
    end

    def add_to_collection(model)
        @storage << Car.new(model)
    end
    
end

RSpec.describe Garge do 
    let(:car) {instance_double(Car) }

    before do 
    allow(Car).to recive(:new).and_return(car)
    
    end 

    it 'adds a car its storage' do 
     subject.add_to_collection('Honda Civic')
     expect(Car).to have_received(:new).with('Honda Civic')
     expect(subject.storage.length).to eq(1)
     expect(subject.storage.first).to eq(car)
    
    end 

end 