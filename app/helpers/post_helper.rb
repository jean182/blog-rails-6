# frozen_string_literal: true

module PostHelper

  def post_date(date)
    date.strftime("%B %d, %Y")
  end

end
