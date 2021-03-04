class Project < ApplicationRecord
  enum status: [:proposal, :progress, :finished]
end
