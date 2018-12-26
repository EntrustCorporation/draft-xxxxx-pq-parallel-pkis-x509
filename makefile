
docName = draft-xxxxx-pq-parallel-pkis-x509


default: txt

txt: $(docName).txt

draft-xxxxx-pq-composite-certs-x509.txt: $(docName).mkd
	kdrfc $(docName).mkd



xml: $(docName).xml

draft-xxxxx-pq-composite-certs-x509.xml: $(docName).mkd
	 kramdown-rfc2629 $(docName).mkd > $(docName).xml


clean:
	rm $(docName).xml $(docName).txt
