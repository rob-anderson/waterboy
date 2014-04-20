class Valve < ActiveRecord::Base

  class << self

    def all_off!
      switch(:all, :off) && update_all(on: false)
    end

    def switch arg1, arg2
      `water #{arg1} #{arg2}`
    end
  end

  def on!
    switch(:on) && update_attribute(:on, true)
  end

  def off!
    switch(:off) && update_attribute(:on, false)
  end

  def off?
    !on?
  end

  def state
    on? ? :on : :off
  end

  def toggle!
    on? ? off! : on!
  end

  def switch state
    Valve.switch id, state
  end

end
