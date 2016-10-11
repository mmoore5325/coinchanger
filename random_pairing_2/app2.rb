require 'sinatra'

 

get '/' do 
	erb :get_count
end

post '/get_number' do

	students = params[:students]

	redirect '/number?students=' + students
		
end

get '/number' do

	students = params[:students]

	erb :form_create, :locals => {:students => students}
	
end

post '/number' do
	students = params[:students]
	num_students = params[:num_students]

end










# 	students = params[:students]
	
# 	erb :form_create

# 	#pass local

# end
# post '/get_count' do
# 	num_students = params[:students]

# end
