class LanguagesController < ApplicationController

  def main
    
  end

  def index
    @languages = Language.all
    render :json => @languages.to_json
  end

  def destroy
    @language = Language.find(params["id"])
    @language.destroy
    render :json => "cool!".to_json
  end
end
