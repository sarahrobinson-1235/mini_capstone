class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 5..500}
  # validates_format_of :image_url, :with => %r{\.(png|jpg|jpeg)$}i, :message => "incorrect file format (must be .png, .jpg, or .jpeg)", multiline: true
  def is_discounted?
    if price < 10
      p true
    else p false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  #scope :discounted, -> {where("price < ?", 10)}
end
