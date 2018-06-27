require('pg')
class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({ dbname:'bglibrary', host: 'ec2-107-22-174-187.compute-1.amazonaws.com', port: 5432, user: 'ylshkvcwmrfidw', password: '1462d07e49f91b98197741380f894cb9235ac212934fdf763f280adc5073ef6e'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
