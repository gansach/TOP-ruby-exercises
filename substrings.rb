def substrings(text, dictionary)
    newText = text.split(" ")
    newText.map! {|word| word.downcase.split("")}
    newDict = dictionary.map {|word| word.split("")}
    wordCount = newDict.reduce(Hash.new(0)) do |wordCount, word|
        newText.each do |string|
            if string & word == word
                wordCount[word.join] += 1
            end
        end
        wordCount
    end
    p wordCount
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)