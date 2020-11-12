class TarefasController < ApplicationController
  before_action :set_tarefa, only: [:show, :edit, :update, :destroy, :concluir]
  #before_action :authorized
  # GET /tarefas
  # GET /tarefas.json
  def index
    @tarefas = Tarefa.where(:usuario_id=>@usuarioLogado.id, :status=>"Em Andamento")
    @tarefasDone = Tarefa.where(:usuario_id=>@usuarioLogado.id, :status=>"Concluída")
  end

  def concluir
    # @usuario = Usuario.find(params[:id])
     #Usuario.update(@usuario.id, status:10) 
     
       @tarefa.update_attribute(:status, "Concluída")
       msg = "Desativado"
     
     redirect_to tarefas_path, notice: msg
   end

  # GET /tarefas/1
  # GET /tarefas/1.json
  def show
  end

  # GET /tarefas/new
  def new
    @tarefa = Tarefa.new
  end

  # GET /tarefas/1/edit
  def edit
  end

  # POST /tarefas
  # POST /tarefas.json
  def create
    @tarefa = Tarefa.new(tarefa_params)

    respond_to do |format|
      if @tarefa.save
        format.html { redirect_to tarefas_path, notice: 'Tarefa was successfully created.' }
        format.json { render :show, status: :created, location: @tarefa }
      else
        format.html { render :new }
        format.json { render json: @tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarefas/1
  # PATCH/PUT /tarefas/1.json
  def update
    respond_to do |format|
      if @tarefa.update(tarefa_params)
        format.html { redirect_to tarefas_path, notice: 'Tarefa was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarefa }
      else
        format.html { render :edit }
        format.json { render json: @tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarefas/1
  # DELETE /tarefas/1.json
  def destroy
    @tarefa.destroy
    respond_to do |format|
      format.html { redirect_to tarefas_url, notice: 'Tarefa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarefa
      @tarefa = Tarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tarefa_params
      params.require(:tarefa).permit(:descricao, :status, :prazo, :usuario_id)
    end
end
