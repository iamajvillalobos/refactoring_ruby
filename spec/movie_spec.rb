require 'spec_helper'

describe Movie do
  describe "#initialize" do
    it "creates a new movie object" do
      title = "Jurrasic Park"
      price_code = 0
      movie = Movie.new(title, price_code)

      expect(movie).to be_an_instance_of(Movie)
    end

    it "assigns the correct attributes" do
      title = "Jurrasic Park"
      price_code = 0
      movie = Movie.new(title, price_code)

      expect(movie.title).to eq "Jurrasic Park"
      expect(movie.price_code).to eq 0
    end
  end
end