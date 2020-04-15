class MatchStatisticsController < ApplicationController
  def index
    @match_statistics ||= MatchStatistic.all
  end
end
