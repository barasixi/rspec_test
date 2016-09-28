require 'spec_helper'

RSpec.describe User do
  before do
    @params = {name: 'user'}
  end

  describe '#greet' do
    context '12歳以下であれば' do
      it 'ひらがなで答える' do
        user = User.new(@params.merge(age: 12))
        expect(user.greet).to eq 'ぼくはuserだよ。'
      end
    end
    context '13歳以上であれば' do
      it '漢字で答える' do
        user = User.new(@params.merge(age: 13))
        expect(user.greet).to eq '僕はuserです。'
      end
    end
  end
end
