class WelcomeController < ApplicationController
   def index
  	@control=params[:commit]
  	@datoType="number"
  	@text =true
  	@cancel=true
  	@menu=true

  	case @control
  	when "ant"
  		siguiente
  	when "Entrar"
  		entrarSistema
  	when "Enviar Correo"
  		formularioIntroducirCodigo
  	when "Cambiar Correo"
  		formularioCambiarCorreo
  	when "Validar"
  		validarCodigo
  	when "Guardar Clave"
  		validarClave
  	when "Guardar Correo"
  		formularioIntroducirCodigo
  	else
      if $d==1
        bdUcla        
      elsif $d==2
        @mensaje="Cedula no Valida"
        formularioInicio
        $d=0
      else
        formularioInicio
        @cancel=false;
      end
  	end
  end

  def formularioInicio
  	@dato="Cedula"
  	@boton="Siguiente"
  end

  def formularioEnviarCorreo
  	@text=false
  	@boton="Cambiar Correo"
  	@mensaje="Debe registrarse, le enviaremos un correo a la siguiente dirección email@email.com para iniciar el registro"
  end

  def formularioClave
  	@dato="Clave"
  	@boton="Entrar"
  	@datoType="password"
  end

  def formularioIntroducirCodigo
  	/Enviar correo/
  	@dato="Codigo"
  	@boton="Validar"
  	@datoType="text"
  end

  def formularioCambiarCorreo
  	@dato="Correo"
  	@boton="Guardar Correo"
  	@datoType="email"
  end

  def formularioRegistrarClave
  	@dato="Clave"
  	@boton="Guardar Clave"
  	@datoType="password"
  	@repetir=true
  end

  rescue_from ActiveRecord::RecordNotFound do
    if @c==1
      $d=1
    elsif @c==2
       $d=2 
    end
    redirect_to :action => :index
  end

  def siguiente
  	@mensaje="hola"	
  end

  def bdUcla
    @c=2
    /Verificar cedula en la base de datos UCLA/
    formularioEnviarCorreo
  end

  def validarCodigo

  	/Validar el codigo con el enviado al correo/

  	@correoValido=true
  	if @correoValido
  		formularioRegistrarClave
  	end
  end

  def validarClave
  	@clave1 = params[:textDato]
  	@clave2 = params[:textClave]
  	if @clave1==@clave2

  		/Guardar Usuario/

  		entrarSistema
  	else
  		@mensaje="Contraseñas no coinciden"
  		formularioRegistrarClave
  	end
  end

  def entrarSistema
    
    @clave=params[:textDato]
    if $usuario.clave==@clave
      redirect_to :controller =>:sistema, :action => :inicio
    else
      @mensaje='Clave Invalida'
      formularioClave
    end
    
  end
end
