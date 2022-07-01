require "csv"

puts "1(新規でメモを作成する) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  
  puts "拡張子を除いたファイルを入力してください"
  
  memo_create = gets.chomp
  
  p "メモしたい内容を入力してください"
  p "完了したらCtrl + Dを入力してください"
  
  memo_input = $stdin.readlines
  
  CSV.open("#{memo_create}.csv","w") do |csv|
    csv << ["#{memo_input}"]
  end
  
 elsif memo_type == 2
    
    puts "拡張子を除いた編集するファイルを入力してください"
    
    memo_edit = gets.chomp
    
    p "編集したい内容を入力してください"
    p "完了したらCtrl + Dを入力してください"
    
    memo_input = $stdin.readlines
    
    CSV.open("#{memo_edit}.csv","a") do |csv|
      csv << ["#{memo_input}"]
    end
    
  else
    puts "ERROR1か2を入力してください"
  end
