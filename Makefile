IMAGE_REPO:=../req-di
REPO:=../req-cs

default:  update

update:
	cd $(REPO) && git pull --rebase origin master
	cd $(IMAGE_REPO) && git pull --rebase origin master
	cp $(IMAGE_REPO)/baseimage/requirements.txt baseimage-requirements.txt
	cp $(IMAGE_REPO)/productimage/requirements.txt productimage-requirements.txt
	cp $(IMAGE_REPO)/orchestraimage/requirements.txt orchestraimage-requirements.txt
	cp $(REPO)/requirements.txt requirements.txt
	cp $(REPO)/deploy-requirements.txt deploy-requirements.txt
	-git commit -am "Update requirements"
	git push origin master
