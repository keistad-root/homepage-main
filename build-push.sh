bundle exec jekyll build -d build/
#sed -i "" 's+<loc>+<loc>https://sqm2022.pusan.ac.kr+g' _site-build/www/sitemap.xml
chmod -R 755 build/ 
rsync -rzv -e 'ssh -p 4280' --progress --exclude=".[!.]*" build/ hipex@164.125.252.148:/opt/webservice/frontpage/


