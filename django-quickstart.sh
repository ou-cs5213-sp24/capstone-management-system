python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip

pip install django-cms djangocms-text-ckeditor djangocms-frontend django-filer djangocms-versioning djangocms-alias djangocms_admin_style

django-admin startproject capstonecms --template https://github.com/django-cms/cms-template/archive/4.1.tar.gz

cd capstonecms

export EXISTS=$(ls . | grep db.sqlite3)
if [ $EXISTS = 'db.sqlite3' ]; then
	echo 'DATABASE EXISTS, CONTINUING'
else 
	echo 'DATABASE DOES NOT EXIST. CREATING NEW DATABASE...'
	python3 -m manage migrate
	python3 -m manage createsuperuser
	python3 -m manage cms check
fi

python -m manage runserver
