# $NetBSD$

BUILDLINK_TREE+=	ghmm-0.9

.if !defined(GHMM_0.9_BUILDLINK3_MK)
GHMM_0.9_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ghmm-0.9+=	ghmm>=0.9
BUILDLINK_PKGSRCDIR.ghmm-0.9?=	../../wip/ghmm


.include "../../textproc/libxml2/buildlink3.mk"
.endif	# GHMM_0.9_BUILDLINK3_MK

BUILDLINK_TREE+=	-ghmm-0.9
