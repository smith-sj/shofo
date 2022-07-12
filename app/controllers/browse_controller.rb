class BrowseController < ApplicationController

    def browse

        # Gets events that are only scheduled and in-progress and sets as array for ransack to search
        @q = Event.where(event_status: [1,2]).ransack(params[:q])
        # set filtered var for search results
        @filtered_events = @q.result(distinct: true)

        # array of locations to search by (for select input)
        @search_locations = [["Any Location", nil],
        ["ACT", "Australian Capital Territory"],  
        ["NSW", "New South Wales"],
        ["NT", "Northern Territory"],
        ["QLD", "Queensland"],
        ["SA", "South Australia"],
        ["TAS","Tasmania"],
        ["VIC","Victoria"],
        ["WA","Western Australia"]]
    end

end
