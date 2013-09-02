DIR=$1

cd $1


# checkout a temporary branch
git checkout -b temp >/dev/null 2>&1

while true; do
  TAGNAME=$(git log -1 | tail  -n 1 | tr -d ' ')
  git tag -d $TAGNAME
  git tag $TAGNAME

  # while HEAD^ still exists
  git checkout HEAD^  >/dev/null 2>&1 || break
done

# clean up a little
git checkout master >/dev/null 2>&1
git branch -d temp  >/dev/null 2>&1
