class PagesController < ApplicationController

  def about

  end


  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    if params[:memberrr]
      @members = @members.select { |member| member.starts_with?(params[:memberrr]) }
    end
  end

  def home
    @colors = ["blue", "red", "orange"]
  end
end
