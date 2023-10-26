class GameController < ApplicationController

  def two_six
    @first_die = rand(1..6)
   @second_die = rand(1..6)
   @outcome1 = @first_die
   @outcome2 = @second_die
  
   render({ :template => "my_templates/two_six" }) 
  end 
  
 def two_ten
  @first_die = rand(1..10)
  @second_die = rand(1..10)
  @outcome1 = @first_die 
  @outcome2 = @second_die
  
  render({ :template => "my_templates/two_ten" })
 end 

def one_twenty
  @first_die = rand(1..20)
  @outcome1 = @first_die
  
  render({ :template => "my_templates/one_twenty" }) 
end 

def five_four
  @first_die = rand(1..4)
  @second_die = rand(1..4)
  @third_die = rand(1..4)
  @fourth_die = rand(1..4)
  @fifth_die = rand(1..4)
@outcome1 = @first_die
@outcome2 = @second_die
@outcome3 = @third_die
@outcome4 = @fourth_die
@outcome5 = @fifth_die
  render({ :template => "my_templates/five_four" }) 
end 

def rand_dice 
  @num_dice = rand(1..100)
  @sides = rand(1..100)
  @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end 
render({ :template => "my_templates/rand_dice" }) 
  end 
  
 
  def home
    render({ :template => "my_templates/home" })
  end
end 
