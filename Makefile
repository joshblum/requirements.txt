IMAGE_REPO:=../req-di
REPO:=../req-cs

default:  update

update:
	cp $(IMAGE_REPO)/productimage/requirements.txt product-requirements.txt
	cp $(IMAGE_REPO)/orchestraimage/requirements.txt orchestra-requirements.txt
	cp $(REPO)/requirements.txt base-requirements.txt
	-git commit -am "Update requirements"
	git push origin master
