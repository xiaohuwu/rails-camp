class User < ApplicationRecord
  mount_uploader :pic, AvatarUploader
end
