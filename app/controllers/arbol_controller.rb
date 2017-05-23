=begin
  ejemplo13_controller.rb
  Autor  : Edgar Gonzalez
  Web    : http://egonzale.org
  Email  : egonzale@ucla.edu.ve
  Rails  : version 4.2.6
  Fecha  : 20 de mayo del 2016
=end
class ArbolController < ApplicationController
 # Error:    ActionController::InvalidAuthenticityToken in Ejemplo08Controller#ajax
 # Leer:     http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection/ClassMethods.html
 # Solucion: http://stackoverflow.com/questions/3364492/actioncontrollerinvalidauthenticitytoken 
 #skip_before_action :verify_authenticity_token

 def index
 end

 def ajax
 	@tipo=params[:tipo]
	@arbols = Arbols.new
	@tira = @arbols.BuscarTodosArbolJson(@tipo)
	render :text => @tira
 end

def rol
	@rol=params[:rol]
	@arbols = Arbols.new
	@tira = @arbols.BuscarTodosArbolJson(@rol)
	render :text => @tira


	
end


 
end