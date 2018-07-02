require('pg')
class SqlRunner

  def self.run(sql, values = [])
    begin
      db = PG.connect({ dbname:'bglibrary', host: 'ec2-107-21-224-61.compute-1.amazonaws.com', port: 5432, user: 'ryummygflecoam', password: 'ee2bcfff35bde480b5812a302fa9c2cf9a04c933ffa86d7bdcafaa26575a0ac6'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
