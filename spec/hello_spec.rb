require_relative '../lib/hello'

# テストをグループ化
RSpec.describe Hello do
  # テストの説明？
  it "message return hello" do
    # expectでHelloをnew,messageメソッド呼んで、結果が"hello"と一致してるか見る
    expect(Hello.new.message).to eq "hello"
  end
end
