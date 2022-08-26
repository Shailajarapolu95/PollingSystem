class PollsController < ApplicationController
  def index
    @poll = Poll.all
  end

  def create
    @poll = Poll.create(poll_params)
    redirect_to polls_path
  end

  def new
    @poll = Poll.new
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def update
    @poll = Poll.find(params[:id])
    @poll.update(poll_params)
    redirect_to polls_path
  end

  def edit
    @poll = Poll.find(params[:id])
  end
  def destroy
    @poll = Poll.find(params[:id])
    @poll.destroy
    redirect_to polls_path
  end

  private
  def poll_params
    params.require(:poll).permit(:vote)
  end
end
