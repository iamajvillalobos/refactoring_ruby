require 'spec_helper'

describe Rental do
  describe "#initialize" do
    it "creates a new rental object" do
      movie = Movie.new("Jurassic Park", 0)
      days_rented = 5
      rental = Rental.new(movie, days_rented)

      expect(rental).to be_an_instance_of(Rental)
    end

    it "assigns the correct attributes" do
      movie = Movie.new("Jurassic Park", 0)
      days_rented = 5
      rental = Rental.new(movie, days_rented)

      expect(rental.movie.title).to eq "Jurassic Park"
      expect(rental.days_rented).to eq 5
    end
  end
end