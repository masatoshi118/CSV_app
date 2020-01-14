class User < ApplicationRecord
  
  def self.import(path)

    list = []

    CSV.foreach(path, headers: true) do |row|
      list << {
        name: row["name"],
        age: row["row"],
        address: row["address"]
      }
    end

    begin
      puts "インポートを開始しました"
      User.create!(list)
      puts "インポートに成功しました"
    rescue ActiveModel::UnknownAttributeErorr => invalid
      puts "インポートに失敗しました：UnknownAttributeErorr"
    end

  end

end
