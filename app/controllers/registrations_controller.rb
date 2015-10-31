class RegistrationsController < ApplicationController
	def new
	end
	def create
		#binding.pry
	registration_form = RegistrationForm.create(
			camp_at: params[:camp_at],
			camp_on_date: DateTime.parse(params[:camp_on_date].first),
			registration_no: params[:registration_no],
			registration_date: DateTime.parse(params[:registration_date].first),
			name: params[:name],
			date_of_birth: DateTime.parse(params[:date_of_birth].first),
			age: params[:age],
			sex: params[:sex],
			father_or_husband_name: params[:foh_name],
			hno: params[:hno],
			street: params[:street],
			town_or_village_or_city: params[:town],
			taluk: params[:taluk],
			district: params[:district],
			state: params[:state],
			pincode: params[:pincode],
			mobile_no: params[:mobile_no],
			diagnosis: params[:diagnosis],
			advise_or_prescription: params[:advise],
			referred_to: params[:referred_to],
			monthly_income: params[:monthly_income],
			caste: params[:caste],
			occupation: params[:occupation],
			disability_nature: params[:disability_nature],
			disability_percentage: params[:disability_percentage],
			identification_mark: params[:identification_mark],
			aids_or_appliances: params[:aids_or_appliances]
			
		)

		flash[:notice] = "Registration Created Successfully"
		redirect_to root_path
	end

end
