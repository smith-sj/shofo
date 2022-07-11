module PagesHelper


    # a method for parsing datetime like "Thursday 28th July"
    # uses my date suffix helper
    def parse_datetime(datetime)
        daystring = datetime.strftime("%A")
        datestring = datetime.strftime("%d")
        monthstring = datetime.strftime("%B")
        "#{daystring} #{date_suffix(datestring)} #{monthstring}"
    end

end
