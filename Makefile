REPO:=../req-cs
CRONTAB=cd ~/requirements.txt; make update;

default:  update

update:
	cd $(REPO) && git pull --rebase origin master
	cp $(REPO)/product/requirements.txt product-requirements.txt
	cp $(REPO)/orchestra/requirements.txt orchestra-requirements.txt
	cp $(REPO)/requirements.txt base-requirements.txt
	-git commit -am "Update requirements"
	git push origin master
