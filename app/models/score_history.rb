class ScoreHistory < ApplicationRecord
  belongs_to :game
  belongs_to :user



  def self.getTop10PerGameWithNames(gameid)
    sql = <<-SQL
      SELECT scoreh.id, scoreh.game_id, scoreh.user_id, u.name, scoreh.score
      FROM score_histories as scoreh
      JOIN users as u
      ON scoreh.user_id = u.id
      WHERE game_id = #{gameid}
      ORDER BY score ASC
      LIMIT 10;    
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end
end
