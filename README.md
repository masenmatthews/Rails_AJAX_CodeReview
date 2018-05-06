# README

# _The Went-To-Bali E-commerce Refactor Extravaganza_

#### _A refactoring project intended to salvage the remains of an ecommerce site that was left high-and-dry by a developer who decided to move away without leaving behind a high-quality product. {May 4, 2018}_

#### By _Masen Matthews_

## Description
  This project is designed to simulate a situation where the main developer for an e-commerce site randomly decides to move away to Bali. The developer didn't leave behind a good README, any sort of well-kept commit history, and many swaths of code that could use some refactoring. Naturally, the goal of this project is to remedy all of these issues. Additionally, AJAX is added to enhance the online shopping experience.

## Specifications / User Expectations
  _This project adds the following functionality to the existing template:_
    * AJAX functionality for adding and deleting products to/from the shopping cart DONE
    * Ensures that the user can't add a negative number of items DONE
    * Adds flash messages for signing up, signing in, and signing out DONE
    * Adds Paperclip for image uploads IN PROGRESS
    * Adds Stripe for payment
    * Add password validations DONE
    * Add product validations DONE

## Setup/Installation Requirements

1. Clone GitHub repository to desktop or desired directory
2. Navigate to project directory in terminal
3. Install required gems, set up the database, and seed the database by running the following commands (in order) in the terminal. If you run in into an error while setting up the database, try opening another tab in the terminal and run $ postgres to ensure that your database can be set up correctly.
    ⋅⋅* $ bundle
    ⋅⋅* $ bundle exec rails db:create
    ⋅⋅* $ bundle exec rails db:migrate
    ⋅⋅* $ bundle exec rails db:seed
4. Open the project directory in Atom or a text editor of your choice
5. Create a file called stripe.rb in config/initializers. The file path should read: config/initializers/stripe.rb

    ⋅⋅* Add the following code snippet to the file:
    
        Rails.configuration.stripe = {
          :publishable_key => ENV['PUBLISHABLE_KEY'],
          :secret_key      => ENV['SECRET_KEY']
        }

        Stripe.api_key = Rails.configuration.stripe[:secret_key]

    ⋅⋅* NOTE: You will have to add your own publishable key and secret key to this file. These can be obtained by registering for the Stripe API keys on www.stripe.com.
6. Open a new tab in the terminal and run the following command to open the Rails server.
    ⋅⋅* $ rails s
7. View the site by navigating to localhost:3000 in Google Chrome or another web browser.

## Known Bugs

## Support and contact details

Support questions, ideas, suggestions, and other contact inquiries can be directed to Masen by email or through GitHub:
  Email: masenmatthews@gmail.com
  Github: masenmatthews

## Technologies Used

This application was created with Ruby On Rails. It uses the following technologies:
  * Materialize (for styling)
  * BCrypt (for authentication)
  * Paperclip (for images)

### License

*MIT License

Copyright (c) [2018] [Masen Matthews]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*

Copyright (c) 2018 **Masen Matthews**
