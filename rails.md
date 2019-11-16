# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: 
  A design pattern!
  Controller - takes the HTTP request from the middleware and controls the behavior into views of models
  Model - Business Logic
  View - "package" of how data can be viewed

  Researched answer: "Model–View–Controller (usually known as MVC) is a software design pattern[1] commonly used for developing user interfaces which divides the related program logic into three interconnected elements. This is done to separate internal representations of information from the ways information is presented to and accepted from the user.[2][3] Following the MVC architectural pattern decouples these major components allowing for code reuse and parallel development."



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the ____ path for the route _____ in the file config/routes.rb
 
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ______ static controller ______ in the file ______ for the static controller_______

  ```
  class _____StaticController_______ < ApplicationController
    def _____about______
      render _______"index.html.erb"_________
    end
  end
  ```

  Step 3: Create the View in the file ______ index.html.erb ________
  code:
  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of  each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'
#view all users
/users/1      method="GET"     # :controller => 'users', :action => 'show'
#view user with id 1
/users/new    method="GET"     # :controller => 'users', :action => 'new'
#return an HTML form for creating a new user
/users/       method="POST"    # :controller => 'users', :action => 'create'
#create a new user 
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
#return an HTML form for editing a user with id 1
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
#edit a user with id 1 
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'
#destroy a user with id 1


3b. Which of the above routes must always be passed params and why?
update(put), delete, new(post)
this is sent through the body 


4. What is the public folder used for in Rails?

  Your answer: static assest

  Researched answer: "the public folder is used to serve static files"



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

get '/game/:guess' => 'main#game'



6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer:  :method => :put action is the path

  Researched answer:
  "One of the most basic forms you see on the web is a search form. This form contains:

  a form element with "GET" method,
  a label for the input,
  a text input element, and
  a submit element."


7. Name two rails generator commands and what files they create:

  Your answer: generate migration -> change the shape of the database
  generate resource -> creates boilerplate and paths for controller, model, and routes

  Researched answer: https://dev.to/alicannklc/rails-generator-cheatsheet-1dfn


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1.Convention Over Configuration

2. "The easiest way to work with Rails is to store all external data as UTF-8. If you don't, Ruby libraries and Rails will often be able to convert your native data into UTF-8, but this doesn't always work reliably, so you're better off ensuring that all external data is UTF-8."

3. "Sessions enable the application to maintain user-specific state, while users interact with the application. For example, sessions allow users to authenticate once and remain signed in for future requests."
 -https://guides.rubyonrails.org/security.html

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer: session - stored per user on the server
  cookies - stored per user on the client

  Researched answer:
"Sessions are stored per-user in memory(or an alternative Session-State) on the server. Sessions use a cookie(session key) to tie the user to the session. This means no "sensitive" data is stored in the cookie on the users machine.

Sessions are generally used to maintain state when you navigate through a website. However, they can also be used to hold commonly accessed objects. Only if the Session-state is set to InProc, if set to another Session-State mode the object must also serializable."
"Cookies are stored per-user on the users machine. A cookie is usually just a bit of information. Cookies are usually used for simple user settings colours preferences ect. No sensitive information should ever be stored in a cookie.

You can never fully trust that a cookie has not been tampered with by a user or outside source however if security is a big concern and you must use cookies then you can either encrypt your cookies or set them to only be transmitted over SSL. A user can clear his cookies at any time or not allow cookies altogether so you cannot count on them being there just because a user has visited your site in the past."