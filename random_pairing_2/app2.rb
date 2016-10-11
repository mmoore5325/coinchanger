require 'sinatra'
require_relative 'random_pair.rb'
require_relative 'formatter.rb'

 

get '/' do 
	erb :get_count
end

post '/get_number' do

	students = params[:students]

	redirect '/number_of_forms?students=' + students
		
end

get '/number_of_forms' do

	students = params[:students]

	erb :form_create, :locals => {:students => students}
	
end

post '/number_of_forms' do
	
	num_forms = params[:num_forms]
	random = randomizer(num_forms)
	fixed = fix(random)
	erb :post_names, :locals => {:fixed => fix}

end













# 	students = params[:students]
	
# 	erb :form_create

# 	#pass local

# end
# post '/get_count' do
# 	num_students = params[:students]

# end
