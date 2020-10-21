# == Schema Information
#
# Table name: nobels
#
#  yr          :integer
#  subject     :string
#  winner      :string

require_relative './sqlzoo.rb'

def physics_no_chemistry
  # In which years was the Physics prize awarded, but no Chemistry prize?
  execute(<<-SQL)


      SELECT
        yr
      FROM
        nobels
      WHERE
        yr NOT IN (
  
      SELECT
        yr
      FROM
        nobels
      GROUP BY
        subject, yr
      HAVING
        subject = 'Chemistry'

        )

      GROUP BY
        subject, yr
      HAVING
        subject = 'Physics'

  SQL
end

    
