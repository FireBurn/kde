# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

ECM_TEST="true"
ECM_HANDBOOK="forceoptional"
KFMIN=5.113.0
QTMIN=6.6.2
inherit ecm gear.kde.org

DESCRIPTION="Application to take pictures and videos from your webcam by KDE"
HOMEPAGE="https://apps.kde.org/kamoso/ https://userbase.kde.org/Kamoso"

LICENSE="GPL-2+"
SLOT="5"
KEYWORDS=""
IUSE=""

RESTRICT="test" # bug 653674

COMMON_DEPEND="
	dev-libs/glib:2
	>=dev-qt/qtbase-${QTMIN}:6[gui,widgets]
	>=dev-qt/qtdeclarative-${QTMIN}:6
	>=kde-frameworks/kconfig-${KFMIN}:5
	>=kde-frameworks/kcoreaddons-${KFMIN}:5
	>=kde-frameworks/ki18n-${KFMIN}:5
	>=kde-frameworks/kio-${KFMIN}:5
	>=kde-frameworks/kitemviews-${KFMIN}:5
	>=kde-frameworks/purpose-${KFMIN}:5
	media-libs/gst-plugins-base:1.0
	virtual/opengl
"
DEPEND="${COMMON_DEPEND}
	test? ( >=dev-qt/qtbase-${QTMIN}:6[opengl] )
"
RDEPEND="${COMMON_DEPEND}
	>=dev-qt/qtdeclarative-${QTMIN}:6
	>=kde-frameworks/kirigami-${KFMIN}:5
	media-plugins/gst-plugins-jpeg:1.0
	media-plugins/gst-plugins-libpng:1.0
	media-plugins/gst-plugins-meta:1.0[alsa,theora,vorbis,v4l]
"
BDEPEND="virtual/pkgconfig"
