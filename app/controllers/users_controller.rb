class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @eva = MyEva.find_by(evaluated_user_id: current_user.id)
    @otheva = OthEva.find_by( evaluated_user_id: current_user.id )
    
    @otheva01 = OthEva.find_by( question_01: 1 , evaluated_user_id: current_user.id )
    @otheva02 = OthEva.find_by( question_02: 1 , evaluated_user_id: current_user.id )
    @otheva03 = OthEva.find_by( question_03: 1 , evaluated_user_id: current_user.id )
    @otheva04 = OthEva.find_by( question_04: 1 , evaluated_user_id: current_user.id )
    @otheva05 = OthEva.find_by( question_05: 1 , evaluated_user_id: current_user.id )
    @otheva06 = OthEva.find_by( question_06: 1 , evaluated_user_id: current_user.id )
    @otheva07 = OthEva.find_by( question_07: 1 , evaluated_user_id: current_user.id )
    @otheva08 = OthEva.find_by( question_08: 1 , evaluated_user_id: current_user.id )
    @otheva09 = OthEva.find_by( question_09: 1 , evaluated_user_id: current_user.id )
    @otheva10 = OthEva.find_by( question_10: 1 , evaluated_user_id: current_user.id )
    @otheva11 = OthEva.find_by( question_11: 1 , evaluated_user_id: current_user.id )
    @otheva12 = OthEva.find_by( question_12: 1 , evaluated_user_id: current_user.id )
    @otheva13 = OthEva.find_by( question_13: 1 , evaluated_user_id: current_user.id )
    @otheva14 = OthEva.find_by( question_14: 1 , evaluated_user_id: current_user.id )
    @otheva15 = OthEva.find_by( question_15: 1 , evaluated_user_id: current_user.id )
    @otheva16 = OthEva.find_by( question_16: 1 , evaluated_user_id: current_user.id )
    @otheva17 = OthEva.find_by( question_17: 1 , evaluated_user_id: current_user.id )
    @otheva18 = OthEva.find_by( question_18: 1 , evaluated_user_id: current_user.id )
    @otheva19 = OthEva.find_by( question_19: 1 , evaluated_user_id: current_user.id )
    @otheva20 = OthEva.find_by( question_20: 1 , evaluated_user_id: current_user.id )
    @otheva21 = OthEva.find_by( question_21: 1 , evaluated_user_id: current_user.id )
    @otheva22 = OthEva.find_by( question_22: 1 , evaluated_user_id: current_user.id )
    @otheva23 = OthEva.find_by( question_23: 1 , evaluated_user_id: current_user.id )
    @otheva24 = OthEva.find_by( question_24: 1 , evaluated_user_id: current_user.id )
    @otheva25 = OthEva.find_by( question_25: 1 , evaluated_user_id: current_user.id )
    @otheva26 = OthEva.find_by( question_26: 1 , evaluated_user_id: current_user.id )
    @otheva27 = OthEva.find_by( question_27: 1 , evaluated_user_id: current_user.id )
    @otheva28 = OthEva.find_by( question_28: 1 , evaluated_user_id: current_user.id )
    @otheva29 = OthEva.find_by( question_29: 1 , evaluated_user_id: current_user.id )
    @otheva30 = OthEva.find_by( question_30: 1 , evaluated_user_id: current_user.id )
    @otheva31 = OthEva.find_by( question_31: 1 , evaluated_user_id: current_user.id )
    @otheva32 = OthEva.find_by( question_32: 1 , evaluated_user_id: current_user.id )
    @otheva33 = OthEva.find_by( question_33: 1 , evaluated_user_id: current_user.id )
    @otheva34 = OthEva.find_by( question_34: 1 , evaluated_user_id: current_user.id )
    @otheva35 = OthEva.find_by( question_35: 1 , evaluated_user_id: current_user.id )
    @otheva36 = OthEva.find_by( question_36: 1 , evaluated_user_id: current_user.id )
    @otheva37 = OthEva.find_by( question_37: 1 , evaluated_user_id: current_user.id )
    @otheva38 = OthEva.find_by( question_38: 1 , evaluated_user_id: current_user.id )
    @otheva39 = OthEva.find_by( question_39: 1 , evaluated_user_id: current_user.id )
    @otheva40 = OthEva.find_by( question_40: 1 , evaluated_user_id: current_user.id )
    @otheva41 = OthEva.find_by( question_41: 1 , evaluated_user_id: current_user.id )
    @otheva42 = OthEva.find_by( question_42: 1 , evaluated_user_id: current_user.id )
    @otheva43 = OthEva.find_by( question_43: 1 , evaluated_user_id: current_user.id )
    @otheva44 = OthEva.find_by( question_44: 1 , evaluated_user_id: current_user.id )
    @otheva45 = OthEva.find_by( question_45: 1 , evaluated_user_id: current_user.id )
    @otheva46 = OthEva.find_by( question_46: 1 , evaluated_user_id: current_user.id )

    if @otheva01.nil?
      @n01 = 0
    else
      @n01 = OthEva.where( question_01: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva02.nil?
      @n02 = 0
    else
      @n02 = OthEva.where( question_02: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva03.nil?
      @n03 = 0
    else
      @n03 = OthEva.where( question_03: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva04.nil?
      @n04 = 0
    else
      @n04 = OthEva.where( question_04: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva05.nil?
      @n05 = 0
    else
      @n05 = OthEva.where( question_05: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva06.nil?
      @n06 = 0
    else
      @n06 = OthEva.where( question_06: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva07.nil?
      @n07 = 0
    else
      @n07 = OthEva.where( question_07: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva08.nil?
      @n08 = 0
    else
      @n08 = OthEva.where( question_08: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva09.nil?
      @n09 = 0
    else
      @n09 = OthEva.where( question_09: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva10.nil?
      @n10 = 0
    else
      @n10 = OthEva.where( question_10: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva11.nil?
      @n11 = 0
    else
      @n11 = OthEva.where( question_11: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva12.nil?
      @n12 = 0
    else
      @n12 = OthEva.where( question_12: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva13.nil?
      @n13 = 0
    else
      @n13 = OthEva.where( question_13: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva14.nil?
      @n14 = 0
    else
      @n14 = OthEva.where( question_14: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva15.nil?
      @n15 = 0
    else
      @n15 = OthEva.where( question_15: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva16.nil?
      @n16 = 0
    else
      @n16 = OthEva.where( question_16: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva17.nil?
      @n17 = 0
    else
      @n17 = OthEva.where( question_17: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva18.nil?
      @n18 = 0
    else
      @n18 = OthEva.where( question_18: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva19.nil?
      @n19 = 0
    else
      @n19 = OthEva.where( question_19: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva20.nil?
      @n20 = 0
    else
      @n20 = OthEva.where( question_20: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva21.nil?
      @n21 = 0
    else
      @n21 = OthEva.where( question_21: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva22.nil?
      @n22 = 0
    else
      @n22 = OthEva.where( question_22: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva23.nil?
      @n23 = 0
    else
      @n23 = OthEva.where( question_23: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva24.nil?
      @n24 = 0
    else
      @n24 = OthEva.where( question_24: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva25.nil?
      @n25 = 0
    else
      @n25 = OthEva.where( question_25: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva26.nil?
      @n26 = 0
    else
      @n26 = OthEva.where( question_26: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva27.nil?
      @n27 = 0
    else
      @n27 = OthEva.where( question_27: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva28.nil?
      @n28 = 0
    else
      @n28 = OthEva.where( question_28: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva29.nil?
      @n29 = 0
    else
      @n29 = OthEva.where( question_29: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva30.nil?
      @n30 = 0
    else
      @n30 = OthEva.where( question_30: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva31.nil?
      @n31 = 0
    else
      @n31 = OthEva.where( question_31: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva32.nil?
      @n32 = 0
    else
      @n32 = OthEva.where( question_32: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva33.nil?
      @n33 = 0
    else
      @n33 = OthEva.where( question_33: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva34.nil?
      @n34 = 0
    else
      @n34 = OthEva.where( question_34: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva35.nil?
      @n35 = 0
    else
      @n35 = OthEva.where( question_35: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva36.nil?
      @n36 = 0
    else
      @n36 = OthEva.where( question_36: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva37.nil?
      @n37 = 0
    else
      @n37 = OthEva.where( question_37: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva38.nil?
      @n38 = 0
    else
      @n38 = OthEva.where( question_38: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva39.nil?
      @n39 = 0
    else
      @n39 = OthEva.where( question_39: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva40.nil?
      @n40 = 0
    else
      @n40 = OthEva.where( question_40: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva41.nil?
      @n41 = 0
    else
      @n41 = OthEva.where( question_41: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva42.nil?
      @n42 = 0
    else
      @n42 = OthEva.where( question_42: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva43.nil?
      @n43 = 0
    else
      @n43 = OthEva.where( question_43: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva44.nil?
      @n44 = 0
    else
      @n44 = OthEva.where( question_44: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva45.nil?
      @n45 = 0
    else
      @n45 = OthEva.where( question_45: 1 , evaluated_user_id: current_user.id ).count
    end

    if @otheva46.nil?
      @n46 = 0
    else
      @n46 = OthEva.where( question_46: 1 , evaluated_user_id: current_user.id ).count
    end

  end
end
