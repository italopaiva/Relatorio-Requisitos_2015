class DriversController < ApplicationController

  def index
    @drivers = Driver.all
  end

  def new
    @driver = Driver.new
  end

  def create
    @driver = Driver.new driver_params

    driver_id_is_ok = validate_driver_id @driver.driver_id

    if driver_id_is_ok
      if @driver.save
        flash[:info] = "Motorista cadastrado com sucesso!"
        redirect_to action: "index";
      else
        flash[:info] = "Não foi possível cadastrar o motorista informado."
        redirect_to action: "index"
      end
    else
      flash[:error] = "A matrícula deve seguir o padrão 000000/0, onde 0 é qualquer número."
      redirect_to action: "new"
    end
  end

  def validate_driver_id driver_id
    
    driver_id_is_ok = false

    length = driver_id.length

    if(length == 8)

      id_slash = driver_id[6];

      if(id_slash == '/')

        numbers = driver_id[0].concat(driver_id[1]).concat(driver_id[2]).concat(driver_id[3]).concat(driver_id[4]).concat(driver_id[5]).concat(driver_id[7])

        numbers.each_char do |n|
          is_num = is_number n

          if !is_num
            driver_id_is_ok = false
            break;
          else
            driver_id_is_ok = true
          end
        end

      else
        driver_id_is_ok = false
      end

    else
      driver_id_is_ok = false
    end

    driver_id_is_ok
  end

  def is_number value
    
    is_number = false
    
    case value
      when '0'
        is_number = true
      
      when '1'
        is_number = true
      
      when '2'
        is_number = true

      when '3'
        is_number = true

      when '4'
        is_number = true

      when '5'
        is_number = true

      when '6'
        is_number = true

      when '7'
        is_number = true

      when '8'
        is_number = true
      
      when '9'
        is_number = true

      else
        is_number = false
    end

    is_number
  end

  def driver_params
    params.require(:driver).permit(:driver_name, :driver_id, :driver_patent, :driver_cnh, :driver_license, :license_expiration)
  end
end
