serve:
	mkdocs serve

publish:
	mkdocs gh-deploy

stop:
	pkill mkdocs

depends:
	pip install -r requirements.txt
