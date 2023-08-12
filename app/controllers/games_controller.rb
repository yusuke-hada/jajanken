class GamesController < ApplicationController
    include GamesHelper
  
    def play
        if params[:special_choice] == "rock_scissors"
          @player_choice = 0
          @computer_choice = 1
          @result =  "プレイヤーの勝ち(特殊勝利)"
        elsif params[:special_choice] == "scissors_paper"
          @player_choice = 1
          @computer_choice = 2
          @result =  "プレイヤーの勝ち(特殊勝利)"
        elsif params[:special_choice] == "paper_rock"
          @player_choice = 2
          @computer_choice = 0
          @result =  "プレイヤーの勝ち(特殊勝利)"
        else
          @player_choice = params[:player_choice].to_i
          @computer_choice = get_computer_choice
          @result = judge(@player_choice, @computer_choice)
        end
      end
  
    private
  
    def get_computer_choice
        if rand(10000) == 0
          (@player_choice + 1) % 3  # 10000分の1の確率でプレイヤーの勝ちを設定
        else
          case @player_choice
            when 0  # プレイヤーがグーの場合
              rand(2) == 0 ? 0 : 2  # 50%の確率でグーかパーを選ぶ
            when 1  # プレイヤーがチョキの場合
              rand(2) == 0 ? 0 : 1  # 50%の確率でグーかチョキを選ぶ
            when 2  # プレイヤーがパーの場合
              rand(2) == 0 ? 1 : 2  # 50%の確率でチョキかパーを選ぶ
          end
        end
      end

    def judge(player_choice, computer_choice)
        if player_choice == computer_choice
          "引き分け"
        elsif (player_choice == 0 && computer_choice == 1) ||
              (player_choice == 1 && computer_choice == 2) ||
              (player_choice == 2 && computer_choice == 0)
          "プレイヤーの勝ち"
        else
          "コンピューターの勝ち"
        end
    end
end
