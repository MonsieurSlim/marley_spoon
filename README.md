## Marley Spoon

### Environment setup

- install rvm and complete set up
- `gem install bundler` in app directory
- run `bundle install`
- add necessary environment variables to `.env` (this only contains `CONTENTFUL_ACCESS_TOKEN` and `CONTENTFUL_SPACE_ID` for now)

### To boot the app
- run `foreman start -f Procfile.dev` to use the development procfile
- app should be available at `localhost:8080`
- web server used is puma

### Ruby Version
- 2.7.2

### Rails Version
- 5.2.4

### Database creation
- This app doesn't use a database currently. It just consumes the Contentful API

### System dependencies
- Most significant dependency would be `gem contentful`
- The decision to use this gem was made because it already maps out the interface of the Contentful API, making it unnecessary in my use case to develope my own micro-service/interface for that 

### How to run the test suite
- The test suite runs on `rspec`
- run `bundle exec rspec`
