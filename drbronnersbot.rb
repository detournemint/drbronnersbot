require 'twitter'
load 'client.rb'
def pick_random_line
  chosen_line = nil
  File.foreach("label.txt").each_with_index do |line, number|
    chosen_line = line if rand < 1.0/(number+1)
  end
  return chosen_line.scan(/.{1,140}/)
end


client = client_maker

tweet = pick_random_line.join
client.update(tweet)
