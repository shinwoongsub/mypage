class HomeController < ApplicationController
  def index
    
    
    @posts = Post.all
  end
  
  
  def new
     
    
    
    
  end
  
  
  
  def create
    
    lion = Post.new
    lion.title = params[:title]
    lion.contents = params[:contents]
    
    lion.save
    redirect_to '/home/index'
  end
  
  
  def show
    
    # @post = Post.find(params["id"])  아래꺼랑 똑같은거임.
    @post = Post.where(id: params["id"]).first
  
  end
  
  
  def edit
    
    @post = Post.where(id: params["id"]).first
    
  
  end
  
  
  def update
  
    hehe = Post.where(id: params[:id]).first
    hehe.title = params[:title]
    hehe.contents = params[:contents]
    hehe.save
    redirect_to '/show/' + hehe.id.to_s
    
  
  end
  
  
  def destroy
  
    hehe = Post.where(id: params[:id]).first
    hehe.destroy
    redirect_to '/home/index'
  
  
  end
  
end
