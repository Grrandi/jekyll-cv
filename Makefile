serve:
	jekyll serve -w

deploy:
	git subtree push --prefix _site origin gh-pages

phony: deploy serve
