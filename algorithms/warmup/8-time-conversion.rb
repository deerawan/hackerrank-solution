require('date')

time = gets
dateTime = DateTime.parse(time)
puts dateTime.strftime('%H:%M:%S')