# ===========================================================================
#          http://autoconf-archive.cryp.to/ag_check_sys_siglist.html
# ===========================================================================
#
# SYNOPSIS
#
#   AG_CHECK_SYS_SIGLIST
#
# DESCRIPTION
#
#   Check for existence of global sys_siglist[].
#
# LICENSE
#
#   Copyright (c) 2008 Bruce Korb <bkorb@gnu.org>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved.

AC_DEFUN([AG_CHECK_SYS_SIGLIST],[
  AC_MSG_CHECKING([whether there is a global text array sys_siglist])
  AC_CACHE_VAL([ag_cv_sys_siglist],[
  AC_TRY_RUN([#include <signal.h>
int main() {
  const char* pz = sys_siglist[1];
  return (pz != 0) ? 0 : 1; }],[ag_cv_sys_siglist=yes],[ag_cv_sys_siglist=no],[ag_cv_sys_siglist=no]
  ) # end of TRY_RUN]) # end of CACHE_VAL

  AC_MSG_RESULT([$ag_cv_sys_siglist])
  if test x$ag_cv_sys_siglist = xyes
  then
    AC_DEFINE(HAVE_SYS_SIGLIST, 1,
       [Define this if there is a global text array sys_siglist])
    NEED_SYS_SIGLIST=false
  else
    NEED_SYS_SIGLIST=true
  fi
  AC_SUBST(NEED_SYS_SIGLIST)
]) # end of AC_DEFUN of AG_CHECK_SYS_SIGLIST
