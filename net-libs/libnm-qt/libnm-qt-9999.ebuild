# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_REQUIRED="never"
inherit kde4-base

if [[ ${KDE_BUILD_TYPE} != live ]]; then
	KEYWORDS="~amd64 ~x86"
	SRC_URI="mirror://kde/unstable/networkmanager-qt/${PV}/src/${P}.tar.xz"
else
	KEYWORDS=""
fi

DESCRIPTION="NetworkManager bindings for Qt"
HOMEPAGE="https://projects.kde.org/projects/extragear/libs/libnm-qt"

LICENSE="GPL-2 LGPL-2"
SLOT="4"
IUSE="debug modemmanager"

DEPEND="
	dev-qt/qtcore:4
	dev-qt/qtdbus:4
	net-misc/mobile-broadband-provider-info
	>=net-misc/networkmanager-0.9.8.0
	modemmanager? ( net-libs/libmm-qt )
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use !modemmanager DISABLE_MODEMMANAGERQT)
	)

	kde4-base_src_configure
}
