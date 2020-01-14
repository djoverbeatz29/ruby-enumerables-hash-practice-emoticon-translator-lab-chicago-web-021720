# require modules here
require "yaml"
require "pp"

def load_library(path)
  YAML.load_file(path)
end

def get_japanese_emoticon(path, ho)
  # code goes here
  reche = load_library(path)
  reche = reche.map{ |k, v| Hash[v[0], v[1]] }.inject(:merge)
  reche[ho]
end

def get_english_meaning(path, ho)
  # code goes here
  reche = load_library(path)
  reche = reche.map{ |k, v| Hash[v[1], v[0]] }.inject(:merge)
  reche[ho]
  # code goes here
end

puts get_japanese_emoticon("emoticons.yml", "O:)")