class BrowseController < ApplicationController

    def browse
        @q = Event.where(event_status: [1,2]).ransack(params[:q])
        @filtered_events = @q.result(distinct: true)
    end

end
