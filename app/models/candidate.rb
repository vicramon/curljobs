class Candidate < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true

  def roles
    available_roles.map do |role|
      role[1] if self.send(role[0])
    end.reject!(&:nil?)
  end

  def pretty_roles
    roles.join(", ")
  end

  private

  def available_roles
    [
      [:front_end, "Front-end"],
      [:back_end, "Back-end"],
      [:designer, "Designer"],
      [:sys_admin, "Sys-Admin"],
      [:project_manager, "Project Manager"]
    ]
  end

end
