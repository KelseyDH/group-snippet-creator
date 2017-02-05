class Group < ApplicationRecord

  def private_or_public
    return "Public" if is_private == "Y"
    return "Private" if is_private == "N"
    "Unknown"
  end
end
