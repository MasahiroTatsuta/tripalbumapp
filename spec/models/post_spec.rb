require 'rails_helper'

RSpec.describe Post, type: :model do
  it '有効なファクトリを持つこと' do
    expect(build(:post)).to be_valid
  end

  it 'ファクトリで関連するデータを生成する' do
    post = build(:post)
    puts "This note's user is #{post.user.inspect}"
  end

  before do
    @post = build(:post)
  end

  it 'キャプションがなければ無効な状態であること' do
    @post.caption = ''
    expect(@post.valid?).to eq(false)
  end

  it 'キャプションが100文字以上であると無効な状態であること' do
    @post.caption = 'a' * 101
    expect(@post.valid?).to eq(false)
  end
end
