module PagesHelper

    def parse_datetime(datetime)
        daystring = datetime.strftime("%A")
        datestring = datetime.strftime("%d")
        monthstring = datetime.strftime("%B")
        "#{daystring} #{date_suffix(datestring)} #{monthstring}"
    end

      #{@daystring} 
  #{date_suffix(@datestring)} 
  #{@monthstring}"%>

end
