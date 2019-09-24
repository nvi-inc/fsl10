all: installation.html

installation.html: installation.adoc
cis-setup.html: cis-setup.adoc


%.html: %.adoc
	asciidoctor $^

