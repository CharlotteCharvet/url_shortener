class Url < ApplicationRecord
	validates :longUrl, uniqueness: true
	validates :longUrl, presence:{ message:"nothing inside sorry, i need an url!"}
	validates_format_of :longUrl, :with => URI::regexp(%w(http https)), :message => "Enter a valid url, please!"
end
