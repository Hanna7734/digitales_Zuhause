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


  def button?
    params[:commit] == "Antrag absenden"
  
  end

  def a
    if button?
      redirect_to 'home_anAnt_path', info: "Antrag erfolgreich versendet"
  
  else
   redirect_to 'home_anAnt_path', danger: "Antrag wurde nicht versendet"
  end
end



end
