# $NetBSD$

BUILDLINK_TREE+=	gune

.if !defined(GUNE_BUILDLINK3_MK)
GUNE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gune+=	gune>=1.0
BUILDLINK_PKGSRCDIR.gune?=	../../wip/gune
.endif # GUNE_BUILDLINK3_MK

BUILDLINK_TREE+=	-gune