class Person
    def a 
        sleep(3)
        "Hello"
    end 
end 

RSpec.describe Person do 
describe 'regular double' do 
it'can implement any mothod' do 
  person = double(a:"Hello", b:20)
  expect(person.a).to eq("Hello")
end 
end
  
    describe 'instance double' do 
    it 'can only implement methods that are defined on the class' do 

        person = instance_double(Person)
        allow(person).to recive(:a).with(3).and_return("Hello")
        expect(person.a(3)).to eq("Hello")


    end
    
    end 
end 