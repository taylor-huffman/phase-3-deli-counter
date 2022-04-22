katz_deli = []

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else
        current_line = ["The line is currently:"]
        katz_deli.each_with_index do |person, index|
            people_in_line = "#{index + 1}. #{person}"
            current_line.push(people_in_line)
        end
        puts current_line.join(" ")
    end
end


def take_a_number(katz_deli, name)
    katz_deli.push(name)
    puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end


def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        current_customer = katz_deli.shift
        puts "Currently serving #{current_customer}."
    end
end