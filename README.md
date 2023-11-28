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

### Search

![Search](https://raw.githubusercontent.com/temp-check/web/main/screenshots/1.png)

### Results

![Results](https://raw.githubusercontent.com/temp-check/web/main/screenshots/2.png)

### History

![History](https://raw.githubusercontent.com/temp-check/web/main/screenshots/3.png)

### Not Found

![Not Found](https://raw.githubusercontent.com/temp-check/web/main/screenshots/4.png)