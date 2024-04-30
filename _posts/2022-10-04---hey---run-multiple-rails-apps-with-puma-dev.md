---
comment_issue_term: tag:world.hey.com,2005:World::Post/23391
date: '2022-10-04 10:37:51 +0100'
last_modified_at: '2022-10-04 10:37:51 +0100'
layout: post
tags: []
title: Run multiple Rails apps with Puma-dev
trix: true
---

Before joining 37signals I hadn't encountered [Puma-dev](https://github.com/puma/puma-dev). This post is a message to past-me who would have benefited from using it to develop a constellation of Ruby on Rails applications.

A pretty typical setup for an organisation with a Ruby on Rails monolith is to at some point start breaking it up. Examples of Rails apps that may be extracted out:

- A specialised search or newsfeed API
- Authentication services
- Admin UI
- Microservices

Working on a system like this locally requires that the developer coordinates running multiple Rails servers:

```
cd ~/projects/org/web
rails server -p 3000

# another terminal window

cd ~/projects/org/authentication
rails server -p 3001
```

Then, to call an API for example, each application needs to be configured with URLs to point to the other, with URLs like _http://localhost:3001_

## **Puma-dev presents a better way**

By running a background process to manage all the Rails apps, starting them, and shutting them down when idle, we can avoid the tedium of managing multiple Rails servers in multiple terminal windows. We also get:

- HTTPS support
- .test TLD

So instead of _http://localhost:3000_ and _http://localhost:3001_ we get _[https://web.test](https://web.test)_ and _[https://auth.test](https://auth.test)_ (or whatever name we like).

Here's how you can use it.

**Step 1**

[Install Puma-dev](https://github.com/puma/puma-dev#installation). It's available for MacOS and Linux.

```
brew install puma/puma/puma-dev

# Configure some DNS settings that have to be done as root
sudo puma-dev -setup

# Configure puma-dev to run in the background on ports 80 and 443 with the domain `.test`.
puma-dev -install
```

You'll also need to be using [Puma](https://github.com/puma/puma) as your Rails development web server.

```
# Gemfile

gem "puma"
```

**Step 2**

In each application you'd like to use with Puma-dev, symlink the application directory into ~/.puma-dev. The puma-dev link command can help do that:

```
cd ~/projects/org/authentication
puma-dev link -n auth
```

**Step 3**

In development ensure that Rails is configured to allow requests from any host.

```
# config/environments/development.rb

Rails.application.configure do
  ...
  config.hosts = []
  ...
end
```

All being well, your application will now be available at _[https://auth.test](https://auth.test)_.

**Troubleshooting**

If you run into problems you can check the Puma-dev logs:

```
tail -f ~/Library/Logs/puma-dev.log
```

You might need to restart Puma-dev after you make a configuration change:

```
puma-dev --stop
```

**Consistent URLs**

If you're working as part of a team, it's useful to know the domain that other developers will be using to develop the application locally.

To share a consistent URL, rather than run the _puma-dev link_ command manually, you can add it to your Rails bin/setup file.

```
# bin/setup

# Existing Rails setup
...
  
puts "\n== Configuring Puma-dev to host https://auth.test =="
system! "puma-dev link -n auth"
```

That way you establish a convention for all developers on the team. Run bin/setup and get a consistent development environment with a consistent URL.

## **Debugging**

With your Raills app running the background you might wonder how you can use a debugger such as [byebug](https://github.com/deivid-rodriguez/byebug) or [Ruby debug](https://github.com/ruby/debug).

Thanks to remote debugging, this is possible. Here's how you can configure your Rails app to support remote debugging with Ruby debug.  
  
**Step 1** Add the Ruby debug gem to your Gemfile.

```
group :development, :test do
  gem "debug", require: false
end
```

In your test environment the standard breaking debugger will be useful:

```
# config/environments/test.rb

require "debug"

Rails.application.configure do
  ...
```

But in the development environment you'll need to use open\_nonstop:

```
# config/environments/development.rb

require "debug/open_nonstop"

Rails.application.configure do
  ...
```

This way, when you insert a breakpoint with _debugger_ in development,_&nbsp;_you'll be able to remotely attach to the debugger:

```
rdbg --attach
```

**Conclusion**

With this Puma-dev setup it should be less tedious to run multiple Rails app locally while maintaining the benefits of debugging.
