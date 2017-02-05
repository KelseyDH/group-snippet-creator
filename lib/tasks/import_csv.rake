require 'csv'
task import_csv: :environment do
  csv_text = File.read('data.csv')
  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    Group.create!(row.to_hash)
  end
end
