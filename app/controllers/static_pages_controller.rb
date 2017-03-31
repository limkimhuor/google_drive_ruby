class StaticPagesController < ApplicationController
  def home
    binding.pry
    render json: {list_files: $drive.list_files}
  end

  def set_google_drive_token
    if request["code"] == nil
      redirect_to $drive.authorization_url
    else
      $drive.save_credentials request["code"]
      redirect_to "/"
    end
  end
end
