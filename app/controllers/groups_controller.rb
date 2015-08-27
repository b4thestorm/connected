class GroupsController < ApplicationController
before_action :authenticate_user!

def index 
@group = Group.all

end 

def new

end

def create

end

def show

end 

end
