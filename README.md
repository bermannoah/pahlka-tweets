# Turing Pahlka Posse Twitter Bot Skeleton

A basic framework for making a twitter bot. This is 'just' a script, meaning 
that you'll have to manually run it.

### Useful information

[The docs for the twitter gem - extensive](http://www.rubydoc.info/gems/twitter)

[The docs for the twitter gem - basic](https://github.com/sferik/twitter)

### Requirements

You will need:

1. A twitter account. Make sure you have your phone number connected to the account
2. RVM installed. To find out if you have this, run: `rvm -v`. If you don't have it, follow the RVM instructions and ONLY the RVM instructions at [Railsbridge](http://curriculum.railsbridge.org/installfest/osx_rvm).

### Installation

1. Clone down this repo: `git clone https://github.com/bermannoah/pahlka-tweets`
2. Install the twitter gem: `gem install twitter`
3. Go to [the Twitter developer pages](https://dev.twitter.com/)
4. Click on "my apps"
5. Click on "Create New App"
6. Give your app a name and description. If you have a website, list it, otherwise: https://www.example.com. You won't need a callback URL for this project.
7. Agree to the developer agreement and create the app.
8. On the next page, click on permissions and make sure "Read and Write" is selected.
9. Click on "Keys and Access Tokens", then "Create my access token."
10. DO NOT COMMIT ANY OF THE CONTENT ON THIS PAGE TO GITHUB.
11. Go to the `twitter_keys.rb` file (if you don't have it - `touch twitter_keys.rb`) and fill in the following block with the info from the Keys and Access Tokens page.

  ```
    CONSUMER_KEY = your consumer key
    CONSUMER_SECRET = your consumer secret
    ACCESS_TOKEN = your access token
    ACCESS_TOKEN_SECRET = your access token secret
  ```

12. Run `git status`. If `twitter_keys.rb` appears as something about to be committed, add `twitter_keys.rb` to your `.gitignore`. 

Great! Now you're all set up. Time to dig in!
