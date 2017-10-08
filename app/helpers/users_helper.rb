module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar rounded")
  end
  
  def sum_for(user)
      value = user.point_ids.inject(:+)
      case value
      when 1..5
        render 'shared/15'
      when 6..18
        render 'shared/618'
      when 19..30
        render 'shared/1930'
      end
  end
end
