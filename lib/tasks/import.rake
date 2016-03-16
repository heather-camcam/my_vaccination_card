require 'csv'
namespace :import_vaccinations_csv do
  task :create_import => :environment do
    csv_text = File.open('/Users/Heather/Desktop/vax.csv', "r:ISO-8859-1")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Vaccination.create!(row.to_hash)
    end
  end
end
