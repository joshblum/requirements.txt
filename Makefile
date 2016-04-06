REPO:=../req-cs

default:  update

setup:
	cp $(REPO)/product/requirements.txt product-requirements.txt
	cp $(REPO)/orchestra/requirements.txt orchestra-requirements.txt
	cp $(REPO)/requirements.txt base-requirements.txt

update:
	cd $(REPO) && git pull --rebase origin master
	-git commit -m "Update requirements"
	git push origin master
