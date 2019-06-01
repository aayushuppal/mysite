serve:
	./venv/bin/mkdocs serve

publish:
	./venv/bin/mkdocs gh-deploy

stop:
	pkill mkdocs

depends:
	./venv/bin/pip install -r requirements.txt

clean:
	rm -rf site
	find . -depth -name "*.pyc" -exec rm -rf {} \;
