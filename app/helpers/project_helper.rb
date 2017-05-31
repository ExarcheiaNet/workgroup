module ProjectHelper
  def last_status(project)
    status = "#{last_text_and_date(project)[:text]}"
    status += " - last updated #{last_text_and_date(project)[:date]}" if last_text_and_date(project)[:date]
    status
  end

  def last_text_and_date(project)
    if last_status = project.statuses&.last 
      text_and_date_for_status(last_status)
    else
      empty_status
    end
  end

  def text_and_date_for_status(status)
    {text: status.text, date: time_ago_in_words(status.updated_at)}
  end

  def empty_status
    {text: "no statuses!", date: nil}
  end
end