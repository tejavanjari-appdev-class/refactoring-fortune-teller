class DiceController < ApplicationController

  def generic
    @num_dice = params.fetch('num_dice')
    @num_sides = params.fetch('num_sides')
    @array_of_rolls = Array.new

    @num_dice.to_i.times do
      @array_of_rolls.push(rand(@num_sides.to_i) + 1)
    end

    render({:template => "dice_templates/generic_dice.html.erb"})
  end
end