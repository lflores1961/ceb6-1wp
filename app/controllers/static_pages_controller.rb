class StaticPagesController < ApplicationController
  def main
    #used
  end

  def informacion
    #used
  end

  def privacidad
    #used
  end
  

  def servicios
   
  end

  def control
  end

  def virtual
  end

  def avisos
    @avisos = Micropost.all
  end
  

  def under_const
    
  end
  
end
