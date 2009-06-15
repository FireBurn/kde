# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/parley/parley-4.2.2.ebuild,v 1.2 2009/04/17 06:40:06 alexxy Exp $

EAPI="2"

KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE Educational: vocabulary trainer"
KEYWORDS=""
IUSE="debug +handbook +plasma"

DEPEND="
	>=kde-base/libkdeedu-${PV}:${SLOT}[kdeprefix=]
"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="
	libkdeedu/keduvocdocument
"

src_configure() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_with plasma)"

	kde4-meta_src_configure
}
