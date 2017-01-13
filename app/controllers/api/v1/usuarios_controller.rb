class Api::V1::UsuariosController < ApplicationController
  respond_to :json
   
  # GET /usuarios.json
  def index
   @usuarios = Usuario.all
   respond_with(@tournaments)
  end
 
  # POST /users.json
  def create
   @usuario = Usuario.new(user_params)
   if @usuario.save
    respond_with({'status':'success'})
   else
    respond_with({'status':'error', 'errors':@user.errors})
   end
  end
   
  # PATCH/PUT /users/1.json
  def update
   if @usuario.update(user_params)
    respond_with({'status':'success'})
   else
    respond_with({'status':'error'})
   end
  end
 
  # DELETE /users/1.json
  def destroy
   @usuario.destroy
   respond_with({'status':'User deleted'})
  end
 
  def user_params
   params.require(:user).permit(:name, :lastName, :phoneNumber)
  end
end
