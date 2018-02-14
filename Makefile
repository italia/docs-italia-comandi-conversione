
version = frankenstein
docs = raw-docx

$(docs)/linee-guida-*.rst:$(docs)/linee-guida-*.docx
	./$(version) $< --filter filters/remove-quotes.hs -o $@
$(docs)/cond-gen-esercenti.rst:$(docs)/cond-gen-esercenti.docx
	./$(version) $< --filter filters/remove-quotes.hs -o $@

$(docs)/%.rst:$(docs)/%.docx
	./$(version) $< -o $@

$(docs)/%.native:$(docs)/%.docx
	./$(version) $< -o $@

$(docs)/%.html:$(docs)/%.rst
	rst2html $< > $@

update:
	touch $(docs)/*.docx
	make $(docs)/*.rst
