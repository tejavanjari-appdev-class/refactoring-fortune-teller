Rails.application.routes.draw do  
  # PART 1: EACH IN ERB
  # ===================

  get("/", { :controller => "lottery", :action => "lucky"})
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky"})
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky"})

  # PART 2: RCAV DEBUGGING
  # ======================
  get("/zodiacs/:the_sign", { :controller => "fortune", :action => "horoscope" })
  # PART 3: MORE R→C→A→V PRACTICE
  # ==========================
    
  get("/roll/:num_dice/:num_sides", :controller => "dice", :action => "generic")
  end
