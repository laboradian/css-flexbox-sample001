ENV := development

all: css

css: main.css

main.css: src/scss/main.scss
	@if [ "$(ENV)" = "development" ]; then \
	  sass src/scss/main.scss ./css/main.css --style compressed; \
	else \
	  sass src/scss/main.scss ./css/main.css --style compressed \
	     --sourcemap=none; \
	fi

clean:
	rm -f css/main.css
	rm -f css/main.css.map
