# README

This is a simple pet service booking application built with Ruby on Rails.

## Features

- Service booking form for users to book a service.
- Service listing page to view all booked services (admin pages)
- Price calculator to calculate the cost of a service based on animal type and service duration

## Getting Started

### Prerequisites

- Ruby (version 3.0.0)
- Rails (version 6.1.7.3)
- PostgreSQL (version 1.5.3)

### Installation

1. Clone the repository:
```
git clone https://github.com/ivanfelfo/loadup_test.git
```

2. Install dependencies:
```
cd service-booking-app
bundle install
```


3. Database setup:

- Modify the `config/database.yml` file with your PostgreSQL database configuration.
- Run the database migrations:

  ```
  rails db:migrate
  ```

### Usage

1. Start the Rails server:
```
rails server
```
2. Open your web browser and visit [http://localhost:3000]

3. Use the application to:
- book services [http://localhost:3000/services/new]
- view the service listing[http://localhost:3000/services/index]
- calculate service prices[http://localhost:3000/services/price_calculator]

## Testing

The application includes a suite of automated tests to ensure its functionality. To run the tests, use the following command:
```
rspec
```

(Had an issue with the E2E service booking test which I couldn't figure out. Not being able to find the animal_type input.)
## Additions

If I had more time these are some additions I would make:

- login. To ensure that only admins can reach the services index page.

- navigation bar. To make app navigation more user friendly.