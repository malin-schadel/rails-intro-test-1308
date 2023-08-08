class PagesController < ApplicationController
  def about
  end

  def home
  end

  def contact
    @staff = %w[flor malin karl james]
    if params['member']
      @staff.select! { |member| member.start_with?(params[:member].downcase) }
    end
  end
end
