require 'twitter'
require 'marky_markov'
load 'client.rb'

# def pick_random_line
#   chosen_line = nil
#   File.foreach("label.txt").each_with_index do |line, number|
#     chosen_line = line if rand < 1.0/(number+1)
#   end
#   return chosen_line.scan(/.{1,140}/)
# end

def drbronners
  tweet = ""
	markov = MarkyMarkov::Dictionary.new('dictionary')
  markov.parse_file "label.txt"
  tweet = markov.generate_n_words 15
  markov.save_dictionary!
  client = client_maker
  client.update(tweet)
end


drbronners