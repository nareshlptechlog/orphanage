class WorkshopController < ApplicationController
  def new
		binding.pry
		@person = Person.find(name: params[:name], father_or_husband_name: params[:father_or_husband_name])
	end
	def create
		@person = Person.find(params[:person_id])
		workshop = @person.workshops.create()
		redirect_to workshop_search_person_path
	end
	def search_person
	end
	
# 	def index
# 		@post = Post.find(params[:post_id])
# 		@comments = @post.comments
# 	end

# 	def destroy
# 		@post = Post.find(params[:post_id])
#         @post.comments.find(params[:id]).destroy
#         redirect_to post_comments_path
# 	end

# 	private
#   def comment_params
#   	params.require(:comment).permit(:content,:post_id)
#   end

# end
  def search_person
     
  end

end
