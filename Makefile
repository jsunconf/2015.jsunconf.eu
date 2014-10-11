deploy:
	@rm -rf ./build
	@wintersmith build
	@cd ./build && git init . && git add . && git commit -nm \"Deployment\" && \
	git push "git@github.com:jsunconf/2015.jsunconf.eu.git" master:gh-pages --force && rm -rf .git
	@rm -rf ./build
