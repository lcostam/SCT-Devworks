class SessionsController < ApplicationController
    layout "login"
    def new
    end
  
    def create
      @usuarioLogado = Usuario.find_by(email: params[:email])
      if @usuarioLogado && @usuarioLogado.authenticate(params[:password])
        session[:usuario_id] = @usuarioLogado.id
        redirect_to tarefas_path
      else  
        redirect_to login_path
      end
    end

    def destroy
        session[:usuario_id] = nil
        redirect_to login_path
      end
    
end
