#!/bin/bash
Stack=$1
#if [ "${Stack}" = "" ]; then
#    Stack="Open"
#else
#    Stack=$1
#fi

case "${Stack}" in
    Open)
        wget -q https://raw.githubusercontent.com/EVECloud/EPDomainChange/master/domain.ctl.php00 -O domain.ctl.php
	    mv -f domain.ctl.php /vhs/kangle/nodewww/webftp/vhost/control/domain.ctl.php
	    rm -rf domain.ctl.php
		echo -e "前台用户泛解析功能:开"
        ;;
    Close)
        wget -q https://raw.githubusercontent.com/EVECloud/EPDomainChange/master/domain.ctl.php11 -O domain.ctl.php
	    mv -f domain.ctl.php /vhs/kangle/nodewww/webftp/vhost/control/domain.ctl.php
	    rm -rf domain.ctl.php
		echo -e "前台用户泛解析功能:关"
        ;;
    *)
        echo "Usage: $0 {Open|Close}"
        ;;
esac
