# CDIM6325-Final-Project

As previously discussed, my final project will be a ticket selling application for venues located in Madison Wisconsin.
Not only does this allow for appropriate Django feature use and SEO capabilities, it is a passion project for me personally. 

The domain name I plan on using is MadCityTickets.com as it hits on the ticket keyword and also help specify location.

I plan on using VPS Deployment, which is considered a better component, for deployment of the app. 


## User Features
|User Feature Name & Description|Associated Django Feature|
|--------------------------|-------------------------|
Main Landing Page - This will be the home page that users see first, it will highlight new shows, have links to venue's event calendars, and will allow users to search for venues and shows.| Routing/Linking - Baseline, Django Watson Search - Best, URLS - Baseline, Views - Baseline, Static Files - Baseline, Bootstrap - Baseline, SSL - Baseline, 
Unique User Logins - Venues and potential customers will be able to create a login. For customers this will allow them to purchase tickets, review venues, and add discussion about upcoming events.  For venues, it will allow them to start creating events, have their own venue calendar, get reviewed and join our ticketing network.| Authentication - Baseline, Custom User Models - Good, Class Based Forms - Baseline, Email Integration - Good, Tests- Good, Django Admin Configuration - Baseline, Model Classes - Baseline, Bootstrap - Baseline, Custom Templates - Good, Account Management - Good, SSL - Baseline
Shopping Cart / Checkout - Feature that allows users to put tickets in their shopping cart and pay for their tickets.| Shuup Django Ecomerce - Best,Views - Baseline, Tests- Good, SSL - Baseline
Event Calendars - Each venue will have their own monthly event calendar, where show dates will be listed.  Customers will also be able to click into an event page link via the calendar and buy tickets. In addition there will be a total Madison calendar that features all venues. Calendars will be updated automatically at midnight on the first day of each month using cron task scheduling.| Templates & Template Inheritance - Baseline,  Routing/Linking - Baseline, Cron Task Scheduling - Good, Class Based Views - Baseline, Tests- Good, Model Classes - Baseline, Static Files - Baseline, Bootstrap - Baseline, SSL - Baseline
Invidual Event Pages - These pages will feature information about specific individual events, and allow customers to buy tickets from this page. Customers will also be able to contribute to discussion around the event on this page and get to the applicable venue page.  From a venue's account they will be able to edit event information and participate in the discussion.|Templates & Template Inheritance - Baseline, Ad Hoc Forms - Good, Class Based Views - Baseline,Templates & Template Inheritance - Baseline, Routing Baseline, Tests- Good, Model Classes - Baseline, Static Files - Baseline, Quieries - Baseline, Bootstrap - Baseline, SSL - Baseline, Django Image Kit - Best
Venue Pages - These pages from a customer view will feature venue information, event calendars and allow users to rate venues and upload photos of the venue. If viewing the venue page as the appropriate venue user, the user will be able to edit venue information, create events for sed venue, and upload images of the venue.| Authorization - Good, Templates & Template Inheritance - Baseline, Class Based Views - Baseline, Ad Hoc Forms - Good, Tests- Good, Model Classes - Baseline, Static Files - Baseline, Quieries - Baseline, Bootstrap - Baseline, SSL - Baseline, Django Image Kit - Best


## Django Features
|Django Feature Name| Associated User Feature|
|-------------------|------------------------|
|Authorization - Good|Venue Pages|
|Templates - Baseline|Event Calendar, Individual Event Pages, Venue Pages|
|Template Inheritance - Baseline|Event Calendar, Individual Event Pages, Venue Pages|
|Views - Baseline| Main Landing Page, Shopping Cart|
|Class Based Views - Baseline| Event Calendars, Invdividual Event Pages, Venue Pages|
|URLS - Baseline| Main Landing Page|
|Routing - Baseline| Main Landing Page, Event Calendars, Individual Event Pages|
|Tests- Good| Unique User Logins, Shopping Cart/Checkout, Event Calendars, Individual Event Pages, Venue Pages|
|Model Classes - Baseline| Unique User Logins, Event Calendars, Individual Event Pages, Venue Pages|
|Django Admin Configuration - Baseline| Unique User Logins|
|Static Files - Baseline| Main Landing Page, Event Calendars, Indidvidual Event Pages, Venue Pages|
|Queries - Baseline| Individual Event Pages, Venue Pages|
|Class Based Forms - Baseline| Unique User Logins|
|Authentication - Baseline| Unique User Logins|
|Customer User Models - Good| Unique User Logins|
|Ad Hoc Forms - Good| Event Pages, Venue Pages|
|Bootstrap - Baseline| Main Landing Page, Unique User Logins, Event Calendar, Individual Event Pages, Venue Pages|
|Custom Templates - Good| Unique User Logins|
|Account Management - Good| Unique User Logins|
|Email - Good| Unique User Logins|
|SSL - Baseline| All|
|Cron Task Scheduling - Best| Event Calendar|
|Django Image Kit - Best| Individual Event Pages, Venue Pages|
|Shuup Django Ecomerce - Best| Shopping Cart/Checkout|
|Django Watson Search - Best| Main Landing Page|

All pages will use HTML coding and bootstrap formatting to go for that professional yet functional look.  In order to gain the necessary knowledge of the bootstrap formatting I will reference the guides at GetBootstrap.com.  I will also check on W3Schools mainly for HTML help, as they haves some extremely helpful guides as well.






