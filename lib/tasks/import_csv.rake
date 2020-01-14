namespace :import_csv do
  #rails import_csv:users
  desc "User CSVデータのインポート"
  # モデルにアクセスするためにenvironmentが必要
  # つまり、users: :environmentで:userモデルを指定
  task users: :environment do
    User.import('db/csv_data/csv_data.csv')
  end
end
