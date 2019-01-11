require './lib/user'

describe User do
  context 'diplays user info' do
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    it 'user.name returns name' do
      expect(user.name).to eq 'Joe Bloggs'
    end
  end
  context 'username can not be used twice' do
    let!(:david) {User.create(username: 'mynameis', password: 'mynameissecret')}
    let!(:davide) {User.create(username: 'mynameis', password: 'mynameissecret1')}
    it 'not valid if same username' do
      expect(davide.valid?).to eq false
    end
  end

  context 'User details are correct' do
    # let!(:dave) {User.create(username: 'dave', password: 'Secret123')}
    let!(:user) {User.create(name: 'Joe Bloggs', description: 'person', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    # it "Sign in if user and password are correct" do
    #   expect(User.authenticate('JoeyB', 'secret123')).to eq(user)
    # end

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
