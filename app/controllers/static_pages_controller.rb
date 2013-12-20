class StaticPagesController < ApplicationController
  def home
  end
def ministries
end

def events
end
def directions
  
end
def outreach
end
def resources
  
end
def reading_list
  @discipleships = Discipleship.all
  @generals = General.all
  @men = Man.all
  @women = Woman.all
  @singles = Single.all
  @evangelisms = Evangelism.all
  @apologetics = Apologetic.all
  @postmodernisms = Postmodernism.all
  
end
  
  def about
  end
  
  def contact
  end
end
