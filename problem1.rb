# Read data from data.csv and transform it into an array of hashes
# Each hash represents a row of data with keys as column names and values as row values

require 'csv'

# Read data 
csv_data = CSV.read('data.csv', headers: true)

# Convert to array of hashes
parsed_data = csv_data.map(&:to_h)

# Print data
puts parsed_data