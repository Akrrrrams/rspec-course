RSpec.describe 'include matcher' do 
    describe 'hot chocolate' do 
    it 'check for substing inclusion' do 
    expect(subject).to include('hot')
    expect(subject).to include('choc')
    expect(subject).to include('late')
    end 

    it{is_expected.to include('hot')}
    it{is_expected.to include('choc')}
    end 

    describe [10, 20, 30] do 
    it 'checks for inclusion in the array, regardless of order' do 
        expect(subject).to include(10)
        expect(subject).to include(10,20)
 end 

    it {is_expected.to include(20,30,10)}
    end

    describe ({a:2, b:4 }) do 
    it 'can check for key existence' do 
        expect(subject).to include(:a)
        expect(subject).to include(:b)
    end
    
    it 'can check for key_value pair' do 
        expect(subject).to include(a: 2)
    end 

    it {is_expected.to include(:b) }
    it {is_expected.to include(b: 4) }

    end
end 