# OmniAuth Lightspeed Retail Strategy

An OmniAuth Lightspeed Retail Strategy. Does what it says on the box.

Forked from the the tragically deceased https://github.com/radar/omniauth-lightspeed

## Usage

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :lightspeed, ENV['LIGHTSPEED_CLIENT_ID'], ENV['LIGHTSPEED_CLIENT_SECRET'], scope: 'employee:all'
end
```

## I found a bug!

1. Pull requests are welcome.
2. OR: Provide steps to reproduce the bug in a new issue.
