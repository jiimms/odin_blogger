class ArticlesController < ApplicationController
	def index
		@articles=Article.all
	end
	
def show
	@article=Article.find(params[:id])
end

def new
	@article=Article.new
end

def create
  @article = Article.new(
    title: params[:article][:title],
    body: params[:article][:body])
  @article.save
  redirect_to article_path(@article)
end

def create
  @article = Article.new(article_params)
  @article.save
  redirect_to article_path(@article)
end

def edit
  @article = Article.find(params[:id])
end

def update
  @article = Article.find(params[:id])
  @article.update(article_params)
  flash.notice = "Article '#{@article.title}' Updated!"
  redirect_to article_path(@article)
end

def destroy
	@article = Article.find(params[:id])
	@article.destroy 
	# if i use delete iso destroy, dependents dont get deleted
	# delete will skip all ActiveRecord-related 
	# callbacks (which includes the dependency management), 
	# whereas destroy will not. 
	redirect_to articles_path
end

private 
def article_params
  params.require(:article).permit(:title, :body)
end


end
