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


def get_japanese_emoticon(file_path, english_emoticon)
  # code goes here
  japanese_emoticon = "Sorry, that emoticon is not found."
  emoticons =  load_library(file_path)
  binding.pry
  emoticons.each do |key, value|
    if key[:english] == english_emoticon
      japanese_emoticon = emoticons[key][:japanese]
    end
  end
return japanese_empticon

end

def get_english_meaning(japanese_emoticon)
  # code goes here
end
