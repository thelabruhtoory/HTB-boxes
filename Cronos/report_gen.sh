
#!/bin/bash

GREEN='[0;32m'
YELLOW='[0;33m'

PARENT_DIR="/HTB-boxes/Cronos"

pandoc ${PARENT_DIR}/Cronos_report.md -o ${PARENT_DIR}/Cronos_report.pdf \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style breezedark

printf "${GREEN}[+] Report generated"
printf "${YELLOW}[+] Cleaning FS"

find ${PARENT_DIR} -empty -delete

printf "${GREEN}[+] FS has been clean of empty files and folders."


