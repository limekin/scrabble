require './lib/scrabble'

describe Scrabble do
  describe ".score" do
    it "scores a single letter" do
      expect( Scrabble.score("a") ).to eq 1
      expect( Scrabble.score("f") ).to eq 4
    end
    
    it "gets a valid score of a word" do
    	expect( Scrabble.score("hello") ).to eq(8)
        expect( Scrabble.score("") ).to eq(0)
	expect( Scrabble.score(nil) ).to eq(0)
    end


  end

  describe ".highest_score_from" do
	  it "gets the highest score" do
		  expect( Scrabble.highest_score_from(['home', 'word', 'hello', 'sound'])).to eq("home")
		  expect( Scrabble.highest_score_from(['hello', 'word', 'sound'])).to eq("word")
		  expect( Scrabble.highest_score_from(['home', 'word', 'silence'])).to eq("silence")
		  expect( Scrabble.highest_score_from(['hi', 'word', 'ward'])).to eq("word")
          end
  end
	  
end
