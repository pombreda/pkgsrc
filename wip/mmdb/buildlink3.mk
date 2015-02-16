# $NetBSD$

BUILDLINK_TREE+=	mmdb

.if !defined(MMDB_BUILDLINK3_MK)
MMDB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.mmdb+=	mmdb>=1.21
BUILDLINK_PKGSRCDIR.mmdb?=	../../wip/mmdb
.endif	# MMDB_BUILDLINK3_MK

BUILDLINK_TREE+=	-mmdb