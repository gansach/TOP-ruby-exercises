def caesar_cipher(text, key)
    key = key % ('z'.ord - 'a'.ord)
    cipher_text = ''

    0.upto(text.length - 1) do |pos|
        if is_alpha(text[pos])
            cipher_text += shift(text[pos], key)
        else
            cipher_text += text[pos]
        end
    end
    puts cipher_text
end

def is_alpha(ch)
    ('a' <= ch and ch <= 'z') || ('A' <= ch && ch <= 'Z')
end

def shift(ch, key)
    shifted = (ch.ord + key).chr
    if is_lower?(ch) && shifted > 'z'
        shifted = ('a'.ord + (shifted.ord - 'z'.ord) - 1).chr
    elsif !is_lower?(ch) && shifted > 'Z'
        shifted = ('A'.ord + (shifted.ord - 'Z'.ord) - 1).chr
    end
    return shifted
end

def is_lower?(ch)
    ch == ch.downcase
end

# Test Cases
caesar_cipher("What a string!", 5)
caesar_cipher("ABC", 132)
caesar_cipher("XYZ", 10)
caesar_cipher("X   Y    Z", 77)
caesar_cipher("X&(&$^Y{{}}!Z", 18)