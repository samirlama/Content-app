class Api::V1::ContentsController < ApplicationController
  before_action :set_content, only: [:update, :destroy]

  def create
    content = @current_user.contents.new(content_params)
    if content.save
      json_string = ContentSerializer.new(content).serialized_json
      render json: json_string, status: :created
    else
      render json: content.errors, status: :unprocessable_entity
    end
  end

  def update
    if @content.update(content_params)
      json_string = ContentSerializer.new(@content).serialized_json
      render json: json_string, status: :ok
    else
      render json: @content.errors, status: :unprocessable_entity
    end
  end

  def index
    json_string = ContentSerializer.new(Content.all).serialized_json
    render json: json_string, status: :ok
  end

  def destroy
    @content.destroy
    render json: { message: 'Content deleted!' }, status: :ok
  end

  private

  def content_params
    params.permit(:title, :body)
  end

  def set_content
    begin
      @content = @current_user.contents.find(params[:id])
    rescue ActiveRecord::RecordNotFound
       render json: "Content not found", status: 404
    end
  end
end
