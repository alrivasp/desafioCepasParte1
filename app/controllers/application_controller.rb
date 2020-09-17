class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    #before_action :authorize_admin!

    def authorize_admin!
        unless current_user.admin?
        #if current_user && current_user.admin? 
            flash[:error] = "Para Acceder a esta seccion debe ser administrador"
            redirect_to root_path, notice: "Para Acceder debe ser un Administrador"
        end
    end
end
