# Methods

def count_ontime(total_student)
  student_coming = gets.split[0..total_student] # get based total student specified
  total_ontime = 0
  student_coming.each do |time|
    if ontime?(time)
      total_ontime += 1
    end
  end
  total_ontime
end

def ontime?(time)
  time.to_i <= 0
end

def cancel_class?(total_ontime, min_ontime)
  total_ontime < min_ontime
end

# Start implementation

total_case = gets.to_i

total_case.times do
  the_case = gets.split
  total_student = the_case[0].to_i
  min_ontime_student = the_case[1].to_i

  total_ontime = count_ontime(total_student)

  if cancel_class?(total_ontime, min_ontime_student)
    puts "YES"
  else
    puts "NO"
  end
end