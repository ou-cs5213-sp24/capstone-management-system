python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip

pip install django-cms djangocms-text-ckeditor djangocms-frontend django-filer djangocms-versioning djangocms-alias djangocms_admin_style

cd capstonecms
python -m manage runserver
