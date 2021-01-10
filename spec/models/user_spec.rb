require 'rails_helper'

RSpec.describe User, type: :model do
  it '有効なファクトリを持つこと' do
    expect(build(:user)).to be_valid
  end

  before do
    @user = build(:user)
  end

  describe 'バリデーション' do
    it '全ての項目に値が記載されていること' do
      expect(@user.valid?).to eq(true)
    end

    it 'メールアドレスがなければ無効な状態であること' do
      @user.email = ''
      expect(@user.valid?).to eq(false)
    end

    it '名前がなければ無効な状態であること' do
      @user.name = 'a' * 101
      expect(@user.valid?).to eq(false)
    end

    it 'ユーザーネームがなければ無効な状態であること' do
      @user.username = ''
      expect(@user.valid?).to eq(false)
    end

    it 'パスワードがなければ無効な状態であること' do
      @user.password = ''
      expect(@user.valid?).to eq(false)
    end

    it 'メールアドレスが重複したら無効な状態であること' do
      create(:user, email: 'aaron@example.com')
      user = build(:user, email: 'aaron@example.com')
      expect(user.valid?).to eq(false)
    end
  end
end
