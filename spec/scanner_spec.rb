require 'spec_helper'
require 'moliere/core/scanner'

describe Scanner do
	
	before(:all) do
		code = <<-CODE
			classe Personne
	
				déf initialise(nom="John Doe", age=0)
					@nom = nom
					@age = age
				fin

				déf age
					retourne @age
				fin

				déf change_l'age_a(nouveau_age)
					@age = nouveau_age
				fin

				déf vieux?
					retourne @age >= 65
				fin

				déf prochaine_age
					retourne @age++
				fin

				déf innomé?
					retourne @nom == "John Doe"
				fin
			fin


		CODE

		scanner = Scanner.new
		scanner.scan_setup(code)
		@output = []

		while token = scanner.next_token
			@output << token
		end

	end

	subject { @output }

	it "should detect numbers" do
		subject.should include([:NUMBER, 0])
	end

	it "should detect strings" do
		subject.should include([:STRING, "\"John Doe\""])
	end
	
	it "should detect keywords" do
		subject.should include([:CLASSE, "classe"])
	end

	it "should detect constants" do
		subject.should include([:CONSTANT, "Personne"])
	end

	it "should detect identifiers" do
		subject.should include([:IDENTIFIER, "initialise"])
	end

	it "should detect accented identifiers" do
		subject.should include([:IDENTIFIER, "innomé?"])
	end

	it "should detect open parenthesis" do
		subject.should include([:OPEN_PAREN])
	end

	it "should detect close parenthesis" do
		subject.should include([:CLOSE_PAREN])
	end

	it "should detect commas" do
		subject.should include([:COMMA])
	end

	it "should detect long operators" do
		subject.should include([">=", ">="])
	end

	it "should detect tokens" do
		subject.should include(["+", "+"])
	end

end
