class PollsController < ApplicationController

  def index
    @poll = Poll.new
  end

  def new
  end
  
  def create
    @poll = Poll.new(params[:poll])
    if @poll.save
      respond_to do |format|
        format.html {redirect_to :root}
        format.js   {render 'create'}
      end
    else
      flash[:error] = "Failed to create a new poll. Check your info!"
      redirect_to :root
    end
  end

  def show
    @poll = Poll.find_by_id(params[:id])
  end

  def edit
    @poll = Poll.find_by_id(params[:id])
  end

  def update
    @poll = Poll.find_by_id(params[:id])
    if @poll.update_attributes(params[:poll])
      flash[:success] = "Update successful!"
      redirect_to :root
    else
      flash[:error] = "You fucked up!"
    end
  end

  private
  def find_id
    @poll = Poll.find_by_id(params[:id])
  end

  def rand_url
    SecureRandom.urlsafe_base64(8)
  end
end
