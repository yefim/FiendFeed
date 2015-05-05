FiendFeed
============

[FiendFeed](http://fiendfeed.herokuapp.com/) is a site where instead of following people you're friends with, you follow people you're not friends with (fiends). You can post text and pictures and only your very own fiend followers will be able to see them.

The implementation of FiendFeed will rely on Facebook Login (since you the site won't allow you to follow any of your Facebook Friends). There will be some rudimentary suggestions of which fiends to follow (based on friends of friends who you haven't bothered to add on Facebook). Then, the rest of the site will simply be your feed (similar to Twitter) and a place for you to post to the fiends who follow you. The people you follow and the people who follow you will be hidden. We don't want any fiends to know that they're fiends now do we?

The technical difficulties I'm expecting to face are: fiend discovery and fiend search. It's going to be difficult to implement the map form people who are on FiendFeed to your friends of friends and for you to search for new fiends to follow. The feed itself will also be a bit difficult and can either be implemented with one large JOIN or by maintaining each individual user's feed in Redis. Lastly, image upload might be a bit hard but I think the Imgur API can handle that for me.

## Final Write Up

FiendFeed is up live on Heroku. Once logged in the root url `/` redirects you back to the feed. I've also added a list of users you can browse to see which fiends you'd like to follow (the `/users/index` route). Each individual user also has his/her unique page at `/user/:id`.
