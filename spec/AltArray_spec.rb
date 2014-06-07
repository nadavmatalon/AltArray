require "./lib/AltArray.rb"

describe AltArray do 

	let(:empty_array) {AltArray.new}
	let(:num_array) {AltArray.new(4){|i| (i+1)}}
	let(:sym_array) {AltArray.new << :a << :b << :c << :d}
	let(:let_array) {AltArray.new << "a" << "b" << "c" << "d"}

	it "is initialized as an ordinary empty array" do
		expect(empty_array).to eq []
	end

	context "enum_inject & recu_inject methods" do

		it "can be used with a block" do
			expect(empty_array.inject{}).to eq nil
			expect(empty_array.enum_inject{}).to eq nil
			expect(empty_array.recu_inject{}).to eq nil
		end

		it "can be used without a block" do
			expect(empty_array.inject).to eq nil
			expect(empty_array.enum_inject).to eq nil
			expect(empty_array.recu_inject).to eq nil
		end

		it "can be used with an argument" do
			expect(empty_array.inject(5){}).to eq 5
			expect(empty_array.enum_inject(5){}).to eq 5
			expect(empty_array.recu_inject(5){}).to eq 5
		end
	
		it "can be used without an argument" do
			expect(empty_array.inject).to eq nil
			expect(empty_array.enum_inject).to eq nil
			expect(empty_array.recu_inject).to eq nil
		end

		it "can sum up an array of numbers" do
			expect(num_array.inject (0) {|result, element| result + element}).to eq 10
			expect(num_array.enum_inject (0) {|result, element| result + element}).to eq 10
			expect(num_array.recu_inject(0) {|result, element| result + element}).to eq 10
		end

		it "can sum up an array of numbers with added initial value" do
			expect(num_array.inject (10) {|result, element| result + element}).to eq 20
			expect(num_array.enum_inject (10) {|result, element| result + element}).to eq 20
			expect(num_array.recu_inject(10) {|result, element| result + element}).to eq 20
		end

		it "can substract an array of numbers" do
			expect(num_array.inject (1) {|result, element| result - element}).to eq -9
			expect(num_array.enum_inject (1) {|result, element| result - element}).to eq -9
			expect(num_array.recu_inject(1) {|result, element| result - element}).to eq -9
		end

		it "can multiply an array of numbers" do
			expect(num_array.inject (1) {|result, element| result * element}).to eq 24
			expect(num_array.enum_inject (1) {|result, element| result * element}).to eq 24
			expect(num_array.recu_inject(1) {|result, element| result * element}).to eq 24
		end

		it "can create a hash from an array of symbols" do
			result = {a: "a", b: "b", c: "c", d: "d"}
			expect(sym_array.inject ({}) {|val, ele| val[ele] = ele.to_s; val}).to eq result
			expect(sym_array.enum_inject ({}) {|val, ele| val[ele] = ele.to_s; val}).to eq result
			expect(sym_array.recu_inject({}) {|val, ele| val[ele] = ele.to_s; val}).to eq result
		end

		it "can create a hash from an array of letters" do
			result = {"a"=>"a", "b"=>"b", "c"=>"c", "d"=>"d"}
			expect(let_array.inject ({}) {|val, ele| val[ele.to_s] = ele; val}).to eq result
			expect(let_array.enum_inject ({}) {|val, ele| val[ele.to_s] = ele; val}).to eq result
			expect(let_array.recu_inject({}) {|val, ele| val[ele.to_s] = ele; val}).to eq result
		end
	end
end

