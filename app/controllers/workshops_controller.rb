class WorkshopsController < ApplicationController
def new
		 #binding.pry
		@person = RegistrationForm.find_by(name: params[:name], father_or_husband_name: params[:father_or_husband_name])
	end
	def create
		#binding.pry
		@person = RegistrationForm.find(params[:id])
		unless Workshop.find_by(:registration_form_id=> @person.id).present?
		  workshop = Workshop.create(registration_form_id: @person.id, date_of_issue: params[:date_of_issue],no_of_item: params[:no_of_item],actual_cost: params[:actual_cost],total_assistance_amount: params[:total_assistance_amount])
		end
		redirect_to workshops_search_person_path
	end
	def search_person
	end
	def create_xl
       #binding.pry
       from_date= DateTime.parse(params[:from_date])
       to_date= DateTime.parse(params[:to_date])
       #binding.pry
       @workshop= Workshop.where(date_of_issue: from_date .. to_date)
       CSV.open("workshop.xlsx", "wb") do |csv|
          csv << ["S.NO","Order No","Name","Age","Sex","Address & Mobile Number","Income","Aids/Appliances","Date of Issue","No.of Item","Actual Cost","Total Assistance Amount","Category"]
          sno=1
          @workshop.each do |workshop|
            address = workshop.registration_form.name + "," + workshop.registration_form.street + "," + workshop.registration_form.taluk + "," + workshop.registration_form.district + "," + workshop.registration_form.state + "," + workshop.registration_form.pincode.to_s + "," + (workshop.registration_form.mobile_no.to_s)
  
            csv << [sno,workshop.registration_form.registration_no,workshop.registration_form.name,workshop.registration_form.age,workshop.registration_form.sex,address,workshop.registration_form.monthly_income,workshop.registration_form.aids_or_appliances,workshop.date_of_issue,workshop.no_of_item,workshop.actual_cost,workshop.total_assistance_amount,workshop.registration_form.caste]
            sno += 1
          end
      end
      redirect_to workshops_search_person_path
end


	def generate_xl_sheet
		
    end
  def add_person
  	binding.pry
  	@person = RegistrationForm.find(name: params[:name], father_or_husband_name: params[:father_or_husband_name])
     if @person.present?
     	redirect_to new_workshop_path(@person.id)
     else
     	redirect_to workshop_search_person_path
     end
  end

end
