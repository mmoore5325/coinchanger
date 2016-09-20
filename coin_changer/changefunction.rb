def coin_changer(cents)
	coins = {}
	
		# if cents_received >= 10
		# 	coins[:dime] = cents_received / 10
		# 	cents_received = cents_received % 10
		# end

	if cents >= 5
		coins[:nickle] = cents / 5
		cents = cents % 5
	end 
	
	if cents >= 1
		coins[:penny] = cents
	end
		coins
	end


# 	if cents >= 5
# 		coins[:nickel] = cents / 5
# 		cents = cents % 5
# 	end

# 	if cents >= 1
# 		coins[:penny] = cents / 1 
# 		cents = cents % 1     
# 	end
# 	coins
# end

