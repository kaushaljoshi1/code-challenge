class Company < ApplicationRecord
  has_rich_text :description
  belongs_to :owner
  has_many :departments, inverse_of: :company
  has_many :employees, through: :departments
  has_one :company_address
  accepts_nested_attributes_for :departments, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :employees, allow_destroy: true, reject_if: :all_blank
  validates :email, uniqueness: {message: "A company already exist with similer email" }
  validate :valid_zip_code

  after_save_commit :update_address

  def valid_zip_code
    unless ZipCodes.identify(self.zip_code)
      errors.add(:invalid_zip, "This zipcode is invalid")
    end
  end

  def update_address
    address = ZipCodes.identify(self.zip_code)
    if self.company_address.blank?
      self.create_company_address(address)
    else
      self.company_address.update_attributes(address)
    end
  end
end
