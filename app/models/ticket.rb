class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :holder, foreign_key: "holder_id", class_name: "User"
  belongs_to :seller, foreign_key: "seller_id", class_name: "User"


  def qr_code
      RQRCode::QRCode.new("#{Rails.application.routes.url_helpers.root_url(host: 'localhost', port: 3000)}/tickets/#{self.secret}").as_svg(
        color: "000",
        shape_rendering: "crispEdges",
        module_size: 11,
        standalone: true,
        use_path: true
      )
  end
  
end
