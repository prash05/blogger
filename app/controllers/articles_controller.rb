class ArticlesController < ApplicationController
    include ArticlesHelper
    def new
        @article = Article.new
    end
    def index
        @articles = Article.all
    end
    def show
        @article = Article.find(params[:id])

    end
    def create
        @article = Article.new(params[:article])
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
      
      

end
