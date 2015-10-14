# Tealeaf Calculator

def say(str)
  puts '=> ' + str
end

perform_another = ''

while perform_another != 'no' 
  
 
  2.times {puts ''}
  say "What operation would you like to perform?"
  say "Enter: "
  say "1 for + "
  say "2 for - " 
  say "3 for * "
  say "4 for / "
  
  operation = gets.chomp

  while operation.to_i < 1 || operation.to_i > 4
    say "You must enter 1, 2, 3 or 4"
    operation = gets.chomp
  end

  say "Enter the first number"
  num1 = gets.chomp
  
  say "Enter the second number"
  num2 = gets.chomp

  2.times {puts ''}

  case operation
  when '1'
    answer = num1.to_f + num2.to_f
    say "#{num1} plus #{num2} is #{answer}." 
  when '2'
    answer = num1.to_f - num2.to_f
    say "#{num1} minus #{num2} is #{answer}." 
  when '3'
    answer = num1.to_f * num2.to_f
    say "#{num1} times #{num2} is #{answer}."
  else
    if num2.to_i == 0 then puts "Dividing by 0 is not a valid operation"
      next   
    end
    answer = num1.to_f / num2.to_f
    say "#{num1} divided by #{num2} is #{answer}."  
  end
  
  2.times { puts ''}
  say 'To perform another calculation press enter or type "no" to exit?'
  perform_another = gets.chomp.downcase
end





