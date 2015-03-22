def add (a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum (arr)

	sum = 0
	idx = 0

	while idx < arr.length
		sum += arr[idx]
		idx += 1
	end

	return sum
end

def multiply(arr)

	product = 1
	idx = 0

	while idx < arr.length
		product = product * arr[idx]
		idx += 1
	end

	return product
end

def power(a, b)

	power = 1
	arr = []
	idx = 0

	while idx < b
		arr.push(b)
		idx += 1
	end

	while idx > 0
		power = power * a
		idx -= 1
	end

	return power
end

def factorial(n)

	total = 1

	while n > 0
		total = total * n
		n -= 1
	end

	return total
end