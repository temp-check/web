# README

## Description

A simple web client for the [temp-check API](https://github.com/temp-check/api).

This client allows users to enter an address to fetch the current temperature for a given address and shows whether the response received from the API was just fetched(🔥), cached(💵), successful(✅), or ran into errors(❌).

## Get Started (Locally)

1. Clone this repo

```bash
git clone git@github.com:temp-check/web.git
```

2. Install dependencies

```bash
bundle install
```

3. Migrate the database

```bash
rails db:create db:migrate
```

4. Start the server

```bash
bundle exec rails s -p 3001
```

The web application will be available at [http://localhost:3001](http://localhost:3001).

## Screenshots

### Searching for a forecast

![Search](https://raw.githubusercontent.com/temp-check/web/main/screenshots/1.png)

> Type in an address or zipcode and click the search button. you can also click the `Results` link to view results of previous searches.

### Forecast details

![Results](https://raw.githubusercontent.com/temp-check/web/main/screenshots/2.png)

> When viewing a forecast result, you can click the `Delete` button to remove the result from the database. Or click the `Results` link to view any previously searched forecasts.

### Forecast history

![History](https://raw.githubusercontent.com/temp-check/web/main/screenshots/3.png)

> This view allows you to see all the previous searches. You can also click the `New` link at the bottom to lookup the forecast in a new search.

### Not Found

![Not Found](https://raw.githubusercontent.com/temp-check/web/main/screenshots/4.png)

> If an address can't be found or is invalid, you will see this message. You can click the `Delete` button to remove unwanted results, or click the `Results` link to return to previously searched forecasts.
