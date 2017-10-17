#!/bin/bash
for name in `ls ../data`;
do
	cd ../data
	mv -i "${name}" "${name/0000a/0}"
	cd ../code
done