#
#  JGTableDelegate.rb
#  TeaRaffle
#
#  Created by Jon Gold on 30/10/2012.
#  Copyright 2012 Jon Gold. All rights reserved.
#

class JGTableDelegate
  
  attr_accessor :parent
  
  def numberOfRowsInTableView(tableView)
    parent.brewlist.count
  end
  
  def tableView(tableView, objectValueForTableColumn:column, row:row)
    NSLog("Asked for row: #{row} column: #{column}")
    if row < parent.brewlist.length
      # This is really janky, I have no idea why I had to do it like this.
      # What I want is parent.brewlist[row], parent.brewlist[column]
      # Uncomment this crazy log to see whatup -
      # puts parent.brewlist
      case column.identifier
      when 'user'
        return parent.brewlist.to_a[row][0]
      when 'brewcount'
        return parent.brewlist.to_a[row][1]
      end
    end
    nil
  end
  
end
