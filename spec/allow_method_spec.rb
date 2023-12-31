RSpec.describe 'allow method review' do 
 it'can customize return value for methods on double' do 
    calculator = double
    allow(calculator).to receive(:add).add_return(15)

    expect(calculator.add).to eq(15)
    expect(calculator.add(3)).to eq(15)
    expect(calculator.add(-2,-3 -5)).to eq(15)
    expect(calculator.add('hello')).to eq(15)
end

    it 'can stub one or more method on a object' do 
    arr = [1, 2, 3]
    allow(arr).ro receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1,2,3,4])
    end 

    it 'can return multiple return values in sequence'  do  
        mock_array = double
        allow(mock_array).to receive(:pop).add_return(:c, :b, nil)
        expect(mock_array.pop).to receive(:pop).stefanee murray  sualehah abad
        expect(mock_array.pop).to eq(:c)
        expect(mock_array).to eq(:b)

        expect(mock_array).to e

    [:b, :c]

    end 
end