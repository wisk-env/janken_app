class Game
  def self.janken(judgement)
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    
    your_hand = gets.to_i
    # p your_hand
    
    your_hand_name = ''
    case your_hand
    when 0 then
      your_hand_name = "グー"
    when 1 then
      your_hand_name = "チョキ"
    when 2 then
      your_hand_name = "パー"
    end
    
    player_hand = rand(3)
    # puts player_hand
    
    player_hand_name = ''
    
    case player_hand
    when 0 then
      player_hand_name = 'グー'
    when 1 then
      player_hand_name = 'チョキ'
    when 2 then
      player_hand_name = 'パー'
    end
    
    if your_hand == 3 then
      puts "---------------"
      puts "「戦わない」が選択されました。じゃんけんを終了します。"
      return
    else
      puts "ホイ！"
      puts "---------------"
      puts "あなた :" + your_hand_name + "を出しました"
      puts "相手 :" + player_hand_name + "を出しました"       
    end
    
    puts "---------------"
      
    if your_hand == 0 && player_hand == 0
      judgement = "あいこ"
    elsif your_hand == 0 && player_hand == 1
      puts "勝ち"
      judgement = "勝ち"
    elsif your_hand == 0 && player_hand == 2
      puts "負け"
      judgement = "負け"
    end
    
    if your_hand == 1 && player_hand == 0
      puts "負け"
      judgement = "負け"
    elsif your_hand == 1 && player_hand == 1
      judgement = "あいこ"
    elsif your_hand == 1 && player_hand == 2
      puts "勝ち"
      judgement = "勝ち"
    end
    
    if your_hand == 2 && player_hand == 0
      puts "勝ち"
      judgement = "勝ち"
    elsif your_hand == 2 && player_hand == 1
      puts "負け"
      judgement = "負け"
    elsif your_hand == 2 && player_hand == 2
      judgement = "あいこ"
    end
    
    if judgement == "勝ち" || judgement == "負け"
      direction_game(judgement)
    elsif judgement == "あいこ"
      aiko_case(judgement)
    else
      janken(judgement)
    end  
  end
    
  # あいこの処理
  def self.aiko_case(judgement)
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    your_hand = gets.to_i
    # p your_hand
    
    your_hand_name = ''
    case your_hand
    when 0 then
      your_hand_name = "グー"
    when 1 then
      your_hand_name = "チョキ"
    when 2 then
      your_hand_name = "パー"
    end
    
    player_hand = rand(3)
    # puts player_hand
    
    player_hand_name = ''
    
    case player_hand
    when 0 then
      player_hand_name = 'グー'
    when 1 then
      player_hand_name = 'チョキ'
    when 2 then
      player_hand_name = 'パー'
    end
        
    if your_hand == 3 then
      puts "---------------"
      puts "「戦わない」が選択されました。じゃんけんを終了します。"
      return
    else
      puts "ショ！"
      puts "---------------"
      puts "あなた :" + your_hand_name + "を出しました"
      puts "相手 :" + player_hand_name + "を出しました"  
    end
    
    puts "---------------"
    
    if your_hand == 0 && player_hand == 0
      judgement = "あいこ"
    elsif your_hand == 0 && player_hand == 1
      puts "勝ち"
      judgement = "勝ち"
    elsif your_hand == 0 && player_hand == 2
      puts "負け"
      judgement = "負け"
    end
    
    if your_hand == 1 && player_hand == 0
      puts "負け"
      judgement = "負け"
    elsif your_hand == 1 && player_hand == 1
      judgement = "あいこ"
    elsif your_hand == 1 && player_hand == 2
      puts "勝ち"
      judgement = "勝ち"
    end
    
    if your_hand == 2 && player_hand == 0
      puts "勝ち"
      judgement = "勝ち"
    elsif your_hand == 2 && player_hand == 1
      puts "負け"
      judgement = "負け"
    elsif your_hand == 2 && player_hand == 2
      judgement = "あいこ"
    end
    
    if judgement == "勝ち" || judgement == "負け"
      direction_game(judgement)
    elsif judgement == "あいこ"
      aiko_case(judgement)
    end
  end
    
  # あっち向いての処理
  def self.direction_game(judgement)
    puts "あっちむいて〜"
    puts "0(下)1(上)2(左)3(右)"
    
    your_direction = gets.to_i
    # p your_direction
    
    puts "ホイ！"
    
    player_direction = rand(4)
    # p player_direction
    
    your_direction_name = ''
    player_direction_name = ''
    
    case your_direction
    when 0 then
      your_direction_name = "下"
    when 1 then
      your_direction_name = "上"
    when 2 then
      your_direction_name = "左"
    when 3 then
      your_direction_name = "右"
    end
    
    case player_direction
    when 0 then
      player_direction_name = "下"
    when 1 then
      player_direction_name = "上"
    when 2 then
      player_direction_name = "左"
    when 3 then
      player_direction_name = "右"
    end
    
    puts "---------------"
    puts "あなた :" + your_direction_name
    puts "相手 :" + player_direction_name
    puts "---------------"
    
    if judgement == "勝ち" && your_direction == player_direction then
      puts "あなたが勝ちました！！相手の負けです。"
    elsif judgement == "負け" && your_direction == player_direction then
      puts "相手が勝ちました。。。あなたの負けです。"
    elsif your_direction != player_direction then
      janken(judgement)
    end
  end
end
    
# 判定(勝ち負け)の値を入れる変数を定義
judgement = ''
    
Game.janken(judgement)
    