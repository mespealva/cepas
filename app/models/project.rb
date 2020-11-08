class Project < ApplicationRecord
    has_and_belongs_to_many :workers

  def available_workers
    (Worker.all - workers).pluck(:name, :id)
  end
end
