## Concerns 

Concerns are used for making code **more reusable and less complicated**. If we use concerns wisely, then we can do it the easy way.

Let us consider an example of an application where we are logging in to some user. For this, we would need to have a user model for taking the data of any users. 

Logically we have to separate the model for registration, called the Registration model. At this point, we may need to rewrite a user model, but that would be more time-consuming. 

We can wrap the part of code in the "registration" model and make it a different class to use it anywhere in the project. This is where ActiveSupport::Concern helps us.

[Concerns](https://scoutapm.com/blog/rails-concerns)

## Libs

The Rails guide says:
**app/** Contains the controllers, models, views, helpers, mailers and assets for your application.
**lib/** Extended modules for your application.

In other words, app/ is for **"configuring Rails"**, and lib/ is code that **would make sense** even if your application was ported to the console or an Android app for instance.

One could thus argue that app would have been better named something like rails or framework, and lib could have been named app. But regardless of the naming, the docs are pretty clear on the intent. 

This distinction was revisited by Corey Haines in tweet which he subsequently quoted in a 2011 blog post.

**"Rails is not your application. It might be your views and data source, but it's not your application. Put your app in a Gem or under lib/."**

[Libs](https://medium.com/extreme-programming/what-goes-in-rails-lib-92c74dfd955e)