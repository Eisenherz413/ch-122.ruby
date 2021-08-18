module RoomsHelper
  def check_in_date
    date = params.fetch(:q, nil)&.to_unsafe_h&.fetch(:orders_check_in_lt, nil)
    (date.present? ? Date.parse(date) : Date.current).strftime('%m/%d/%Y')
  end

  def check_out_date
    date = params.fetch(:q, nil)&.to_unsafe_h&.fetch(:orders_check_out_gt, nil)
    (date.present? ? Date.parse(date) : Date.current).strftime('%m/%d/%Y')
  end
end
