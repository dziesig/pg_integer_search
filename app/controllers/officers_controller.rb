class OfficersController < ApplicationController

  hobo_model_controller

  auto_actions :all

  include TablePlusIndex

  # Comment this out and uncomment the one marked "works" to demonstrate that it is the integer
  # column causing the problem

  def index # fails
  	table_plus_index(	self,
  										8,							# per_page
  										[:name,:rank],	# search columns - pg fails when :rank (integer) present
  										nil,						# columns to ignore 
  										:name,:rank)		# sort columns
  end

  # def index # works
  # 	table_plus_index(	self,
  # 										8,							# per_page
  # 										[:name],				# search columns - pg fails when :rank (integer) present
  # 										nil,						# columns to ignore 
  # 										:name,:rank)		# sort columns
  # end

end
