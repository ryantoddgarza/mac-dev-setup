src := src
target := README.md

$(target) : $(src)/*.md
	pandoc \
	  --defaults cat.yaml \
	  --to=gfm \
	  -o $@

.PHONY : clean
clean :
	rm $(target)
