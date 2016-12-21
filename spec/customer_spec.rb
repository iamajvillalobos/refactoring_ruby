require 'spec_helper'

describe Customer do
  describe "#initialize" do
    it "creates a new customer object" do
      name = "Jay Sanchez"
      customer = Customer.new(name)

      expect(customer).to be_an_instance_of(Customer)
    end

    it "assigns the correct attributes" do
      name = "Jay Sanchez"
      customer = Customer.new(name)

      expect(customer.name).to eq "Jay Sanchez"
    end
  end

  describe "#add_rental" do
    it "assigns rental records to customer" do
      movie1 = Movie.new("movie1", 0)
      movie2 = Movie.new("movie2", 1)
      rental1 = Rental.new(movie1, 3)
      rental2 = Rental.new(movie2, 5)
      customer = Customer.new("Jay Sanchez")

      customer.add_rental(rental1)
      customer.add_rental(rental2)

      expect(customer.rentals).to include(rental1, rental2)      
    end
  end

  describe "#statement" do
    it "outputs the correct result string" do
      customer = Customer.new("Jay Sanchez")
      movie1 = Movie.new("movie1", 0)
      movie2 = Movie.new("movie2", 1)
      rental1 = Rental.new(movie1, 3)
      rental2 = Rental.new(movie2, 5)
      result = "Rental record for Jay Sanchez\n\tmovie1\t3.5\n\tmovie2\t15\n"
      result += "Amount owed is 18.5\nYou earned 3 frequent renter points"

      customer.add_rental(rental1)
      customer.add_rental(rental2)

      expect(customer.statement).to eq result
    end
  end

  describe "#html_statement" do
    it "outputs the correct result html string" do
      customer = Customer.new("Jay Sanchez")
      movie1 = Movie.new("movie1", 0)
      movie2 = Movie.new("movie2", 1)
      rental1 = Rental.new(movie1, 3)
      rental2 = Rental.new(movie2, 5)
      result = "<h1>Rentals for <em>Jay Sanchez</em></h1><p>\n\tmovie1: "
      result += "3.5<br>\n\tmovie2: 15<br>\n<p>You owe <em>18.5</em><p>\nOn" 
      result += " this rental you earned <em>3</em> frequent renter points<p>"

      customer.add_rental(rental1)
      customer.add_rental(rental2)

      expect(customer.html_statement).to eq result
    end
  end
end




