def reformat_languages(languages)
  languages.reduce(Hash.new { |hash, key| hash[key] = {}} ) do |memo, (type, languages)|
    languages.each do |lang, info|
      memo[lang].merge!(info)
      memo[lang][:style] ||= []
      memo[lang][:style].push(type)
    end
    memo
  end
end
