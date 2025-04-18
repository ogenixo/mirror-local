# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Openrc init file for backgrounding ollam AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="https://ogenixo.github.io/mirror-local/web/ollama.init -> ollama.init"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="acct-user/ollama acct-group/ollama"


S="${WORKDIR}"

src_unpack() {
	default
}

src_install() {
	newinitd	"${DISTDIR}/ollama.init" ollama
}
