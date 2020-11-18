require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'ファクトリで関連するデータを生成する' do
    post = create(:post)
    puts "This note's user is #{post.user.inspect}"
  end
end
