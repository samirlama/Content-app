# Ruby on Rails Assessment

This is a Ruby on Rails project designed to demonstrate basic setup and usage.

## Prerequisites

Before you begin, ensure you have the following installed on your local machine:

- Ruby 3.0.1
- Rails 7
- PostgreSQL database

## Getting Started

### Installation

1. Clone the repository:

   ```bash
   git clone git@github.com:samirlama/Content-app.git
   cd repository
   ```
2. Install dependencies
   ```bash
   bundle install
   ```
3. Database creation and migration
   ```bash
    rails db:create
    rails db:migrate
   ```
4. Start server
   ``` bash
   rails s
   ``` 
   
### Note
1. ALl secret keys are encrypted using master keys
   View/Update it using
 ```bash
    EDITOR="nano" rails credentials:edit
   ```

or any editor of your preference