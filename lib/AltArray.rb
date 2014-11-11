class AltArray < Array

	def enum_inject(value = self[0])
		self.each do |element|
			value = yield value, element
		end
		value
	end

	def recu_inject(value = self[0])
		for index in 0..(self.count-1) do
			value = yield value, self[index]
		end
		value
	end
end
