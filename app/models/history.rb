class History < ActiveRecord::Base
  belongs_to :user
  belongs_to :vaccination

  validates :vaccination_id, presence: true, numericality: { only_integer: true}
  validate :validate_vaccination_id
  private

  def validate_vaccination_id
    errors.add(:vaccination_id, "does not exist") unless Vaccination.exists?(self.vaccination_id)
  end
end
