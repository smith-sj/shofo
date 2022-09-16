# README



## 1. Link to deployed app (R9)
https://shofo.app

---
## 2. Link to github repo (R10)
https://github.com/smith-sj/shofo

---
## 3. The problems SHOFO solves (R7)

1. Outside of the major social media sites, there is a lack of stand-alone event booking and organisation apps for both event curators and attendees.

1. Those that do exist are targeted at booking agencies and large promoters, but are less friendly towards independent artists and small-scale event curators.

1. Many of these websites tend to be heavy on features but lack an intuitive and friendly user experience, further pushing independent artists away from event management and ticketing in general.
---
## 4. Why do these problems need solving? (R8)

1. The online event booking, managing and ticketing industry is in need of disruption, especially when it comes to servicing independent artists and musicians, and small-scale event curators. A lack of options for stand-alone booking event management apps (outside of large social media organisations) can result in ‘imperfect competition’, which ultimately leads to a 'get what you’re given’ mentality amongst consumers.

2. Independent artists and small-scale event curators would benefit from a stand-alone event management and ticketing app catered to their needs. This target demographic tends to be busy focusing on their work and can often leave event advertising and ticketing until it’s too late. The consequence of poor event management is a lack of exposure and poor turn outs.

3. According to australiainstitute.org.au (April 16, 2020), the creative arts and entertainment sector contribute $14.7 billion to Australia’s GDP. This figure indicates that live entertainment currently is and can continue to be a major contributor to the Australian economy. Imagine how much more significant these figures could be by empowering independent artists and small-scale event organisers to improve their exposure and boost their turnouts. Creating a tool that is catered especially to their needs can engage these artists and curators, and make event promotion and ticket selling less daunting.

---
## 5. Description of the marketplace App (R11)

Shofo is a platform for discovering, booking and organising events, Shofo aims to bring more entertainment to everyone's life. Whether you want to curate an event or your social life; Shofo will handle the boring stuff, so you can focus on the curating.

### Purpose

Shofo has two main purposes:

1. Event planners can use Shofo to list events and sell tickets to those events.

1. Event attendees can use Shofo to search for new events and buy tickets to them. 

Sounds pretty straightforward, but there are tons of helpful features for both event hosts and guests.

### Functionality / Features

#### Searchable Event Listings
Event organisers can list their events on Shofo in minutes by simply creating a new event, adding some details and a hero pic. Once the event is listed, potential guests can find the event via keyword, category and location based searches.  The events will also be listed in the event organiser’s Host panel where events will be categorised as ‘Scheduled’, ‘In-Progress’, ‘Completed’ or ‘Cancelled’.


#### QR Tickets and Virtual Wallet
All shofo accounts come with a wallet. When a user buys a ticket to the event, the ticket shows up in their wallet. The ticket contains details of the event and also a link back to the event page.

The ticket also contains a QR code. When scanned (either by the iOS or Android native camera apps or any QR Code Scanner app), a link to a ticket validation page will appear. If you’re logged in as the event owner, or the ticket holder you’ll see details about the guest such as their full name, ticket ID and legal drinking age status. If you’re logged in as another user you will be able to see that the ticket is valid, as well as the last name of the ticket holder, but for privacy reasons all other details will be hidden. (Try changing the string at the end of the link, and you’ll be directed to an invalid ticket page.)

For event organisers this feature provides an all-in-one ticketing and booking system for events, that requires no extra hardware other than a smartphone. For event goers, this feature provides a one-stop-shop for their event tickets, as well as any other details they may need, such as embedded maps.

#### Embedded Maps
Each event page will contain an embedded map, granted a valid address was entered on event creation. Shofo will automatically grab the coordinates of your event and pass it to google maps, which will embed a dynamic map into the event listing page.


#### Calendar
Users can keep up to date with which booked events are coming up by using their personal event Calendar. From the main menu, a user can access their calendar which contains all of their booked events for the next year, conveniently organised under collapsible month headings. Months with events will be listed in green, while months with no events will be grey.

#### Featured Events Carousel
The home page has a featured events carousel. This carousel is automatically styled with the event image and event details of featured events. Site admin can add and remove events from the featured events carousel by passing it different event ids, listed in the pages controller.

### Screenshots

Home Screenshots
![Home Screenshots](/docs/HomeScreenshots.png)

Menu Screenshots
![Menu Screenshots](/docs/MenuScreenshots.png)

Event Screenshots
![Event Screenshots](/docs/EventScreenshots.png)

Browse Screenshots
![Event Screenshots](/docs/BrowseScreenshots.png)

Booking Confirmation and Calendar Screenshots
![Booking Confirmation and Calendar Screenshots](/docs/BookingAndCalendarScreenshots.png)

Wallet and Scan Screenshots
![Ticket & Scan Screenshots](/docs/TicketScreenshots.png)

Validation Screenshots
![Validation Screenshots](/docs/Validation.png)


### Sitemap

#### Signed In Sitemap
![Signed Out Site Map](/docs/signed_in_sitemap.png)
#### Signed Out Sitemap
![Signed In Site Map](/docs/signed_out_sitemap.png)

### Target audience
There are two target audiences of Shofo. One is independent artists, and small-scale event organisers. The other is social people who want to find exciting new events in their area.

### Tech Stack
- Ruby on Rails
- HTML
- CSS (all custom)
- Limited Javascript
- Deployed on Heroku
- Postgresql database on Heroku
- Active Storage configured with AWS S3 for User uploads

---
## 6. User Stories (R12)

### The Rubber Duckies
The Rubber Duckies (The Duckies) are an independent 4-piece rock band from Brisbane. They are planning a small tour of 3 shows in Brisbane, Sydney and Melbourne. The Duckies don’t have a booking agency so they’re organising it all on their own. Between booking transport, accommodation, organising press releases and liaising with support acts, the band has had little time to organise online event pages, promotion and ticket sales. They do understand the potential negative outcomes of poor event organisation, but feel overwhelmed by the process and don’t know where to start.

The Brisbane and Sydney venues have offered to handle the event listing and ticketing for the band, but each venue would use their own accounts with different major event management and ticketing platforms. This would mean that The Duckies must send all of the event details to the respective promoter at each venue. Any changes to event details regarding support acts, set times, special ticket allocations etc. must be sent to each venue to update. The Duckies will also have to contact each venue individually when trying to find out ticket sales. Also, as the Melbourne venue is a smaller, hipster venue, they do not offer any ticketing or promotion services. The Duckies will have to list this show on social media and sell entries at the door, or try to set up an account with one of the major event organisation platforms that the other venues use.

When venting on their frustrations to another band, The Duckies are suggested to have a look at Shofo - an app targeted towards independent artists and event organisers. The Duckies see the simple and clear layout of the app and decide to give it a go. They set up three events, one for each show and share them on social media. They buy a test ticket to their own show and scan it with their default iPhone camera app, and are impressed at how it shows the ticket validation status along with details about the ticket holder including their full name and legal drinking age status. This gives them the idea to invite their friend Tom on tour to help scan tickets. Tom accepts and is impressed at how easy it is to scan tickets, feeling confident he can handle the door.

Whilst on tour several details about each show needs changing, but The Duckies are able to log into their account and change the details for whichever show they need. Tom enjoys scanning people in at the door, and thinks he has probably got the cushiest job in the world. Several of The Duckies’ fans commented after the show about how simple it was to buy tickets to the show and have the tickets right there in a virtual wallet. They mention that they found other shows to go to this week and love that all of the tickets and show details are in one place.

### Jenny
Jenny is a live music fan. She hears that one of her favourite, lesser-known bands, The Rubber Duckies are coming to Melbourne in a few weeks and notices that their show is listed on a new website called Shofo. She is a bit sceptical at first as she has not heard of the service before. When she visits the events page she notices the clean and inviting design and feels okay about signing up for an account.

She immediately buys a ticket to The Duckies’ Melbourne show and is pleasantly surprised that the ticket immediately pops up in her wallet. She is worried there might be some issues with the ticket as this is a new service so she scans the ticket with her friend’s phone and after signing into her account, she is pleased to see that the ticket is valid. She is, however, concerned about privacy, as the ticket shows her personal details. She signs into her friend’s account to check the ticket, but this time notices that although it is still showing that the ticket is valid, the only personal details it shows is her last name.

After buying tickets to the show she continues browsing Shofo and discovers that some other cool bands she heard about are playing in town the following night, and also there happens to be a cool photography exhibition happening down the road in an old warehouse! She buys tickets to both and is very impressed at how the events automatically show up in her personalised social calendar.

Jenny is feeling excited for the show, but she is a bit confused about The Duckies’ choice of venue. It is a very cool spot for a gig, but the venue is a small-scale operation… more of a dive bar. She wonders how the venue is going to handle this modern ticket-validation service.

When Jenny gets to the show, she’s greeted by the band’s friend Tom. Jenny shows Tom her ticket and he scans it using his iPhone, the validation pops up on Tom’s screen and Jenny is allowed into the venue. After the show Jenny tells the band how much she loved the experience of buying tickets on Shofo and how she discovered some other cool events to attend.

## 7. Wireframes for your app (R13)

Event Mobile
![Wireframe Event Mobile](/docs/WireframeEventMobile.png)

Event Desktop 1
![Wireframe Event Desktop](/docs/WireframeEventDesktop.png)

Event Desktop 2
![Wireframe Event Desktop](/docs/WireframeEventDesktop2.png)

Event Desktop 3
![Wireframe Event Desktop](/docs/WireframeEventDesktop3.png)

Home Mobile
![Wireframe Home Mobile](/docs/WireframeHomeMobile.png)

Home Desktop
![Wireframe Home Desktop](/docs/WireframeHomeDesktop.png)

Menu Mobile
![Wireframe Menu Mobile](/docs/WireframeMenuMobile.png)

Menu Desktop
![Wireframe Menu Desktop](/docs/WireframeMenuDesktop.png)

Browse Mobile
![Wireframe Browse Mobile](/docs/WireframeBrowseMobile.png)

Browse Desktop
![Wireframe Browse Desktop](/docs/WireframeBrowseDesktop.png)

Signup Mobile
![Wireframe Signup Mobile](/docs/WireframeSignupMobile.png)

Signup Desktop
![Wireframe Signup Desktop](/docs/WireframeSignupDesktop.png)


## 8. ERD (R14)

ERD Diagram: 

![ERD](/docs/ERD.png)

## 9. High-level Components (abstractions) In Shofo (R15)

Shofo follows a Model View Controller (MVC) architecture pattern, which abstracts the app's structure into three different components: the Model, View and Controller.

### Model

The model component is responsible for maintaining data and handling business logic. In a typical rails project this logic is made easy thanks to the ActiveRecord module. ActiveRecord communicates directly with the database and is integral to structure of an application's model.

The primary models in Shofo include:

- User
- Event
- Ticket
- Category

### View

The view component is responsible for handling the graphical user interface elements of an application. In Shofo this includes the html elements that are sent to the browser for rendering, and the data within them.

A typical Rails application will use `.erb` files which contain ruby embedded in html. This allows for powerful dynamic generation of html elements. Each view in Shofo can be thought of as a page on the website, but is also associated with a specific action from a Controller (more on this shortly). 

There are many views in Shofo *(third party services like Devise include many views, which won't be listed here)* but the primary views include:
- Home
- Browse
- Show (for displaying event listing)
- Host
- Wallet
- Calendar
- Validate (for ticket validations)
- About
- Help

Views can also render partials. These are similar to regular views, with the exception that they are re-usbale components that can be re-used across different views. For example, in shofo the `new` and `edit` views for the `events controller` both render the `_form` partial which is just a form for filling out an event's details.

It's also important to point out the the `application` view is like a main view, which yields all other views inside it's `<body>` tags. This abstraction allows the same `<head>` tags, as well as navs and footers, can all be included once in the `application` view. The rest of the views in the app can contain only the content to go inside the `<body>` tags.

### Controller

The controller component can be thought of as the middle-man between the models and views. All of the views in Shofo rely on controllers to access data from the models. And similary, if an interaction with the view needs to alter the state of a model, it should use the controller to implement these changes in the model. The controllers in Shofo contain the logic involved in both parsing and organising data to be used in views, as well as the logic involved with altering models based on interactions with the view.

The primary controllers within Shofo are:

- Browse
- Events
- Pages
- Payments
- Tickets

Each controller can have several methods, referred to as actions. These actions can be assoiciated with routes in the application which use actual HTTP methods like POST, GET, and DELETE. These actions can also be associated with a view, as discussed above. Any logic that a view relies on should be included within this view, or referenced from a private method and passed as a variable.

Controllers can also implement helper_methods which are abstracted methods, to be used accross an application but still deal directly with a controller.

All controllers in the application actually inherit from the `Application Controller`, which inherits from a controller called `Action Controller`. This is how all of the controllers in Shofo can use common helper methods such as `before_action`, which calls a method before a particular action.

### Inheritance

We touched inherritance briefly when discussing the controller component. This concept deserves a discussion of its own, as it is an integral part of MVC architecture.

In programming, inheritance refers to when a class *'inherits'* the qualities of another class, such as its attributes and methods. The higher class can be reffered to as a *superclass*, while the inheriting class can be thought of as a *subclass*.

Rails uses this same concept. The `Application Controller` inherits all of the actions and helper methods of the super class `Action Controller` and all of the other controllers, like `Events Controller` inherit from the `Action Controller`. All of the models in Shofo inherit from the Application Record model which inherits from a super class, known as the Active Record model.

A lot of the behind the scenes *'magic'* in ruby is really just logic inside of these super classes. This inheritance is why following the MVC architecture pattern is so intuitive in a Rails application.


## 10. Third Party Services (R16)

### Stripe
Stripe is a third-party service for processing and validating payments. In Shofo, a new Stripe ‘session’ is created when the user visits an event page where the price is greater than $0. Inside the initializer for this session, the sale item’s details (in this case the ticket’s details) are passed in so that the Stripe API can generate a payment page. The required details include: the item’s name (ticket event title), price, currency and quantity. Metadata can also be passed in, which will persist through until the end of the purchase. This means information like the Event ID, Current User ID and Seller ID can be passed to the payment page.

```ruby
if @event.price > 0 && user_signed_in?
    session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    customer_email: current_user.email,
    line_items: [{
        name: @event.title,
        images: [url_for(@event.event_image)],
        amount: @event.price * 100,
        currency: 'aud',
        quantity: 1
        }],
    payment_intent_data: {
        metadata: {
        event_id: @event.id,
        user_id: current_user.id,
        seller_id: @event.user_id
        }
    },
    success_url:"#{root_url}payments/success?id=#{@event.id}",
    cancel_url:"#{root_url}events/#{@event.id}"
    )
    @session_id = session.id
end
```
Upon a successful payment, a webhook can be configured in the Stripe dashboard to be generated and directed to a specific action inside the Shofo app’s Payment Controller. Inside this webhook is information about the payment success data as well as the metadata that was fed to the Stripe API.  A webhook action in the Payment Controller which creates a new Ticket based on the provided metadata.

```ruby
def webhook
    payment_id = params[:data][:object][:payment_intent]
    payment = Stripe::PaymentIntent.retrieve(payment_id)
    @event_id = payment.metadata.event_id
    @user_id = payment.metadata.user_id
    @seller_id = payment.metadata.seller_id

    p "Event ID: #{@event_id}"
    p "User ID: #{@user_id}"
    p "Seller ID: #{@seller_id}"

    # Create a new ticket for user
    Ticket.create(
        event_id: @event_id,
        seller_id: @seller_id,
        holder_id: @user_id
    )
end
```
In case of a failed payment, the user will be directed to a cancel_url provided in the session initializer.

### Rqrcode
The rqrcode gem is used to generate qr codes for tickets. Any string of characters can be converted into a qr code by creating a new QRCode object and passing it a string. This is the fundamental part of Shofo’s ability to validate tickets. In the routes.rb file I set up a new route as the following: `get 'tickets/:secret', to: 'tickets#validate', as: 'ticket_validation'`

Each ticket in the database has a unique UID allocated to it, which is referred to as :secret. The string that is passed to the QRCode object is simply the `base_url + “/tickets/” + the :secret, (e.g. shofo.com/tickets/1234-abcde-1f2g3h… etc.)`

```ruby
def qr_code(secret)
    RQRCode::QRCode.new("#{request.base_url}/tickets/#{secret}").as_svg(
        offset: 0,
        standalone: true,
        module_size: 11,
        viewbox: true,
        use_path: true
        ).html_safe
 end
 ```

When a qr code is scanned by a camera app, it will show the link embedded in the qr code. When the user follows that link, if the url is a valid route, Shofo can then redner the appropriate content in the view. If however the :secret is invalid, Shofo can still use the route but logic can be used to render an invalid ticket view. More details of how this was implemented can be found in the Functionality section of this document.
Because the qr code was set up as a method in the ticket controller, we can call it in the wallet view and add it to the ticket component, like this:
```html
<div class="ticket-card-stub">
    <%= qr_code(ticket.secret) %>
</div>
```

### Devise
Devise is a ruby gem that handles user authentication throughout the app, its helper method current_user is also used to implement user authorization. Setting up Devise is rather simple. The command `rails g devise:install` will install devise and show a list of commands that need to be followed in order to properly set up the gem. `rails g devise User` will generate a User model but via the devise gem. What this actually sets up is an abundance of routes, views, helper methods and more.

The model created will contain some default attributes such as email and encrypted password, but further attributes can be added to the model through migrations, and can be validated in the model file like so:  `validates :phone_number, presence: true`.

Devise also provides a method in the documentation that should be added to the application controller to configure permitted parameters. Any new attributes added to the model should be also be added here.

Some of the more commonly used helper methods throughout Shofo are:

- **`user_signed_in?:`**
A method that returns true of false depending on whether a valid user is signed in, allowing for example, manipulation of the view for signed in users. In some areas of the app it also helped authenticate users, where the standard :authenticate_user before_action couldn’t be used. For example, on the show method of the event controller. Realistically we want people to be able to view events even if they are not logged in, however when viewing an event that has a price above $0, a Stripe Session is initiated, which would throw an error if there was no user signed in (because it is passed the user_id). To fix this, a condition was added that a Stripe Session should only be created if user_signed_in? is true.

- **`current_user:`**
A method that returns the record of the current user. This was used throughout Shofo as a form of user authorization, for example the current user’s id could be compared to an event’s user_id using current_user.id. If the two ids match, then the user will be authorised to edit the event. In most cases this was set up as a private method that could be called as a before_action for specific actions such as edit, update, destroy but also for rendering buttons in the view.

### Google Maps Embed API & Geocoder
Google Maps Embed API was used for generating maps based on geolocations and required very little set up. It works by sending a request to a url dynamically set in the event controller, from an iframe element in the event view.

**Controller:**
```ruby
@google_embed = "https://google.com/maps/embed/v1/place?key=#{Rails.application.credentials.google_maps_api_key}&q=#{@event.address}&center=#{@event.latitude},#{@event.longitude}&zoom=17"
```

**View:**
```html
<div class="google_map">
    <iframe
        width="500px"
        height="400"
        referrerpolicy="no-referrer-when-downgrade"
        frameborder="0" style="border:0"
        src="<%=@google_embed%>"
        allowfullscreen>
    </iframe>
</div>
```

The google api requires three things to be dynamically added to the url: an api key for using the service, a valid address for placing a drop pin, and a longitude + latitude for centering the map.

The api key is placed in the credentials file and can easily be placed in the url. The event address can be pulled from the event record and the longitude + latitude is where the Geocoder gem comes into play.

Geocoder is a gem that provides longitude and latitude of a valid address. It’s also surprisingly simple to set up, simply add `geocoded_by :address` to the model and include a method that returns a valid address. In Shofo the method is actually in the model, and works by joining the individual address attributes into a single string to be used by Geocoder. The only other requirement for Geocoder is to include a longitude and latitude column in the table, of type float, and to actually trigger the geocoding after the record is validated.

```ruby
 geocoded_by :address
 after_validation :geocode
 
 # constructs a full address variable from multiple address data
 def address
   if self.address_line_1 != nil && self.address_line_2 == nil
     return "#{self.address_line_1}, #{self.city}, #{self.state}"
   elsif self.address_line_2 != nil && self.address_line_1 == nil
     return "#{self.address_line_2}, #{self.city}, #{self.state}"
   else
     return "#{self.address_line_1}, #{self.address_line_2}, #{self.city}, #{self.state}"
   end
```

With this set up, it’s simple to dynamically provide the longitude and latitude of each event to the @goole_maps url. 

### Ransack
Ransack was used for Shofo’s search capabilities. This gem can be configured via the ransack.rb file in the initializers folder, the only configuration that was changed for shofo was to hide the sorting arrows on the sort buttons. To implement the feature the variable `@q` is set to a list of records to be searched through, in Shofo this list is simply all events where the status is **scheduled** or **in_progress**. 

```ruby
@q = Event.where(event_status: [1,2]).ransack(params[:q])
```

The list also has a method applied, that gets passed a list of parameters from the `search_form`. The search form simply contains an input field for typing in search queries and a select menu for selecting from a list of locations (Australian states). The `search_form` sends the search queries to the ransack method as parameters which it can then use to search through `@q`.

In the browse controller we can see that `@filtered_events` is set to `@q.result(distinct)`. Which is just another ransack method applied to the original list that returns the results of the search.

```ruby
@filtered_events = @q.result(distinct: true)
```

With this new @filtered_events variable set, the results can now be iterated through and rendered to the view.

```erb
    <% @filtered_events.each do |event| %>
```

### Flickity
Flickity is an api used for creating the two carousels on Shofo. One for the tickets and one for featured events on the homepage. Flickity is installed as a node_module and is initiated using javascript, which can be seen in the application.js file:

```js
window.Flickity = require('flickity')
window.addEventListener( "turbolinks:load", function() {
    new Flickity( '.carousel', {"wrapAround": true, 'friction': 0.6, 'dragThreshold': 10});
})
```
It is important to note that flickity should be initiated on `Turbolinks:load` and not on the page load, as all other assets must be loaded for flickity to operate properly.

Flickity knows to use the api for elements on the page whose class is `.carousel`, it then applies the API logic to the elements inside the carousel with the class `.carousel-cell`.

```erb
<div class="carousel">
    <% @tickets.each do |ticket| %>
        <%  @event = Event.find(ticket.event_id) %>
        <div class="carousel-cell">
            <div class="ticket-card">
                <a href="<%= event_path(ticket.event_id)%>">
                    <div class="ticket-card-header">
                        <span class="ticket-card-date"><%= @event.start_date.strftime("%a %d %b")%></span>
                        <span class="ticket-card-label"><%= truncate(@event.title, length:20)%></span>
                        <span class="ticket-card-details">Paid: $<%= @event.price.fdiv(100)%>
                        <br>Start Time:<%= @event.start_date.strftime("%I:%M%p")%>
                        <br>Ticket #<%= ticket.id %></span>
                    </div>
                </a>
                <div class="ticket-card-stub">
                    <%= qr_code(ticket.secret) %>
                </div>
            </div>
        </div>
    <% end %>
</div>
```

The flickity carousel can also be styled using css. A list of classes that can be targeted are in the Flickity documentation. In Shofo, CSS rules were used to remove the buttons on mobile devices and only show them on desktop devices. Also, additionally options were added to the initializer, such as: `‘wrapAround’` for enabling the carousel to wrap back to the first cell, `‘friction’` for controlling the speed and control of the slider, and `‘dragThreshold’` for increasing the distance (pixels) a cell needs to be dragged before it starts to move. (`dragThreshold` was added because using Flickity on a mobile devise could get annoying when trying to 


 ## 11. Description of Shofo's models & discussion of the database relations to Implemented (R17 & R18)

### User Model
Users can have zero to many events. When a user first creates their account they should have no events created, but can then go on to create many events. Similarly, a user can have zero to many sold tickets and zero to many bought tickets. When a user creates their account they will have no tickets, but as they sell tickets to their events they will have many sold tickets, and if they buy tickets to events, they will have many bought tickets. In the database the User table is related to both the Event and Ticket tables as outlined in the below table:

| Relationship | Active Record Association | Example |
| ------------- | ------------- | ---------- |
| A user has many events (created)  | has_many :events  |  User.find_by(id: 1).events will return all records of events that the user has created. |
| A user has many sold tickets | has_many :sold_tickets, foreign_key: “seller_id”, class_name: “Ticket” | User.find_by(id: 1).sold_tickets will return all records of tickets where the id from the stated User record matches that of the seller_id of each Ticket record. |
| A user has many bought tickets | has_many :bought_tickets, foreign_key: “holder_id”, class_name: “Ticket” | User.find_by(id: 1).bought_tickets will return all records of tickets where the id from the stated User record matches that of the holder_id of each Ticket record. |

### Ticket Model
Tickets must belong to one and only one event. In fact, tickets can only be generated by the book ticket button on event pages, which creates a new ticket to the event using the relevant event id. The ticket must belong to both a buyer and a seller user. The buyer, known as the ticket holder, is the current user that is signed in; while the ticket seller is the user of which the event belongs to. In the database the Ticket table is related to the User and Event tables as outlined in this table:

| Relationship  | Active Record Association | Example |
| ------------- | ------------- | -------- |
| A ticket belongs to an event. | belongs_to :event | Event.find_by(id: 1).event will return the event of which the ticket was bought to |
| A ticket belongs to a ‘holder’ user. | belongs_to :holder, foreign_key: “holder_id”, class_name: “User” | Ticket.find_by(id: 1).holder will return the record of a User, who in the User table has the matching id to the holder_id of the Ticket record. (aka the ticket holder) |
| A ticket belongs to a ‘seller’ user. | belongs_to :seller, foreign_key: “seller_id”, class_name: “User” | Ticket.find_by(id: 1).seller will return the record of a User, who in the User table has the matching id to the seller_id of the Ticket record. (aka the ticket seller) |

### Event Model
An event must belong to one and only one category. The category is selected in the new event form and cannot be left nil. An event must also belong to one and only one user, that is of course the user that created the event. An event has zero to many tickets. When an event is first created it has no tickets, but as users book tickets to the event these tickets will belong to the event record. In the database the Event Table will relate to the Category, User and Ticket tables as outlined in the table below.

(As an aside, an event should also have an image attached, which is a relation to the Active Storage Model. It should also have a rich text description attached, which is a relation to the Action Text Model.)

| Relationship  | Active Record Association | Example |
| ------------- | ------------- | -------- |
| An event belongs to a category. | belongs_to :category | Event.find_by(id: 1).category will return the record of the category that the event belongs to |
| An event belongs to a user. | belongs_to :user | Event.find_by(id: 1).user will return a record of the user who created the event |
| An event has many tickets. | has_many :tickets | Event.find_by(id: 1).tickets will return all records of tickets bought to the event. |
| ***Extras*** | -------------- | -------------- |
| An event has a rich text description. | has_rich_text :description | Event.find_by(id: 1).description will return the Action Text Model record (used for event descriptions) belonging to the event |
| An event has an attached image. | has_one_attached :event_image | Event.find_by(id: 1).event_image will return the Active Storage Model record containing the event’s hero image |

### Category Model
A category should belong to 0 to many events. A category may have no events belonging to it, however it also may have many. When an event is created, it is required that it belongs to a category, which is selected in the new event form. The Category table in the database, is related to the Event table as outlined below:

| Relationship  | Active Record Association | Example |
| ------------- | ------------- | -------- |
| A category has many events. | has_many :events | Category.find_by(id: 1).events will provide us with all of the events that have the category id of 1, and thus belong to this category. |


## 12. Shofo Database Schema (R19)

```ruby
ActiveRecord::Schema.define(version: 2022_07_05_122713) do

 enable_extension "pgcrypto"
 enable_extension "plpgsql"
 enable_extension "uuid-ossp"
 
 create_table "action_text_rich_texts", force: :cascade do |t|
   t.string "name", null: false
   t.text "body"
   t.string "record_type", null: false
   t.bigint "record_id", null: false
   t.datetime "created_at", precision: 6, null: false
   t.datetime "updated_at", precision: 6, null: false
   t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
 end
 
 create_table "active_storage_attachments", force: :cascade do |t|
   t.string "name", null: false
   t.string "record_type", null: false
   t.bigint "record_id", null: false
   t.bigint "blob_id", null: false
   t.datetime "created_at", null: false
   t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
   t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
 end
 
 create_table "active_storage_blobs", force: :cascade do |t|
   t.string "key", null: false
   t.string "filename", null: false
   t.string "content_type"
   t.text "metadata"
   t.string "service_name", null: false
   t.bigint "byte_size", null: false
   t.string "checksum", null: false
   t.datetime "created_at", null: false
   t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
 end
 
 create_table "active_storage_variant_records", force: :cascade do |t|
   t.bigint "blob_id", null: false
   t.string "variation_digest", null: false
   t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
 end
 
 create_table "categories", force: :cascade do |t|
   t.string "name", null: false
   t.datetime "created_at", precision: 6, null: false
   t.datetime "updated_at", precision: 6, null: false
 end
 
 create_table "events", force: :cascade do |t|
   t.string "title", null: false
   t.datetime "start_date", null: false
   t.datetime "end_date", null: false
   t.string "venue"
   t.boolean "private", default: false, null: false
   t.integer "capacity"
   t.integer "price", default: 0, null: false
   t.bigint "user_id", null: false
   t.integer "event_status", default: 1, null: false
   t.bigint "category_id", null: false
   t.string "sub_category"
   t.datetime "created_at", precision: 6, null: false
   t.datetime "updated_at", precision: 6, null: false
   t.float "longitude"
   t.float "latitude"
   t.string "address_line_1"
   t.string "address_line_2"
   t.string "city"
   t.string "state"
   t.index ["category_id"], name: "index_events_on_category_id"
   t.index ["user_id"], name: "index_events_on_user_id"
 end
 
 create_table "tickets", force: :cascade do |t|
   t.bigint "event_id", null: false
   t.bigint "holder_id", null: false
   t.bigint "seller_id", null: false
   t.datetime "created_at", precision: 6, null: false
   t.datetime "updated_at", precision: 6, null: false
   t.uuid "secret", default: -> { "uuid_generate_v4()" }, null: false
   t.index ["event_id"], name: "index_tickets_on_event_id"
   t.index ["holder_id"], name: "index_tickets_on_holder_id"
   t.index ["seller_id"], name: "index_tickets_on_seller_id"
 end
 
 create_table "users", force: :cascade do |t|
   t.string "email", default: "", null: false
   t.string "encrypted_password", default: "", null: false
   t.string "reset_password_token"
   t.datetime "reset_password_sent_at"
   t.datetime "remember_created_at"
   t.string "phone_number", null: false
   t.datetime "created_at", precision: 6, null: false
   t.datetime "updated_at", precision: 6, null: false
   t.string "first_name", null: false
   t.string "last_name", null: false
   t.date "date_of_birth", null: false
   t.index ["email"], name: "index_users_on_email", unique: true
   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
 end
 
 add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
 add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
 add_foreign_key "events", "categories"
 add_foreign_key "events", "users"
 add_foreign_key "tickets", "events"
 add_foreign_key "tickets", "users", column: "holder_id"
 add_foreign_key "tickets", "users", column: "seller_id"
end
```

## 13. Project Management (R20)

Tasks for this project were tracked using Trello. Each major task was represented as a card, some containing checklists of smaller sub-tasks. When a task was started it was moved to the in-progress column. As a task was completed it was moved to the completed column. The Trello board can be found here: https://trello.com/b/qV96xUlr
