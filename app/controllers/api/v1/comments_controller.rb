class Api::V1::CommentsController < ApplicationController
  protect_from_forgery
  before_action :set_comment, only: [:show, :update, :destroy]

  # def index
  #   comments = Comment.all
  #   render json: { status: 'SUCCESS', message: 'Loaded comments', data: comments }
  # end

  def show
    render json: { status: 'SUCCESS', message: 'Loaded the comment', data: @comment }
  end

  # def create
  #   comment = Comment.new(comment_params)
  #   if comment.save
  #     render json: { status: 'SUCCESS', data: comment }
  #   else
  #     render json: { status: 'ERROR', data: comment.errors }
  #   end
  # end
  #
  # def destroy
  #   @comment.destroy
  #   render json: { status: 'SUCCESS', message: 'Deleted the comment', data: @comment }
  # end
  #
  # def update
  #   if @comment.update(comment_params)
  #     render json: { status: 'SUCCESS', message: 'Updated the comment', data: @comment }
  #   else
  #     render json: { status: 'ERROR', message: 'Not updated', data: @comment.errors }
  #   end
  # end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
