class MyEvaController < ApplicationController
  before_action :authenticate_user!
  def new
    @eva = MyEva.new
  end

  def create
    @eva = MyEva.new(my_eva_params)

    @eva.evaluated_user_id = current_user.id
       
    if @eva.save
       redirect_to  controller: :users, action: :show, id: current_user.id
    else
      redirect_to action: 'new'
    end
  end

  def edit
    @eva = MyEva.new
    @eva = MyEva.find(params[:id])
  end

  def update
    @eva = MyEva.find(params[:id])
     if @eva.update(my_eva_params)
       redirect_to controller: :users, action: :show, id: current_user.id
     else
       redirect_to :action => "edit"
     end
   end

  def show
    @my_eva = MyEva.find(params[:id])
    @oth_evas = OthEva.where(evaluated_user_id: current_user.id)
  end

  def destroy
    OthEva.find(params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  def createupdate
  end

  private
  def my_eva_params
      params.require(:my_eva).permit(
        :question_01,:question_02,:question_03,:question_04,:question_05,:question_06,:question_07,:question_08,:question_09,:question_10,
        :question_11,:question_12,:question_13,:question_14,:question_15,:question_16,:question_17,:question_18,:question_19,:question_20,
        :question_21,:question_22,:question_23,:question_24,:question_25,:question_26,:question_27,:question_28,:question_29,:question_30,
        :question_31,:question_32,:question_33,:question_34,:question_35,:question_36,:question_37,:question_38,:question_39,:question_40,
        :question_41,:question_42,:question_43,:question_44,:question_45,:question_46
      )
  end
end
