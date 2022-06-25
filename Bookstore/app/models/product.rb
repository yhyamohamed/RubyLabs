class Product < ApplicationRecord
  has_one_attached :image
  validates :name,presence: true, length: { minimum: 5 }
  validates :description,presence: true
  validates :price,presence: true
  after_commit :add_default_image, on: [:create, :update]

  def add_default_image
    unless image.attached?
      self.image.attach(io: File.open(Rails.root.join("app", "assets", "images", 'hendrix.jpg')), filename: 'hendrix.jpg' , content_type: "image/jpg")
    end
  end



end
