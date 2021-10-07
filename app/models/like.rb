class Like < ApplicationRecord
  belongs_to :user
  belongs_to :picture
  has_one :activity, as: :subject, dependent: :destroy

  validates :user_id, uniqueness: { scope: :picture_id }

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create(subject: self, user: picture.user, action_type: :liked_to_own_picture)
  end
end
