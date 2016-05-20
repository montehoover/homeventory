# Homeventory

Homeventory is home inventory management app, designed for mobile use.  Now you can track the groceries you frequently use and never be stuck at the store trying to remember if you need to buy that dishwasher detergent.

**Architecture:**

Homeventory is built on the Ruby on Rails framework, and draws from a PostgreSQL database.  The client side was done manually with jQuery and templated with ERB (Embedded Ruby).  The layout was managed with Bootstrap and Sass was used as a CSS preprocessor.

Inside, the app draws on the Factual


**Design Work:**

Wireframe: <https://ninjamock.com/s/TV7WD>

**Implementation Methodology:**

After an initial session clarifying our user stories and intended app purpose, we made wireframes and got a feel for the user experience. One of the harder steps for us involved structuring our tables - initially we were envisioning more models but ended up consolidating down by using boolean toggling within our main items table. This table structure also continued to evolve throughout the project with numerous added migrations. We also discussed our goals for this project and categorized them based on feasibility and importance to basic function. This helped up focus on the most important tasks, particularly 
    
After this planning stage we distributed the work (2 people working front-end, 2 on back-end), started the basic routes/controllers, and began work on a unified design template. We continually discussed user experience and did our best to keep required clicks for any action to a minimum. We also regularly revisited our master goals list to make sure we weren’t taking on any tasks that would affect our overall ability to make a clean functioning app.
    
After getting to a point that we were all happy with, we started testing and refining. Inconsistencies in styling were removed and all buttons and routes were tested. We repeated this process after deployment and corrected a few small issues.
