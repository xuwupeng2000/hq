# Employ service for method with coupled models
class FindUsersForDestinationService

  class << self

    def call(destination_id)
      raise "FindUsersForDestinationService can't find destination_id" unless Destination.find(destination_id).present?

      # NOTE: Write a raw SQL query which uses JOIN statements to efficiently query a subset of records
      sql = query(destination_id)
      users = User.find_by_sql(sql)
    end

    private

    def query(destination_id)
      sql = <<-SQL 
        with app_with_des as (
        select * from apps
        where apps.destination_id = #{destination_id})

        select * from users
        where id in
        (select user_id from app_with_des ad
        join memberships m
        on ad.id = m.app_id);
      SQL
    end
  end
  
end
