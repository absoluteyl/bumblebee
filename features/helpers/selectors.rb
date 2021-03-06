module SelectorsHelper
  # Maps a name to a link.
  def to_selector(selector_name)
    return unless selector_name

    case selector_name
    when 'User Sign Up Form'
      '#new_user'
    when 'User Log In Form'
      '#new_user'
    else
      raise "Can't find mapping from \"#{selector_name}\" to a selector.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World SelectorsHelper
