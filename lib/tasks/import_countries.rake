require 'csv'
namespace :import_countries_csv do
  task create_import: :environment do

    csv_text = File.open('/Users/alex/Desktop/countries.csv', "r:ISO-8859-1")

    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      Country.create!(row.to_hash)
    end

  end
end
