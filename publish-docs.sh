# this requires sphinx to be installed:
# $ pip install sphinx
make html
git checkout gh-pages
rm -rf source/
mv build/html/* .
git add .
git commit -am "build $(date)"
git push origin gh-pages
git checkout master
