
version = frankenstein
docs = raw-docx
defaultFilters = --filter filters/remove-quotes.hs

$(docs)/linee-guida-*.rst:$(docs)/linee-guida-*.docx
	./$(version) $< $(defaultFilters) --filter filters/add-headers.hs --filter filters/remove-quotes.hs --wrap none -o $@

$(docs)/%.rst:$(docs)/%.docx
	./$(version) $< $(defaultFilters) -o $@

$(docs)/%.native:$(docs)/%.docx
	./$(version) $< -o $@

$(docs)/%.html:$(docs)/%.rst
	rst2html $< > $@

update:
	touch $(docs)/*.docx
	make $(docs)/*.html
