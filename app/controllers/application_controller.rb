class ApplicationController < ActionController::Base
    before_action :valida_autenticacao_admin
    
    def valida_autenticacao_admin
        if cookies[:ecommerce].present?
            hash_admin = JSON.parse(cookies[:ecommerce])
            if hash_admin["id"].present?
                administradores = Administradore.where(id: hash_admin["id"])
                if administradores.count > 0
                  @administrador = administradores.first
                  return
                end
            end
        end
        redirect_to "/login"
    end
end
