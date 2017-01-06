# OmniAuth Lightspeed Strategy

An OmniAuth Lightspeed Strategy. Does what it says on the box.

## Usage

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :lightspeed, ENV['LIGHTSPEED_CLIENT_ID'], ENV['LIGHTSPEED_CLIENT_SECRET'], scope: 'employee:all'
end
```

## TODO

* Support situation where an access token can have access to more than one account.
* Determine if the above is even possible.

## I found a bug!

1. Pull requests are welcome.
2. OR: Provide steps to reproduce the bug in a new issue.
