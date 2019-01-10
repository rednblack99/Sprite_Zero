require './lib/user'

describe User do
  context 'diplays user info' do
    # let!(:user) {User.create(name: 'Joe Bloggs', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
    let!(:user) {User.create(username: 'Joe Bloggs')}
    it 'user.name returns name' do
      expect(user.username).to eq 'Joe Bloggs'
    end
  end
  context 'username can not be used twice' do
    let!(:david) {User.create(username: 'mynameis', password: 'mynameissecret')}
    let!(:davide) {User.create(username: 'mynameis', password: 'mynameissecret1')}
    it 'not valid if same username' do
      expect(davide.valid?).to eq false
    end
  end
end
