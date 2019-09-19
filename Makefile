fsl10.html: fsl10.adoc


%.html: %.adoc
	asciidoctor $^

