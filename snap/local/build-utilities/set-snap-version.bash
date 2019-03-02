#!/usr/bin/env bash
# Program to set snap's version, used by the `version-script` keyword
# 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com> © 2018

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

init(){
	local \
		upstream_version \
		packaging_revision

	upstream_version="$(
		git \
			-C parts/mari0/src \
			describe \
			--always \
			--dirty=-d \
			--tags \
		| sed s/^v//
	)"

	packaging_revision="$(
		git \
			describe \
			--abbrev=4 \
			--always \
			--match nothing \
			--dirty=-d
	)"

	printf \
		-- \
		'%s' \
		"${upstream_version}+pkg-${packaging_revision}"

	exit 0
}

init "${@}"
