class WelcomeController < ApplicationController
  before_action :global # antes de ejecutar cualquier accion (index o contacto) se integrara la variable 
                        # global
  def index
    # Declaracion de variables de instancia, la cual usarremos en la vista
    @variablenueva = "Este es un ejemplo del uso de variables"
  end
  def contacto  # Estamos creando otra vista para el controlador welcome, no olvidar definirlo en la ruta
                # routes
    
  end
  private   # vamos a crear una variable global
    def global
      @variableglobal=100
    end
end
