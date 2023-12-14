RSpec.describe Hash do 
subject(:bob)do
    {a: 1, b: 2}    
end

it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

describe 'nexted example'do
  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end
 end
end

RSpec.describe Array do 
    subject(:sally) do
         [3,5] 
    end

it 'has two valuee' do 
    expect(sally.lenght).to eq(2)
    sally.pop
    expect(sally.lenght).to eq(1)
end

it 'has default two value' do 
    expect(sally.lenght).to eq(2)
end
end