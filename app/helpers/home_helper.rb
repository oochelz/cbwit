module HomeHelper
  def lunch_bunches
    bunches = Array.new
    @lunch_bunches.map do |k, v|
      bunches << @lunch_bunches[k]
    end
    bunches
  end
end
