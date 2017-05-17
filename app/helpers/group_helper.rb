module GroupHelper
  def last_status(group)
    status = "#{last_text_and_date(group)[:text]}"
    status += "- #{last_text_and_date(group)[:date]}" if last_text_and_date(group)[:date]
    status
  end

  def last_text_and_date(group)
    if last_status = group.statuses&.last 
      {text: last_status.text, date: last_status.updated_at}
    else
      empty_status
    end
  end

  def empty_status
    {text: "no statuses!", date: nil}
  end
end