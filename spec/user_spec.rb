require 'spec_helper'

RSpec.describe User do
  describe '#greet' do
    context '12歳以下であれば' do
      it 'ひらがなで答える' do
        user = User.new(name: 'user', age: 12)
        expect(user.greet).to eq 'ぼくはuserだよ。'
      end
    end
    context '13歳以上であれば' do
      it '漢字で答える' do
        user = User.new(name: 'user', age: 13)
        expect(user.greet).to eq '僕はuserです。'
      end
    end
  end
end
