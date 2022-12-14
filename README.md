# RECIPE APP

The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby
- Rails
- Postgresql
- Linters

### Key Features

- [Log in and registration of the user]
- [Recipe list ,Food list, Public recipe list pages]
- [Functionality to Generate a shopping list with total cost]

## Live Demo
- To be deployed

## Getting Started
-To get a local copy up and running follow these simple example steps.

### Prerequisites

- A Command Line Interface.
- Having Ruby installed.
- Setup Rails
- Postgresql
- A code editor like Visual Studio Clone.
- Git installed.
- 

To check if you have Git, Postgres and Ruby installed you can use the commands below:

 ```sh
   $ git --version
   $ ruby --version && irb
   ```
If you don't have Ruby, you can find a complete list of ways to install Ruby, including using third-party tools like rvm, see:

(https://www.ruby-lang.org/en/downloads/)
### 🛠 Installation & Set Up

If you installed git you can clone the code to your machine, or download a ZIP of all the files directly.


- Open the [Repository Link](https://github.com/NATASHA-ct/recipe_app_rails.git) of this project in GitHub.

- Once the files are on your machine, open capstone-ruby folder in [Visual Studio Code](https://code.visualstudio.com/).

### Install
 Start by cloning the repository.
 
- https://github.com/NATASHA-ct/BLOG-app-rails.git

  Navigate to the created folder.

- Initialize your project with Git.
- Make sure that your project has Postgres database set up.
- Run rails server and visi thttp://127.0.0.1:3000/ in your browser!

  ### run the following in your terminal:
  - gem install rails
  - gem install pg
  - bundle install (use this whenever you want add a gem in your gem file)
  - rails db:create
  - change your database password to suit yours in database.yml
  
  ### If the styling does not show please use this to install bootstrap
  - Installing bootstrap on an existing project Existing project
      ``` But if your project was started with import maps (the default in Rails 7), and you want to migrate to Bootstrap and a Javascript bundler (e.g., esbuild), well... the setup is not that straightforward.

      The first thing you'll need to do is to install the cssbundling-rails gem and then use the installer that the gem provides to generate the necessary configuration.

      bundle add cssbundling-rails
      ./bin/rails css:install:bootstrap
      Here's what the installer does.

      It creates the builds folder, and links it in the manifest file.
      It removes the application.css file because it generates its own.
      It adds a package.json file to store Javascript dependencies.
      It installs the foreman gem, and it generates a config file for it.
      It adds a bin/dev script to start your rails server, and watch for any changes to your CSS files.
      It creates the Bootstrap-specific scss file, which will be bundled into an application.css file.
      It installs all the Javascript dependencies listed in the package.json file.
      It appends the Bootstrap font path to the assets paths.
      It adds the Bootstrap Javascript import to the application.js file.
      And finally, it configures the build:css command and runs it to build the application.css file.```

### Usage
--Once you have your repository cloned on your machine, feel free to modify it as needed.
- run `rails s`  in your terminal to start the app

### Testing with Rspec and Capybara
  - In your terminal run > 
     bundle exec rspec
  - run rspec spec

### Deployment
 - To be deployed
  
## Authors
👤 **Natasha Tatenda Chirombe**

- GitHub: [@NATASHA-ct]((https://github.com/NATASHA-ct)
- Twitter: [@NatashaChirombe]
- LinkedIn: [Natasha Chirombe](linkedin.com/in/natasha-chirombe-1531aa17b)

👤 **NTARE GUY**

- GitHub: @githubhandle
- Twitter: @twitterhandle
- LinkedIn: LinkedIn

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

-Hat tip to all documentations used
-Inspiration 

## ❓ FAQ


#### [Question_1] Do I need to have a program to manage the database. 

##### [Answer_1] Yes you need postgesql or sqllite ,check installation online.

#### [Question_2] Can I access the owner database .

##### [Answer_2]No because its on their local database .

## 📝 License
This project is MIT licensed.

NOTE: we recommend using the MIT license - you can set it up quickly by using templates available on GitHub. You can also use any other license if you wish.
