require 'pry'

class Show < ActiveRecord::Base
    def self.highest_rating
        Show.all.map {|s| s.rating}.max
    end

    def self.most_popular_show
        Show.all.max_by {|s| s.rating}
        # binding.pry
    end

    def self.lowest_rating
        Show.all.map {|s| s.rating}.min
    end

    def self.least_popular_show
        Show.all.min_by {|s| s.rating}
    end

    def self.ratings_sum
        Show.all.map {|s| s.rating}.sum
    end

    def self.popular_shows
        Show.all.select {|s| s.rating > 5}
    end

    def self.shows_by_alphabetical_order
        Show.all.sort_by {|s| s.name}
    end
end