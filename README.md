# coding_bulls
Coding bull's ruby on rails project

Title: EventMe

Team Members: Sida Li, Priyans Nishithkumar Desai, Benny Jiang, Jun Jeon

Prompt: Make your own! Club events in Berkeley

Abstract
---
The team Coding Bulls is trying to build a web application wherein the Clubs and DeCals at UC Berkeley will be able to post information about their clubs and DeCals for example, it could be announcements or about info sessions in the beginning of the semester or to attract more people, there would be ongoing mid-semester posts about the happenings in the Clubs and DeCals. Clubs can sign up and post events that are coming up, but other people can also post when they see club events that can help other students. Users can follow each other and see what other users liked. Also, they can add an event to their dashboard if they like the event; they can also follow a specific type of category that they are interested in. The main motivation was that some students have hard time finding club events that they are interested on Facebook or other websites, so we decided to create a website so that students can find events that are happening in UC Berkeley.

Models
---
User: has name, email, and the type (which is used to determine if they are a club member who is interested in posting or just a user who is interested in exploring.) A user has many posts, categories, followers, and followings. Also, users have many posts added to their favorites and dashboard.

Post: Posts can have one image attached to itself, and they belong to a user -- only one user. Also, posts belong to a certain category, but they are optional. Posts can also have many adds and can belong in multiple users' dashboard.

Follow: Follow model is pretty simple. It consits of id of the follower and the id of the followed user. There is an id index to distinguish the users easily.

Category: categories belong to a user, but they don't have to belong to a user because some categories won't be as popular as others. If no user chooses this category, it does not belong to anyone. Category also has many posts. That is, posts are categorized before they are being posted.

Add: it connects the post model and the user model.

Features:
---
- Users can sign up using the sign up form through Devise and choose a type.
-A particular user has a dashboard, the categories of post they have created, their followers.
- Users can post events
- Users can follow each other to see events that they are interested
- Users can add the post to their dashboard to save it.
- Users can also favorite a certain category so that they can easily find the field that they are interested instead of going through the whole post board.
- If a user follows another user, then he or she can see what posts that he or she or following likes.
- When creating a post, a user can add the title and the content and the category to advertise the event.
- Users can also add an image to the post.
- Welcome page for users
- Tabs available to jump in between all posts and all users, all categories.
- Users can search up events by using keywords.
-

Gems:
---
- Devise: for signup purposes
- Faker: faker for data
- Kaminari: for pagination support
- Active Storage: for data storage




Labor:
--
Sida:
backend structure -> Post, Category, Followship (User and User relationship) and their controllers
helpers -> elaborate on the Flash message helper
gems: integrating Kaminari, Active Storage into the project
frontend -> write some view pages, integrate the Bootstrap framework into the project
database -> filling seeds.rb with Faker

Benny:
gem -> configure device gem to work locally
backend structure ->  the users functions including users registration and type separation
frontend ->  optimize UI in user profile part

Priyans:
Writing documentations in the beginning
mostly front end design using CSS and HTML
All post pages, post/show, post/new
implemented dashboard feature

Jun:
planned the overarching project details, which models we need
routes.rb, welcome page, how pages interact
Post User model interaction
Worked on frontend debugging using CSS and HTML
Follow model interaction of users










