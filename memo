require "csv"
puts "1(新規でメモを作成) 
                          2(既存のメモを編集する) 
                                                  3(全てのメモを表示) 4()"
def make_memo
  content = gets.chomp
  memo = { "本文" => content}
end

def show_memo(memos)
  memos.each do |memo|
    puts memo ["本文"]
  end
end

memos = []

while true
  
  puts "番号選択してください。"
  mode = gets.chomp
  if mode == "1"
    puts "拡張子を除いたファイル名を入力してください"
    mode = gets.chomp
    
    puts "内容を入力してください。"
    puts "完了後、Ctrl + Dを押します"
    
    memos.push(make_memo)
    
  elsif mode == "2"
    puts "拡張子を除いたファイル名を入力してください"
    mode = gets.chomp
    puts "編集内容を入力する"
    puts "完了後、Ctrl + Dを押します"
    memos.push(make_memo)
  
  elsif mode == "3"
    puts "拡張子を除いたファイル名を入力してください"
    mode = gets.chomp
    puts "全てのメモを表示します。"
    show_memo(memos)
  elsif mode == ""
    puts ""
    puts ""
  else 
    puts "エラー"
  end
end


