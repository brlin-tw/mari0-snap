#!/usr/bin/env bash
# Utility script to install assets to their proper location, should only be run in the `override-build` scriptlet
# 林博仁 © 2018

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

if ! test -v SNAPCRAFT_PART_INSTALL; then
	printf -- \
		"install-launchers: Error: This script should be run by \`snapcraft\` in the \`override-build\` scriptlet.\\n"
	exit 1
fi

if test -d launchers; then
	mkdir \
		--parents \
		--verbose \
		"${SNAPCRAFT_PART_INSTALL}"/bin

	find \
		launchers \
		-type f \
		-perm /111 \
		-print0 \
		| xargs \
		--no-run-if-empty \
		--null \
		--verbose \
		-I{} \
		cp \
		{} \
		"${SNAPCRAFT_PART_INSTALL}"/bin
fi

if test -d gui; then
	mkdir \
		--parents \
		"${SNAPCRAFT_PART_INSTALL}"/share/applications

	find \
		gui \
		-name '*.desktop' \
		-print0 \
		| xargs \
		--no-run-if-empty \
		--null \
		--verbose \
		-I{} \
		cp \
		{} \
		"${SNAPCRAFT_PART_INSTALL}"/share/applications
fi

if test -d utilities; then
	cp \
		--recursive \
		--verbose \
		utilities \
		"${SNAPCRAFT_PART_INSTALL}"
fi

if test -d patches; then
	cp \
		--recursive \
		--verbose \
		patches \
		"${SNAPCRAFT_PART_INSTALL}"
fi
