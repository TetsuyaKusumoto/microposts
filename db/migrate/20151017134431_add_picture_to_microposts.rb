class AddPictureToMicroposts < ActiveRecord::Migration
  def change
    add_attachment :microposts, :picture
  end
end
