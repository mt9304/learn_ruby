#write your code here
def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(a)
	s = 0

	a.each do |temp|
		s += temp
	end

	s
end

def multiply(a)
	m = 1

	a.each do |temp|
		m *= temp
	end

	m
end

def power(a, b)
	a ** b
end

def factorial(a)
	f = 1

	for i in 1..a
		f *= i
	end

	f
end