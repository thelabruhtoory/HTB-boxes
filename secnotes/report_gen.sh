
#!/bin/bash

GREEN='[0;32m'
YELLOW='[0;33m'

PARENT_DIR="/HTB-boxes/secnotes"

printf "${YELLOW}[+] Generating report...
"
pandoc ${PARENT_DIR}/secnotes_report.md -o ${PARENT_DIR}/secnotes_report.pdf \
--from markdown+yaml_metadata_block+raw_html \
--template eisvogel \
--table-of-contents \
--toc-depth 6 \
--number-sections \
--top-level-division=chapter \
--highlight-style breezedark

printf "${GREEN}[+] Report generated
"
printf "${YELLOW}[+] Cleaning FS...
"

find ${PARENT_DIR} -empty -delete
rm -rf ${PARENT_DIR}/cmds2run/

printf "${GREEN}[+] FS has been cleaned of empty files and folders.
"

	
