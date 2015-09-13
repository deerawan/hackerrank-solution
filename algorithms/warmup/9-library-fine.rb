require('date')

actual = gets.split.map {|i| i.to_i}
expected = gets.split.map {|i| i.to_i}

def on_time?(actual_date, expected_date)
  actual = DateTime.new(actual_date[2], actual_date[1], actual_date[0])
  expected = DateTime.new(expected_date[2], expected_date[1], expected_date[0])
  actual <= expected
end

def same_year?(actual_date, expected_date)
  actual_date[2] === expected_date[2]
end

def same_month?(actual_date, expected_date)
  actual_date[1] === expected_date[1]
end

def fined_by_month?(actual_date, expected_date)
  same_year?(actual_date, expected_date) and !same_month?(actual_date, expected_date)
end

def fined_by_days?(actual_date, expected_date)
  same_year?(actual_date, expected_date) and same_month?(actual_date, expected_date)
end

def fined_by_year?(actual_date, expected_date)
  !same_year?(actual_date, expected_date)
end

def calculate_months(actual_date, expected_date)
  actual_date[1] - expected_date[1]
end

def calculate_days(actual_date, expected_date)
  actual_date[0] - expected_date[0]
end

fine = 0

if on_time?(actual, expected)
  fine = 0
elsif fined_by_month?(actual, expected)
  fine = calculate_months(actual, expected).to_i * 500
elsif fined_by_days?(actual, expected)
  fine = calculate_days(actual, expected).to_i * 15
elsif fined_by_year?(actual, expected)
  fine = 10000
end

puts fine