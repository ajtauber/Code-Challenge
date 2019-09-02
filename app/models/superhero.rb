# == Schema Information
#
# Table name: superheros
#
#  id              :bigint           not null, primary key
#  name            :text
#  secret_identity :text
#  publisher       :text
#  superpowers     :text
#  image           :text
#

class Superhero < ApplicationRecord
end
