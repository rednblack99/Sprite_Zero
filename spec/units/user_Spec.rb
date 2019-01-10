require './lib/user'

describe User do
  context 'diplays user info' do
    # let!(:user) {User.create(name: 'Joe Bloggs', age: '19', interests: 'Ruby', photo: 'test url', availability: 'never', location: 'London', username: 'JoeyB', password: 'secret123')}
let!(:user) {User.create(name: 'Joe Bloggs')}
    it 'user.name returns name' do
      expect(user.name).to eq 'Joe Bloggs'
    end
  end
end
