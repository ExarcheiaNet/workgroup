module ProjectHelper
  def last_status(project)
    status = "#{last_text_and_date(project)[:text]}"
    status += "- #{last_text_and_date(project)[:date]}" if last_text_and_date(project)[:date]
    status
  end

  def last_text_and_date(project)
    if last_status = project.statuses&.last 
      {text: last_status.text, date: last_status.updated_at}
    else
      empty_status
    end
  end

  def empty_status
    {text: "no statuses!", date: nil}
  end
end