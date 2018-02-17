require 'rspec'
require 'benchmark'


arr = Array.new(10000000){ rand 1000 } 


def new_max array_of_elements
	max_element = 0
	array_of_elements.each do |e|
		if e > max_element
			max_element = e
		end
	end
	max_element
end



#Creating the banch marking......

Benchmark.bmbm(10) do |x|
	x.report('new_max: '){ new_max arr }
	x.report('Sorted: '){ arr.sort.max }
	x.report('Max: '){ arr.max }
end



#Write the test case
describe "New max method" do
	it 'Return the largest element in a given array' do
		test = [1,2,4,6,36,3]
		expect(new_max(test)).to_eq(36)
	end
end

