class Post < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :content, presence: true
  @posts = Post.paginate(:page => params[:page], :per_page => 8)
end
