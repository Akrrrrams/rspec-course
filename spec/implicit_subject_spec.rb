RSpec.describe Hash do
   # let(:my_hash) {{}}
it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = "Some Value"
    expect(subject.length).to eq(1)  
end

it 'is isolated between exam' do
    expect(subject.length).to eq(0)  
    end
end

RSpec.describe Array do

 it 'should be able to add item' do 
    expect(subject.length).to eq(0)
    subject.push 'value'
    expect(subject.length).to eq(1)

    end
    end