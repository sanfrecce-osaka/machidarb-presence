require "machida_presence/version"

module MachidaPresence
end

class Object
  def blank?
    if respond_to?(:empty?)
      empty? || nil?
    else
      nil?
    end
  end

  def present?
    !blank?
  end

  def presence
    present? ? self : nil
  end
end
