class AddDetailsToMeetings < ActiveRecord::Migration[6.1]
  def change
    add_column :meetings, :content, :text
  end
end
