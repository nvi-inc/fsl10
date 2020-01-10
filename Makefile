all: installation.html cis-setup.html raid.html

installation.html: installation.adoc
ris-setup.html: cis-setup.adoc
raid.html: raid.adoc


%.html: %.adoc
	asciidoctor -a toc $^

