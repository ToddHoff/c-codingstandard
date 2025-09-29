msg = update

wip: 
	make update msg="WIP"

update:
	git add .
	git commit -m "$(msg)"
	git push origin main


iw:
	./bin/install_website

tag:
	git tag beforetempo
	git push origin --tags


cleardefaults:
	xcrun simctl --set previews delete all
