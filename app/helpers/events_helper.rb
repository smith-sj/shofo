module EventsHelper

    # a helper method for adding 'st', 'nd', 'rd' onto dates
    def date_suffix(date)
        suffix = ""
        if date.to_i <= 20
          if date == "01"
            suffix = "st"
          elsif date == "02"
            suffix = "nd"
          elsif date == "03"
            suffix = "rd"
          else
            suffix = "th"
          end
        else
          if date[-1] == "1"
            suffix = "st"
          elsif date[-1] == "2"
            suffix = "nd"
          elsif date[-1] == "3"
            suffix = "rd"
          else
            suffix = "th"
          end
        end
        if date.to_i < 10
          date = date[-1]
        end
        return "#{date}#{suffix}"
    end

    # a method for parsing times like "10:15am"
    def time_formatter(hours, minutes, meridian)
        hours = hours.to_i < 10 ? hours[1] : hours
        return "#{hours}:#{minutes}#{meridian.downcase}"
    end

end
