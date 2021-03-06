#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#

# PROVIDE: yppasswdd
# REQUIRE: ypserv ypbind
# BEFORE:  LOGIN

. /etc/rc.subr

name="yppasswdd"
rcvar=$name
command="@PREFIX@/sbin/rpc.${name}"
required_vars="rpcbind ypserv"
start_precmd="yppasswdd_precmd"

yppasswdd_precmd()
{
	_domain=`domainname`
	if [ -z "$_domain" ]; then
		warn "domainname(1) is not set."
		return 1
	fi
}

load_rc_config $name
run_rc_command "$1"
