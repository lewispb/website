---
comment_issue_term: tag:world.hey.com,2005:World::Post/36840
date: '2024-05-02 10:55:07 +0100'
last_modified_at: '2024-05-02 10:55:07 +0100'
layout: post
tags: []
title: 'Meetup report: Ruby in London with Mindful Chef'
trix: true
---

Always keen to keep in touch with the vibrant Ruby community in the UK, last night I attended the latest installment of the&nbsp; [Ruby in London meetup](https://www.meetup.com/ruby-in-london/events/299767863/), hosted by [Oliver Bernard](https://oliverbernard.com/) at [Mindful Chef's](https://www.mindfulchef.com/) beautiful office.

[![IMG_9065 4.jpeg](https://world.hey.com/lewis/bb63539f/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2VPajl0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--500005be7d7a5a111f0db6956e270f9d24470cb8/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hSeVpYTnBlbVZmZEc5ZmJHbHRhWFJiQjJrQ2dBZHBBZ0FGT2d4eGRXRnNhWFI1YVVzNkMyeHZZV1JsY25zR09nbHdZV2RsTURvTlkyOWhiR1Z6WTJWVSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--824130a6fd2f596d29a6d245cf773fab0beee210/IMG_9065%204.jpeg)](https://world.hey.com/lewis/bb63539f/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2VPajl0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--500005be7d7a5a111f0db6956e270f9d24470cb8/IMG_9065%204.jpeg?disposition=attachment "Download IMG\_9065 4.jpeg")

There was a great turnout, plentiful pizza, lovely snacks (by Mindful Chef, of course) and a choice of cold beverages.

I enjoyed catching up with old friends and meeting new ones. The London Ruby scene was well represented, and with folks from Smart Pension, Deliveroo and more all in attendance, I'd guess at least 50. 

On to the talks.

Miles Woodroffe, Mindful Chef CTO and Rails Foundation board member presented "Getting Started with Solid Queue - The new default ActiveJob backend for Rails 8". He covered the basics of job queues and how they work, but then bravely moved on to a live demo where he set up [Solid Queue](https://github.com/rails/solid_queue) in a new Rails app. He demonstrated the ActiveJob mechanism to delay execution of a job, and how Solid Queue supports that. There was a brief Q&A afterwards too, with questions about scalability and concurrency deftly answered.

I'm a big fan of Solid Queue. It's performing exceptionally well for us at 37signals, handling millions of jobs per day without fuss. So it's nice to see the wider community adoption, interest and excitement too. 

[![IMG_9066 4.jpeg](https://world.hey.com/lewis/bb63539f/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2Nxa3R0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6aae4fcbff963a1593cc934351e1c2f525ffc21d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hSeVpYTnBlbVZmZEc5ZmJHbHRhWFJiQjJrQ2dBZHBBZ0FGT2d4eGRXRnNhWFI1YVVzNkMyeHZZV1JsY25zR09nbHdZV2RsTURvTlkyOWhiR1Z6WTJWVSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--824130a6fd2f596d29a6d245cf773fab0beee210/IMG_9066%204.jpeg)](https://world.hey.com/lewis/bb63539f/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2Nxa3R0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--6aae4fcbff963a1593cc934351e1c2f525ffc21d/IMG_9066%204.jpeg?disposition=attachment "Download IMG\_9066 4.jpeg")

Next up, Serg Tyatin presented "Race Conditions RSpec How to"

[![IMG_9067 4.jpeg](https://world.hey.com/lewis/bb63539f/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2ROb3R0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--d3d5258b710576a9a3c65ed7ff96e87c495146ef/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdDam9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hSeVpYTnBlbVZmZEc5ZmJHbHRhWFJiQjJrQ2dBZHBBZ0FGT2d4eGRXRnNhWFI1YVVzNkMyeHZZV1JsY25zR09nbHdZV2RsTURvTlkyOWhiR1Z6WTJWVSIsImV4cCI6bnVsbCwicHVyIjoidmFyaWF0aW9uIn19--824130a6fd2f596d29a6d245cf773fab0beee210/IMG_9067%204.jpeg)](https://world.hey.com/lewis/bb63539f/blobs/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHNLd2ROb3R0aCIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--d3d5258b710576a9a3c65ed7ff96e87c495146ef/IMG_9067%204.jpeg?disposition=attachment "Download IMG\_9067 4.jpeg")

He posed the question, "Have you ever written a test for a race condition?". I must admit I have not, and it seems like few have.

But he talked about the confidence gained from being sure of the precise conditions that caused a race condition, and that it's truly fixed, with an Rspec test. Interesting stuff, and food for thought.

All in all, I was pleased to be able to attend and it was definitely worth the train journey up from Devon. Big thanks to Liam from Oliver Bernard for hosting, Mindful Chef for providing the space, and the speakers, Miles and Serg.✌️
