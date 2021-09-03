class AdministradoresController < ApplicationController
  before_action :set_administradore, only: %i[ show edit update destroy ]

  # GET /administradores or /administradores.json
  def index
    @administradores = Administradore.all
  end

  # GET /administradores/1 or /administradores/1.json
  def show
  end

  # GET /administradores/new
  def new
    @administradore = Administradore.new
  end

  # GET /administradores/1/edit
  def edit
  end

  # POST /administradores or /administradores.json
  def create
    @administradore = Administradore.new(administradore_params)

    respond_to do |format|
      if @administradore.save
        format.html { redirect_to @administradore, notice: "Administradore was successfully created." }
        format.json { render :show, status: :created, location: @administradore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @administradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /administradores/1 or /administradores/1.json
  def update
    respond_to do |format|
      if @administradore.update(administradore_params)
        format.html { redirect_to @administradore, notice: "Administradore was successfully updated." }
        format.json { render :show, status: :ok, location: @administradore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @administradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /administradores/1 or /administradores/1.json
  def destroy
    @administradore.destroy
    respond_to do |format|
      format.html { redirect_to administradores_url, notice: "Administradore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administradore
      @administradore = Administradore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def administradore_params
      params.require(:administradore).permit(:nome, :email, :senha)
    end
end
