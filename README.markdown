# test case - user media gallery
## TODO: implement users media-collection.
user can register, login to account, manage collections and edit each collection: add or remove something (image, link, text) and share it in social networks.

### Application scripts
'do' - is a script which doing a some stuff:
#### sync_repo
we call it with:

```bash
    $ ./do sync_repo [commit_message]
```

If we pass the commit message, git commit -m [commit_message] will be called,
otherwise, if we call it within the message - your default git editor will be
rised for full message editing.

### Application test gems:

1. rspec
2. factorygirl
3. faker
4. capybara
