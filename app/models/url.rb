require 'URI'
require 'securerandom'

class Url < ApplicationRecord
	validates :long_url, uniqueness: true
	validates :long_url, presence:{ message:"nothing inside sorry, i need an url!"}
	validates_format_of :long_url, :with => URI::regexp(%w(http https)), :message => "Enter a valid url, please!"

	def shorten

		self.short_url = SecureRandom.hex(3)
	end


end
