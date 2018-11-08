class PacientesController < ApplicationController

def edit
    @paciente = Paciente.find(
    params[:id]
    )
end

def new
    @paciente = Paciente.new()
end


def show
    @paciente = Paciente.find(params[:id])
end

def index
    @pacientes = Paciente.all
end

def destroy
    @paciente = Paciente.find(params[:id])
    if @paciente.destroy
        redirect_to pacientes_url
    else
        redirect_to pacientes_url
    end
end


def create
    @paciente = Paciente.new(paciente_params)
    if @paciente.save
      redirect_to @paciente
    else
      render 'new'
    end
end

def update
    @paciente = Paciente.find(params[:id])
    if @paciente.update_attributes(paciente_params)
      redirect_to @paciente
    else
      render 'edit'
    end
end


private 
    def paciente_params
        params.require(:paciente).permit(:nome, :altura, :genero, :telefone, :nascimento, :email, :whatsapp,:notas, :nivelatividade)
    end


end
