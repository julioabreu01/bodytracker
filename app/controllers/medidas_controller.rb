class MedidasController < ApplicationController

    def new
        @paciente = Paciente.find(params[:paciente_id])
        @medida = @paciente.medidas.new
    end

    def edit
        @paciente = Paciente.find(params[:paciente_id])
        @medida = @paciente.medidas.find(params[:id])
    end
    
    def create
        @paciente = Paciente.find(params[:paciente_id])
        @medida = @paciente.medidas.create(medida_params)
        if @medida.save
          redirect_to paciente_path(@paciente)
        else
          render 'new'
        end
    end

    def update
        @paciente = Paciente.find(params[:paciente_id])
        @medida = @paciente.medidas.find(params[:id])
        if @medida.update_attributes(medida_params)
            redirect_to paciente_path(@paciente)
          else
            render 'edit'
          end
    end
    
     def destroy
        @paciente = Paciente.find(params[:paciente_id])
        @medida = @paciente.medidas.find(params[:id])
        @medida.destroy
        redirect_to paciente_path(@paciente)
    end

    private
        def medida_params
          params.require(:medida).permit(:peso, :bmi)
        end

    

end
