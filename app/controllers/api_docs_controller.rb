class ApiDocsController < ApplicationController
  include Swagger::Blocks

  swagger_root do
    # API 名やバージョンなどのメタ情報を定義
  end

  def index
    render json: Swagger::Blocks.build_root_json([User, UsersController])
  end
end