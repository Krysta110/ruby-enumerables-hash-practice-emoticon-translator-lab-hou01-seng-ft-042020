# require modules here
require "yaml"
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = {}
  emoticons_loaded = YAML.load_file(file_path)

  emoticons_loaded.each do |english_key, value_array| #looping thru the main hash
#   binding.pry
    emoticons[english_key.to_s] = {
        :english => value_array[0],
        :japanese => value_array[1]
        }
    end
return emoticons
end


def get_japanese_emoticon(english_meaning)
  # code goes here
  japanese_emoticon = " "
  emoticons =  load_libray('.lib/emoticons.yml')
  emoticons.each do |key, value|
    if key == english_meaning
      japanese_emoticon = emoticons[key][:japanese]


end

def get_english_meaning(japanese_emoticon)
  # code goes here
end
