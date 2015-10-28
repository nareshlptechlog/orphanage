class RegistrationsController < ApplicationController
	def new
	end
	def create
		binding.pry
	registration_form = Person.create(
			camp_at: params[:camp_at],
			camp_on_date: DateTime.parse(params[:camp_on_date].first),
			registration_no: params[:registration_no],
			registration_date: DateTime.parse(params[:registration_date].first),
			name: params[:name],
			date_of_birth: DateTime.parse(params[:date_of_birth].first),
			age: params[:age],
			sex: params[:sex],
			father_or_husband_name: params[:foh_name],
			street: params[:street],
			town_or_village_or_city: params[:town],
			taluk: params[:taluk],
			district: params[:district],
			state: params[:state],
			pincode: params[:pincode],
			mobile_no: params[:mobile_no],
			diagnosis: params[:diagnosis],
			advise_or_prescription: params[:advise],
			reffered_to: params[:reffered_to],
			annual_income: params[:annual_income],
			caste: params[:caste],
			occupation: params[:occupation],
			disability_nature: params[:disability_nature],
			disability_percentage: params[:disability_percentage],
			identification_mark: params[:identification_mark]
			
			# for_excel_no_of_items: params[:no_of_items_for_excel],
			# for_excel_date_of_issue: params[:date_of_issue_for_excel],
			# for_excel_actual_cost: params[:anual_cost_for_excel],
			# for_excel_total_assistance_cost: params[:assistance_cost_for_excel]
		)

		flash[:notice] = "Registration Created Successfully"
		redirect_to root_path
	end

end
