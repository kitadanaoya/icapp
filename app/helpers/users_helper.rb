module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
  
  def sum_for(user)
      value = user.point_ids.inject(:+)
      case value
      when 1..2
        "これこれをしたらいいさ"
      when 3..9
        "あれあれをしたらいいさ"
      when 10..20
        "それそれをしたらいいさ"
      end
  end
end
