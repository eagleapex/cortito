# Copyright (c) 2009, Adrian Kosmaczewski / akosma software
# All rights reserved.
# BSD License. See LICENSE.txt for details.

class Indexes < ActiveRecord::Migration
  def self.up
    add_index("items", "original", { :name => "original_index", :unique => true })
    add_index("items", "shortened", { :name => "shortened_index", :unique => true })
  end

  def self.down
    remove_index("items", "original_index")
    remove_index("items", "shortened_index")
  end
end
