require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should validate email' do
    user = FactoryBot.create(:user, email: 'test@asdasdafoifsidf.com', password: 'starwars', password_confirmation: 'starwars')
    expect(user.valid?).to be false
  end

end
