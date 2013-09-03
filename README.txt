A simple script to add tags to a repository based on commit names

Usage:

  1. Check out the branch you are interested in tagging
  2. ./tag-creator.sh path/to/repo

It'll walk back in the history for each commit until it reaches the root, 
adding a tag based on the last line of the commit message (c.f. microscope).

After you run it you'll probably want to push the tags:

 git push --force --tags origin YOUR_BRANCH