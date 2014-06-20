class HomeController < ApplicationController
  def index
    @lunch_bunches = load_lunch_bunches
  end

  def join_group
    @lunch_name = params[:lunchName]
    @group_number = 1 + rand(6)
    @bunches = load_lunch_bunches
    group = @bunches[@group_number.to_s]
    group['people'] << @lunch_name
    @bunches[@group_number] = group
    $redis.set('bunches', @bunches.to_json)
  end

  def clear_groups
    $redis.del 'bunches'
  end

  private

  def load_lunch_bunches
    json_bunches = $redis.get 'bunches'
    if json_bunches
      bunches = JSON.parse json_bunches
    else
      bunches = Hash.new
      6.times { |i| bunches[i + 1] = Group.new(i + 1) }
    end
    $redis.set('bunches', bunches.to_json)
    JSON.parse($redis.get('bunches'))
  end
end
