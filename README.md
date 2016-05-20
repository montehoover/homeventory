# Homeventory

Homeventory is home inventory management app, designed for mobile use.  Now you can track the groceries you frequently use and never be stuck at the store trying to remember if you need to buy that dishwasher detergent.

<https://homeventory.herokuapp.com>



**Architecture:**

Homeventory is built on the Ruby on Rails framework, and draws from a PostgreSQL database.  The client side was done manually with jQuery and templated with ERB (Embedded Ruby).  The layout was managed with Bootstrap and Sass was used as a CSS preprocessor.

Inside, the app draws on the Factual Products API for search results and attaching images to product information, and uses OAuth to provide Facebook user authentication.



**Design Work:**

Wireframe: <https://ninjamock.com/s/TV7WD>



**User Stories:**

Everyone has had the experience of forgetting a shopping list on a grocery trip and being forced to try to recall from memory everything you need, inevitably forgetting something (or a few things). Perhaps even worse is returning home from a grocery trip to realize you're out of something essential that somehow slipped past you, and now you have to make a second trip to the grocery store to get it. Homeventory was created to give users a way to keep track of their home inventory that is always accessible so that they can cut down on trips to the grocery store and make sure they never have to go without the items they need.


**Implementation Methodology:**

After an initial session clarifying our user stories and intended app purpose, we made wireframes and got a feel for the user experience. One of the harder steps for us involved structuring our tables - initially we were envisioning more models but ended up consolidating down by using boolean toggling within our main items table. This table structure also continued to evolve throughout the project with numerous added migrations. We also discussed our goals for this project and categorized them based on feasibility and importance to basic function. This helped up focus on the most important tasks, particularly 
    
After this planning stage we distributed the work (two people working front-end, two on back-end), started the basic routes/controllers, and began work on a unified design template. We continually discussed user experience and did our best to keep required clicks for any action to a minimum. We also regularly revisited our master goals list to make sure we weren’t taking on any tasks that would affect our overall ability to make a clean functioning app.
    
After getting to a point that we were all happy with, we started testing and refining. Inconsistencies in styling were removed and all buttons and routes were tested. We repeated this process after deployment and corrected a few small issues.


**Installing locally:**

1. Clone the project or download the zip file.
2. From the command line inside the project directory, run "bundle install".
3. Again on the command line, run "rake db:create".
4. Run "rake db:migrate".
4. To start the server on localhost:3000, run "foreman run rails server".
Now you're up and running Homeventory!
