
#!/bin/bash

# If needed, install dependencies by running the following command:
# sudo apt install -fy texlive-latex-recommended texlive-fonts-extra texlive-latex-extra texlive-xelatex pandoc p7zip-full

pandoc /HTB-boxes/bashed/bashed_report.md -o /HTB-boxes/bashed/bashed_report.pdf \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style breezedark


