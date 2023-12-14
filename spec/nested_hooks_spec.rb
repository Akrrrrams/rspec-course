RSpec.describe 'nested hooks' do
    before(:context) do
    puts 'Outter Before context'
    end

    before(:example) do
    puts ' Outter Before example'
    end

    it 'does basic math' do
     expect(1 + 1).to eq(2)
     end

   context 'with condition A' do
    before(:context) do
    puts 'Inner Before context'   # K Z E Z E H Z B E Z B V E
   end

    before(:example) do
    puts ' Inner Before example'
    end

    it 'does some bacic math'do
    expect(1 + 1).to eq(2)
    end

    it 'does subtraction as well'do
    expect(5 - 3).to eq(2)
    end
end
end