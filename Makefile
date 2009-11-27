TARGETS=$(wildcard *)

install:
	@for script in $(TARGETS); do \
		if ! test "$$script" = "Makefile"; then \
			if test -e "$$HOME/bin/$$script"; then \
				echo "$$HOME/bin/$$script already exists."; \
			else \
				if ln -s "$$PWD/$$script" "$$HOME/bin/$$script"; then \
					echo "Created link $$HOME/bin/$$script"; \
				else \
					echo "Could not create link $$HOME/bin/$$script"; \
				fi \
			fi \
		fi \
	done
