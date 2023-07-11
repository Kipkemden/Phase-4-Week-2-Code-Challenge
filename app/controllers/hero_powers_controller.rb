class HeroPowersController < ApplicationController
    def create
      hero_power = HeroPower.new(hero_power_params)
      if hero_power.save
        hero = Hero.find_by(id: params[:hero_id])
        render json: hero.as_json(include: :powers)
      else
        render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def hero_power_params
      params.permit(:strength, :hero_id, :power_id)
    end
  end
  