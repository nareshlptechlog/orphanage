class PrintPreviewController < ApplicationController
	
	def registration_card_print
		@person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_registration_card_print_path unless @person.present?
	end

	def income_certificate_print
        @person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_income_certificate_print_path unless @person.present?

	end

	def community_certificate_print
        @person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_community_certificate_print_path unless @person.present?
	    render :layout => false
	end

	def disability_certificate_print
		@person = RegistrationForm.where(name: params[:name],father_or_husband_name: params[:father_or_husband_name]).first
	    prints_disability_certificate_print_path unless @person.present?
	end
end
 # f = File.new("statements.xml", 'w')
 # f << Account.find(1).statements.to_xml
 # f.close 