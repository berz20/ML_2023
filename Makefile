# Define the source and destination directories
SRC_DIR := src
NOTEBOOKS_DIR := ../FIS0204
NOTEBOOK_FILES := $(wildcard ./Notebooks/Notebook_*.ipynb)

.PHONY: notebooks
notebooks:
	# Go into the ML official git repo and update this repository
	@cd $(NOTEBOOKS_DIR) && git pull
	# Copy the Notebook files into the src directory without overwriting existing ones
	@for file in $(NOTEBOOK_FILES); do \
		basefile=$$(basename $$file); \
		if [ ! -f $(SRC_DIR)/$$basefile ]; then \
			cp $$file $(SRC_DIR)/$$basefile; \
			echo "Copied $$basefile"; \
		else \
			echo "$$basefile already exists in $(SRC_DIR), skipping."; \
		fi; \
	done
