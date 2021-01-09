# Chaperone

A place to save and view your favorite travel destinations.

Chaperone is a Sinatra website that allows users to write about their favorite travel destinations, store them, and share them with others.
Users can create and edit their own travel destinations and discover travel destinations created by other users.
Take a look at Chaperone for inspiration when planning your next vacation!

## Demo

## Installation

Prerequisites: `ruby`, `gem`, and `budnle` must be installed

Clone the GitHub repository:

```bash
git clone git@github.com:JWDonovan/chaperone.git
```

Once in the project directory, install the dependencies:

```bash
bundle install
```

## Usage

To get a local version of the project working, first setup a local database:

```bash
rake db:setup
```

Once the database is setup, start the webserver:

```bash
shotgun
```

Check the output from `shotgun` to see which hostname and port the website is running on.
By default, it should be running on (http://127.0.0.1:9393).
Navigate to the url in your browser to see the website.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/JWDonovan/chaperone/. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The repository is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT)