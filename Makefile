.PHONY: package
package:
	helm package ita
publish: package
	mv ita-* docs
	cd docs && helm repo index . --url https://sweewo.github.io/helm-ita/
