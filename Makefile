all: installation.html cis-setup.html

installation.html: installation.adoc
cis-setup.html: cis-setup.adoc
cis-setup2.html: cis-setup2.adoc


%.html: %.adoc
	asciidoctor $^

