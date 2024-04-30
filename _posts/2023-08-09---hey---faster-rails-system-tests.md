---
comment_issue_term: tag:world.hey.com,2005:World::Post/30659
date: '2023-08-09 20:37:22 +0100'
last_modified_at: '2023-08-09 20:41:32 +0100'
layout: post
tags: []
title: Faster Rails system tests
trix: true
---

Here's a tip for speeding up your Rails system test suite.

You may well have a test helper to authenticate a user before continuing with your actual test. Something like this is typical:

[![image.png](https://world.hey.com/lewis/f01df53b/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2ZrWWFsTyIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--ea5a8bccfcb0ddcb74d661a94b5d1eea7de43ab2/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFLQUIya0NBQVU2REhGMVlXeHBkSGxwU3pvTGJHOWhaR1Z5ZXdZNkNYQmhaMlV3T2cxamIyRnNaWE5qWlZRPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--946116ea0c454412635aa7309bd9472bf633014c/image.png)](https://world.hey.com/lewis/f01df53b/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2ZrWWFsTyIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--ea5a8bccfcb0ddcb74d661a94b5d1eea7de43ab2/image.png?disposition=attachment "Download image.png")

Instead of authenticating in every system test like this, it's possible to directly set a session cookie, saving a few steps in the process. Here's how we did it with Capybara, Selenium and ChromeDriver ([gist](https://gist.github.com/lewispb/8e5d1d5a940f914d0fda16f41f2e3154)):

[![image.png](https://world.hey.com/lewis/f01df53b/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2NjYmFsTyIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9da05fcceb8e28ae64a63c380ee8650de06d2c93/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFLQUIya0NBQVU2REhGMVlXeHBkSGxwU3pvTGJHOWhaR1Z5ZXdZNkNYQmhaMlV3T2cxamIyRnNaWE5qWlZRPSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--946116ea0c454412635aa7309bd9472bf633014c/image.png)](https://world.hey.com/lewis/f01df53b/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2NjYmFsTyIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--9da05fcceb8e28ae64a63c380ee8650de06d2c93/image.png?disposition=attachment "Download image.png")

[Andrey Novikov](https://github.com/Envek) shared a gist showing a similar technique for Rspec and Devise: [https://gist.github.com/Envek/9981207c79579db081897abd1afb80db](https://gist.github.com/Envek/9981207c79579db081897abd1afb80db)

The tradeoff is that this method makes system tests less realistic. You'll want to ensure you have good independent coverage of your authentication mechanism.

We saw a 25% reduction in overall test suite run time after we updated HEY system tests to use this method. Let me know what improvement you see!
