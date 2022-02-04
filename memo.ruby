#メモが終わったとき処理を終了すること、ターミナルから入力して、処理が終了したらmemo.ruby.csvファイルに入力した内容が表示されるように動作確認しました。

require "csv"
puts "1(新規でメモを作成) 2(既存のメモを編集する)"
puts "ENTERキーを押してください。"
memo_type = gets.to_s
puts "数字を入力してください。"
memo_type= gets.chomp
CSV.open("memo.ruby.csv","w") do | csv |
      csv << ["#{memo_type}"]
end
  if memo_type == "1"
    puts "拡張子を除いたファイル名を入力してください"
    memo_type = gets.chomp
    CSV.open("memo.ruby.csv","a") do | csv |
      csv << ["#{memo_type}"]
    end
    puts "メモしたい内容を記入してください"
    puts "完了後、Ctrl + Dを押します"
    memo_type = $stdin.read
    CSV.open("memo.ruby.csv","a") do | csv |
      csv << ["#{memo_type}"]
    end
  elsif memo_type == "2"
    puts "編集したいファイル名を入力してください"
    memo_type= gets.chomp
    CSV.open("memo.ruby.csv","a") do | csv |
      csv << ["#{memo_type}"]
    end
    puts "編集内容を記入してください"
    puts "完了後、Ctrl + Dを押します"
    memo_type = $stdin.read
    CSV.open("memo.ruby.csv","a") do | csv |
      csv << ["#{memo_type}"]
    end
  else 
    puts "エラー"
  end
