#write your code here
def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(array)
  array.inject(0, :+)
end

def multiply(*x)
	total = 1
	x.inject(:*)
end

def power(x,y)
	total = 1
	while y > 0
	  total = total * x
	  y = y -1
	end
	return total
end

def factorial(x)
	total = 1
	while x > 0
		total = total * x
		x = x - 1
	end
	total
end
