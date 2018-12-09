# Jungle

A mini e-commerce application built with Rails 4.2. 

## Home Page
!["Home Page"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/Homepage.png)

## Sign up
!["Sign up"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/signup.png)

## User Login
!["Login"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/login.png)
!["Login Name Display"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/login_name_display.png)

## Sold Out Notification
!["Soldout"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/soldout.png)

## Cart Summary
!["Cart Summary"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/mycart.png)

## Order Receipt
!["Receipt Page/ Email"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/Receipt_page.png)

## Delete your product reviews
!["Delete Review"](https://github.com/ErikNPeterson/Jungle-App-Ruby-/blob/master/photos/Delete_review.png)




## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
