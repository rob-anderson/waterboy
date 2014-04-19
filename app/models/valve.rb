class Valve < ActiveRecord::Base

  class << self

    def all_off!
      all.to_a.each(&:off!)
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

  private

  def switch state
    `water.py #{id} #{state}`
  end

end
