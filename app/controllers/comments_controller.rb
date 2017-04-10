class CommentsController < ApplicationController
	def create
		@article=Article.find(params[:article_id])
		@comment=@article.comments.create(comment_params)
		if @comment.save
		flash.notice = "Updated!"
	else
		flash.notice = "not Updated!"
	end
		redirect_to article_path(@article)
	end

	def edit
		byebug
		@article=Article.find(params[:article_id])
		@comment=@article.comments.find(params[:id])
	end

	def update
		@article=Article.find(params[:article_id])
		@comment=@article.comments.find(params[:id])
		@comment.update(comment_params)
		redirect_to article_path(@article)
	end

	private

		def comment_params
			params.require(:comment).permit(:author_name, :body)
		end
end
