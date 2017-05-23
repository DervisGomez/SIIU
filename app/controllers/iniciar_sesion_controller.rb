class IniciarSesionController < ApplicationController
  
  def introducirCedula
    $menu=2
	 @cancel = params[:id]
	 if @cancel=="iniciar"
		$mensaje=""
  else

	end
  end

  def introducirClave
  	@cedula = params[:textCedula]
  	if @cedula=="1"
  		$mensaje=""
  	elsif @cedula=="2"
  		redirect_to :controller =>:iniciar_sesion, :action => :enviarCorreo
   	else
   		$mensaje="Cedula invalida"
  		redirect_to :controller =>:iniciar_sesion, :action => :introducirCedula
  	end
  end

  def enviarCorreo
  	$mensaje="No estas registrado, para hacerlo te enviarimos un codigo al siguiente correo dervisgomez77@gmail.com solo debes preciona enviar, si deseas que te enviemos el codigo a otro correo preciona cambiar correo"
  end

  def introducirCodigo
  	@control=params[:commit]
  	if @control=="Guardar Correo"
  		@correo1=params[:textCorreo]
  		@correo2=params[:textCorreoR]

  		if @correo1!=@correo2
  			$mensaje="Correos no Coinciden"
  			redirect_to :controller =>:iniciar_sesion, :action => :introducirCorreo
  		else
  			$mensaje=""
  		end
  	else
  		$mensaje=""
  	end
  	
  end

  def guardarClave
  	$mensaje=""
  end

  def introducirCorreo

  end
end
