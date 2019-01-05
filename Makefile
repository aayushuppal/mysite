serve:
	./venv/bin/mkdocs serve

publish:
	./venv/bin/mkdocs gh-deploy

stop:
	pkill mkdocs

depends:
	./venv/bin/pip install -r requirements.txt
