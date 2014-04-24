class TagsController < ApplicationController

  def create
    @template = Template.find(params[:template_id])
    @tag = @template.tags.build(tag_params)
    if @tag.save
      flash[:success] = "Tag Saved"
      redirect_to template_path(@template)
    else
      render '/templates/add_tag'
    end
  end

  def mass_update
    @template = Template.find(params[:id])
    @tags = @template.tags
    @tags.each_with_index do |tag, i|
      tag.update_attributes(content: params[:content][i])
    end
    redirect_to template_path(@template)
  end

  private

    def tag_params
      params.require(:tag).permit(:description, :template_id, :content)
    end
end
