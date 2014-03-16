text = %q{Los Angeles has some of the nicest weather in the country.}
stopwords = %w{by a of on for are with just but and to the my in I has some}

words = text.scan(/\w+/)
keywords = words.select{ |word| !stopwords.include?(word) }

x = ((keywords.length.to_f / words.length.to_f) * 100).to_i


puts keywords.join(' ')
puts "#{x} percent of useful words"