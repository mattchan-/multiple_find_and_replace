class TemplatesController < ApplicationController
  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)
    if @template.save
      flash[:success] = "Template Saved"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @templates = Template.all
  end

  def show
    @template = Template.find(params[:id])
    @tags = @template.tags
    @tag = @template.tags.build
  end

  private
    def template_params
      params.require(:template).permit(:name, :content, tag_attributes: [:description, :template_id, :content])
    end
end
