class Api::V1::CommentsController < ApplicationController
  include Swagger::Blocks

  swagger_path '/comments/{id}' do
    operation :get do
      key :description, 'Find a comment by ID'
      key :operationID, :find_user_by_id

      parametr name: :id do
        key :in, :path
        key :description, 'Comment ID'
        key :required, true
        key :type, :integer
        key :format, :int64
      end

      response 200 do
        key :description, 'Comment'
        schema do
          key :required, [:id, :body]
          property :id do
            key :type, :integer
            key :format, :int64
          end
          property :body do
            key :type, :string
          end
        end
      end

    end

  end

  before_action :set_comment, only: [:show]

  # def index
  #   comments = Comment.all
  #   render json: { status: 'SUCCESS', message: 'Loaded comments', data: comments }
  # end

  def show
    render 'show', formats: 'json', handlers: 'jbuilder'
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

  # def comment_params
  #   params.require(:comment).permit(:body)
  # end
end
