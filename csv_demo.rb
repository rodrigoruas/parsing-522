# require the CSV ruby library
require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'


# PARSING THE CSV

# reading every row of my CSV file


# hash with every option of my csv file
csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath, csv_options) do |beer|

  p "#{beer["Name"]} is a  #{beer["Appearance"]} beer from #{beer["Origin"]}"
end




# STORING THE CSV


csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/new_beers.csv'

# CSV.open comes from File.open -> ruby method

# wb -> writing binary -> ask permission to write something in the file
# rb -> reading binary -> I can only read the file
# ab-> appending binary -> adding stg to the end of the file

beers = [
  {
    name: "Asahi",
    appearance: "Pale Lager",
    origin: "Japan"
  },
  {
    name: "Guinness",
    appearance: "Stout",
    origin: "Ireland"
  },
  {
    name: "Sagres",
    appearance: "Pale",
    origin: "Portugal"
  }
]

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    # csv << beer.values
    csv << [beer[:name], beer[:appearance], beer[:origin]]
  end
end



































