class Scrabble
  def self.score(word)

	  return 0 if word.nil? or word.empty?
	  word.chars.reduce(0) { |acc, letter| acc + letterScore(letter) }

  end

  def self.highest_score_from(words)

	  maxScore = words.map { |word| score(word) }.max
	  highScoreWords = words.select { |word| score(word) == maxScore }
	  ret = highScoreWords.detect { |word| bonus?(word) }
	  ret = highScoreWords.sort_by { |word| word.length }[0] unless ret
	  ret

  end
  

  def self.bonus?(word)
	  word.length == 7
  end



  def self.letterScore(letter)

	  letter.upcase!
	  scores = {"AEIOULNRST" => 1, "DG" => 2, "BCMP" => 3, "FHVWY" =>4, "K" => 5, "JX" => 8, "QZ" => 10}
	  scores[ scores.keys.detect { |letters| letters.include? letter } ]
	
  end

end
