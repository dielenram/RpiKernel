#!/bin/bash
#RcargarPolitica.sh - script para cargar la política de tomoyo en el kernel.

/usr/sbin/tomoyo-loadpolicy -df < /etc/tomoyo/domain_policy.conf
/usr/sbin/tomoyo-loadpolicy -ef < /etc/tomoyo/exception_policy.conf
/usr/sbin/tomoyo-loadpolicy -p < /etc/tomoyo/profile.conf
/usr/sbin/tomoyo-loadpolicy -m < /etc/tomoyo/manager.conf
