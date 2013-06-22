class Company < ActiveRecord::Base

  validates :email, presence: true

  def looking_for
    boolean_attributes.map do |boolean_attribute|
      boolean_attribute.name if self.send(boolean_attribute.name)
    end.reject!(&:nil?)
  end

  def boolean_attributes
    boolean_attributes = Company.columns.select { |column| column.type == :boolean }
  end

end
