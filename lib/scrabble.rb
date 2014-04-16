class Scrabble
  def self.score(word)

	  ret = 0
	  return ret if word.nil? or word.empty?

	  word.each_char do |letter|
		  ret += letterScore(letter)
          end
	  ret

  end

  def self.highest_score_from(words)

	  ret = ""
	  maxScore = 0
	  words.each do |word|
		  wordScore = score(word)
		  if maxScore < wordScore 
			  maxScore = wordScore
			  ret = word
		  elsif maxScore == wordScore
			  if bonus?(word) and not bonus?(ret)
				  ret = word
			  elsif word.length < ret.length
				  ret = word
		          end
		  end

   	  end
	  ret
  	  
	  


  end
  

  def self.bonus?(word)

	  word.length == 7
  end



  def self.letterScore(letter)

	  ret = -1
	  letter = letter.upcase
	  ret = 1 if %w( A E I O U L N R S T ).include? letter
	  ret = 2 if %w( D G).include? letter
	  ret = 3 if %w( B C M P  ).include? letter
	  ret = 4 if %w( F H V W Y  ).include? letter
	  ret = 5 if %w( K  ).include? letter
	  ret = 6 if %w( J X  ).include? letter
	  ret = 7  if %w( Q Z ).include? letter
	  ret

  end

end
