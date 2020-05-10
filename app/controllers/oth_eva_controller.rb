class OthEvaController < ApplicationController
  def new
    @eva = OthEva.new
    @user = User.find(params[:id])
    
  end

  def create
    
    @eva = OthEva.new(oth_eva_params)
   
       
    if @eva.save
       redirect_to   action: :recommend
    else
      redirect_to action: 'new'
    end
  end

  def destory
  end

  def recommend
  end

  private
  def oth_eva_params
      params.require(:oth_eva).permit(
        :evaluate_user_name,:evaluated_user_id,
        :question_01,:question_02,:question_03,:question_04,:question_05,:question_06,:question_07,:question_08,:question_09,:question_10,
        :question_11,:question_12,:question_13,:question_14,:question_15,:question_16,:question_17,:question_18,:question_19,:question_20,
        :question_21,:question_22,:question_23,:question_24,:question_25,:question_26,:question_27,:question_28,:question_29,:question_30,
        :question_31,:question_32,:question_33,:question_34,:question_35,:question_36,:question_37,:question_38,:question_39,:question_40,
        :question_41,:question_42,:question_43,:question_44,:question_45,:question_46
      )
  end


end
