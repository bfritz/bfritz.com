.PHONY: preview
preview:
	zola serve

public/index.html:
	zola build

publish: public/index.html
	rsync -avSP public/* bfritz_com:/storage/www/bfritz.com/
	rsync -avSP public/icons/favicon.ico bfritz_com:/storage/www/bfritz.com/favicon.ico
