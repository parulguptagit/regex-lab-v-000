require 'pry'
def starts_with_a_vowel?(word)
  if !word.scan(/^[aeiouAEIOU]/).empty?
    return TRUE
  else
    return FALSE
  end
    
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.scan(/^[A-Z]|[.?!]$/).size < 2
    return FALSE
  else
    return TRUE
  end
end

def valid_phone_number?(phone)
 # !phone.split('-').join.split('(').join.split(')').join.split(' ').join.scan(/\d{10}/).empty?
 !phone.split(/[( )-]/).join.scan(/\d{10}/).empty?
end
