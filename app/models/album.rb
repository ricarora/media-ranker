class Album < ActiveRecord::Base
  def rankup
    self.rank += 1
    self.save
  end
end
