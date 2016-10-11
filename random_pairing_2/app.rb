require 'sinatra'

 

get '/' do 
	erb :get_count
end

post '/get_number' do

	students = params[:students]

	erb :form_create, locals =>{:students => students}

end
# post '/get_count' do
# 	num_students = params[:students]

# end
