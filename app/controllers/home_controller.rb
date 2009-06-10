class HomeController < ApplicationController
  
  def create
    caret = ( params['caret'].blank? ? nil : params['caret'] )
    
    @rubyxp = Rubyxp.new(
      :string_comparison => params['string_comparison'], 
      :regexp => params['regexp'],
      :caret => caret,
      :replacement => params['replacement']
    )
    respond_to do |format|
      format.js
    end
    
  rescue Exception
    render :update do |page|
      page[:match_data].innerHTML = 'Invalid expression / Try again'
    end
  end
  
end
