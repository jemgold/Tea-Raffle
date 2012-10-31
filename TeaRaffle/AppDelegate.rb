#
#  AppDelegate.rb
#  TeaRaffle
#
#  Created by Jon Gold on 30/10/2012.
#  Copyright 2012 Jon Gold. All rights reserved.
#

class AppDelegate
  attr_accessor :window
  attr_accessor :tokenField
  attr_accessor :table_view
  attr_accessor :textField
  attr_accessor :users, :brewlist
  
  def initialize
    @users = []
    @brewlist = {}
  end
  
  def applicationDidFinishLaunching(a_notification)
  end
  
  def pickBrew(sender)
    pickBrewer
    if @users.empty?
      textField.setStringValue("Add some brewers")
    else
      textField.setStringValue(@brewer)
    end
  end
  
  def clearBrewlist(sender)
    @brewlist.clear
    self.table_view.reloadData
  end
  
  def pickBrewer
    @users = tokenField.objectValue
    unless @users.empty?
      @brewer = @users.sample
      if @brewlist[@brewer].nil?
        @brewlist[@brewer] = 1
      else
        @brewlist[@brewer] += 1
      end
      self.table_view.reloadData
    end
  end
  
end

