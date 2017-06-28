require 'pry'

class Song
	attr_accessor :name, :artist, :genre

	@@count = 0

	@@genres = []

	@@artists = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1
		@@genres << genre
		@@artists << artist
	end

	def self.genres
		@@genres.uniq
	end

	def self.artists
		@@artists.uniq
	end

	def self.count
		@@count
	end

	def self.genre_count
		final = {}
		@@genres.each do |genre|
			if !final[genre]
				final[genre] = 1
			else
				final[genre] +=1
			end
		end
		final
	end	

	def self.artist_count
		final = {}
		@@artists.each do |artist|
			if !final[artist]
				final[artist] = 1
			else
				final[artist] +=1
			end
		end
		final
	end

end

# the_world_is_yours = Song.new("The World is Yours", "Nas", "Rap")
# hip_hop_hooray = Song.new("Hip Hop Hooray", "Naughty By Nature", "Rap")
# ignition_remix = Song.new("Ignition(Remix)", "R. Kelly", "R&B")
# memory_lane = Song.new("Memory Lane", "Nas", "Rap")

# binding.pry