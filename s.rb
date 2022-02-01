#メモが終わったり編集が終わったりした場合の処理を終了すること、ファイル名が全てtestになる箇所を修正しました。

require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

  memo_type = gets.to_s
  if memo_type = "1"
    puts "拡張子を除いたファイル名を入力してください"
    memo_type = gets.to_s
    puts "メモしたい内容を記入してください"
    puts "完了後、Ctrl + Dを押します"
   
    memo_type = $stdin.read
    CSV.open("s.csv","w") do | s |
      s << ["#{memo_type}"]
    end
  elsif memo_type = "2"
    puts "編集したいファイル名を入力してください"
    memo_type = gets.to_s
 　  puts "編集内容を記入してください"
    puts "完了後、Ctrl + Dを押します"
    memo_type = $stdin.read
  end
