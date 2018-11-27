class DashboardAndPost < ApplicationRecord
  belongs_to :workspace
  belongs_to :post
end
