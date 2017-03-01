def minimize_coin_change(amount)

	change = {}
	coins = {:quarter => 25, :dime => 10, :nickel => 5, :penny => 1}

	coins.each do |coin, value|
		if amount >= value
			change[coin] = amount / value
			amount = amount % value
		end
	end

	return change
end

=begin

A pattern is something that occurs 2 or 3 times before it is recognized as repeating.

Observations of patterns:

Pennies never get higher than a total of 4 before going to 0 again.

How do I fold code for calculating pennies into a simpler series of statements?

I think having a hash scoped to the function will enable the insertion of pennies as a key independently of other keys aka nickels, dimes, quarters.

I think I tried to jump too far ahead.  Return the hash at the end of the function.

I should have a separate condition for just pennies.

I must reduce amount by higher value coins before determining pennies.

How do I reduce the amount by the high value coins?

I need to know the value of the higher value coins.  Another hash is useful.

I am properly reducing the amount after inserting higher value coins.  The proper amount of pennies is being determined.

We can assume proper deduction of higher value coins before calculating pennies.  Only insert pennies if amount > 0.

Let's focus on nickels and patterns.

Nickels will never be more than 1.

Keeping track of the number of coins for change in reducing the amount of change is very helpful.  I can apply this idea throughout the code.

Test independently for just nickels and insert accordingly.

Amount should be greater than or equal to coin value.

Focus on dimes now.

I should be looking for patterns in the test expression with amount == or < or >.

Also, I must now calculate dimes independently.

Quarters condition blocks have patterns >= 25 or coins[:quarter]

Conditional blocks follow a pattern, but there is an error with 2 dimes.

How do I handle more than one number of a coin type?

Dimes are never more than 2.

More problems with quarter number more than 1.  Use similar pattern used for dimes.

I can make all of the conditional blocks uniform.  For example, calculate all statements the same way.

Quarters will never be greater than a number of 3.

How do I create 1 code block out of 4?

Loop on coins hash.

% or modulus is the most natural way to find a remainder!

We are done!

=end