
#!/bin/bash

# If needed, install dependencies by running the following command:
# sudo apt install -fy texlive-latex-recommended texlive-fonts-extra texlive-latex-extra texlive-xelatex pandoc p7zip-full

pandoc /HTB-boxes/beep2/beep2_report.md -o /HTB-boxes/beep2/beep2_report.pdf \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style breezedark


