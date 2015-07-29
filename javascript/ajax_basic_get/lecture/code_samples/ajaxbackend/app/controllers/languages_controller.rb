class LanguagesController < ApplicationController

  def index
    @languages = Language.all
    render :json => @languages.to_json
  end
end
