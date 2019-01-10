require './lib/user'

describe User do
  context 'diplays user info' do
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    
    it 'user.name returns name' do
      expect(user.name).to eq 'Joe Bloggs'
    end

    it 'user.description returns description' do
      expect(user.description).to eq 'person'
    end

    it 'user.age returns age' do
      expect(user.age).to eq 19
    end

    it 'user.interests returns interests' do
      expect(user.interests).to eq "Ruby"
    end
    
    it 'user.photo returns photo' do
      expect(user.photo).to eq "test url"
    end

    it 'user.availability returns availability' do
      expect(user.availability).to eq "never"
    end

    it 'user.location returns location' do
      expect(user.location).to eq "London"
    end

    it 'user.username returns username' do
      expect(user.username).to eq "JoeyB"
    end

    it 'user.password returns password' do
      expect(user.password).to eq "secret123"
    end

  end
end
