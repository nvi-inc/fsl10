all: installation.html cis-setup.html

installation.html: installation.adoc
cis-setup.html: cis-setup.adoc


%.html: %.adoc
	asciidoctor $^

