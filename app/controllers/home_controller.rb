class HomeController < ApplicationController
  def index
  end

  def about
  end

  def ProfilMutter
  end

  def profilKind
  end

  def einstellungen
  end

  def impressum
  end
  
  def erledigteAnt
  end

  def nAnt
  end

  def genehmigungspflichtigeAnt
  end

  def weitereDetails
  end

  def antstellen
  end


  def msg
  @anstellen = anstellen.new(anstellen_p)
  if @anstellen.button

  redirect_to 'home_anAnt_path'
  flash[:notice] = "Nachricht"
  else
    redirect_to 'home_mitteilungens_path'
  end
end


end
