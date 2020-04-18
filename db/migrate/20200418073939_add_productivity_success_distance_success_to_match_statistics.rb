class AddProductivitySuccessDistanceSuccessToMatchStatistics < ActiveRecord::Migration[5.2]
  def change
    add_column :match_statistics, :productivity_success, :boolean, default: false
    add_column :match_statistics, :distance_success, :boolean, default: false
  end
end
