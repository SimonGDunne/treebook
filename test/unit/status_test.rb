require 'test_helper'

class StatusTest < ActiveSupport::TestCase
   test "that a status requires content" do 
   	status = Status.new
   	assert !status.save
   	assert !status.errors[:content].empty?
   end

   test "that status content is at least two letters" do 
   	status = Status.new
   	status.content = "H"
   	assert !status.save
   	assert !status.errors[:content].empty?
   end

   test "that status's have user id" do 
   	status = Status.new
   	status.content = "hello"
   	assert !status.save
   	assert !status.errors[:user_id].empty?
   end
end
