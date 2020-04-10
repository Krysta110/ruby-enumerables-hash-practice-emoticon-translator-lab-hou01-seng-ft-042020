# require modules here
require "yaml"
require 'pry'
# emoticons = {}
# english = "english"
# japanese = "japanese"
#
def load_library(file_path)
  # code goes here
  emoticons = {}
#  emoticons_loaded = YAML.load_library('lib/emoticons.yml')
  emoticons_loaded = YAML.load_file(file_path)
#  binding.pry

  emoticons_loaded.each do |english_key, value_array| #looping thru the main hash
#   binding.pry
    emoticons[english_key.to_s] = {
        :english => value_array[0],
        :japanese => value_array[1]
        }

    end
   binding.pry
return emoticons
end

  #   count = 0
  #   # binding.pry
  #   while count < symbols_value.length
  # #      binding.pry
  #       if count == 0
  #        binding.pry
  #         emoticons[english_key][english] << symbols_value[0]
  #         binding.pry
  #       elsif count == 1
  #   #      binding.pry
  #         emoticons[english_key]["japanese"] = symbols_value[1]
  #       end
  #     count +=1
  #     binding.pry
  #   end
  # end


  # # Write a method that loads the emoticons.yml file.
  # def load_library(path)
  #   #set a hash with get_meaning, get_emoticon as keys, empty hash for value
  #   emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  #   #load the YAML file. It has meaning(angel, angry,..) as key and the symbol as value(describe)
  #   YAML.load_file(path).each do |meaning, describe|
  #      #set eng, jan from describe, so eng would be the first value, jan the second
  #      eng, jan = describe
  #      emoticons["get_meaning"][jan] = meaning
  #      emoticons["get_emoticon"][eng] = jan
  #   end
  #   emoticons
  #
  #   binding.pry
  # end



def get_japanese_emoticon( english_meaning)
  # code goes here
   load_libray('.lib/emoticons.yml')
end

def get_english_meaning(japanese_emoticon)
  # code goes here
end
