# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

KDE_HANDBOOK="optional"
if [[ ${PV} == *9999 ]]; then
KDE_SCM="git"
inherit kde4-base
else
KMNAME="kdegraphics"
inherit kde4-meta
fi

DESCRIPTION="A screen ruler for the K Desktop Environment"
KEYWORDS=""
IUSE="debug"
