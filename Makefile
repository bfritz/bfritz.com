public/index.html:
	zola build

publish: public/index.html
	rsync -avSP public/* bfritz_com:/storage/www/bfritz.com/
