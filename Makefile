build: public/index.html
	zola build

publish: build
	rsync -avSP public/* bfritz_com:/storage/www/bfritz.com/
