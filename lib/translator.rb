# require modules here
require "yaml"
require "pp"

def load_library(path)
  YAML.load_file(path)
end

def get_japanese_emoticon(path, ho)
  # code goes here
  reche = load_library(path)
  reche = reche.map{ |k, v| Hash[v[0], v[1]] }
  
  reche = reche.reduce({}) do |memo, (key, value)|
    memo[key] = value
    memo
  end
  reche[ho]
end

def get_english_meaning
  # code goes here
end

data = load_library("emoticons.yml")
remapped = data.map{ |k, v| Hash[v[0], v[1]] }
pp remapped

puts get_japanese_emoticon("emoticons.yml", "O:)")