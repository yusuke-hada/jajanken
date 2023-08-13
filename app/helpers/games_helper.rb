module GamesHelper
  def choice_label(choice)
    case choice.to_i
      when 0
          'グー'
      when 1
          'チョキ'
      when 2
          'パー'
    end
  end
  def image_path_for_choice(choice)
    case choice.to_i
      when 0
        image_path('rock.png')
      when 1
        image_path('scissors.png')
      when 2
        image_path('paper.png')
    end
  end

  def random_comment
    comments = [
      "俺に勝てると思ってんの？",
      "僕に勝つ方法をQiitaで探そっか!",
      "あなた「Hey,Siri!じゃんけんに勝つ方法」Siri「ありません」",
      "今日は俺の方に運が味方してたかー、あちゃー",
      "「そろそろ寝た方がいいんじゃない？こんなプレイじゃ勝てるわけないでしょ」とChatGPTが申しております",
      "こんなことしてないで勉強しよっか？？rails newしよ？？",
      "君の選択肢、すぐに予想できたよ。なんたって僕は写輪眼の持ち主だからね",
      "まぁ、あんまり期待してなかったから大丈夫だよ",
      "負けた罰としてX(Twitter)のタブ消そっか？",
      "何でこんなに勝てないって？後出ししてるからだよ！",
      "どんちき♪└(＾ω＾ )┐♫┌( ＾ω＾)┘どんちき♪どんちき♪└(＾ω＾ )┐♫┌( ＾ω＾)┘どんちき♪",
    ]
    comments.sample
  end

  def win_comment
    comments = [
      "君には完敗だよ、一から出直します",
      "罵詈雑言を浴びせてごめんね、寂しかったんだ",
      "純正九連宝燈と同じ確率だよ！おめでとう！"
    ]
    comments.sample
  end

  def unwin_comment
    comments = [
      "ズルしてでも勝ちたかったんだ？かわいいね",
      "よちよち",
      "おめでとー(特殊勝利)",
      "エクゾディアみたいな勝ち方〜",
      "どんだけ〜"
    ]
    comments.sample
  end
end

