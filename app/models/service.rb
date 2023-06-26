class Service < ApplicationRecord
  validates :first_name, :last_name, :animal_name, :hours_requested, :date_of_service, presence: true
  validates :hours_requested, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 8 }
  validates :animal_type, exclusion: [nil]
  validate :date_of_service_must_be_in_future

  ANIMAL_TYPES = {
    false => 'Cat',
    true => 'Dog'
  }.freeze

  def animal_type_display
    ANIMAL_TYPES[animal_type]
  end

  def self.calculate_total_cost(animal_type, duration)
    animal_type.downcase
    base_charge = 20
    additional_cost = 0

    if animal_type == 'dog'
      additional_cost = 10 * duration.to_i
    elsif animal_type == 'cat'
      additional_cost = 5 * duration.to_i
    end

    base_charge + additional_cost
  end

  private

  def date_of_service_must_be_in_future
    if date_of_service <= Date.today
      errors.add(:date_of_service, "must be in the future")
    end
  end
end
