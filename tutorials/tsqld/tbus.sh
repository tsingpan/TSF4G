#!/bin/bash

#ipcs -m | awk '{if ($6==0) print $2}' | xargs -i0 ipcrm -m 0

TBUSMGR=../../package/bin/tbusmgr
ipcrm -M 20001
ipcrm -M 20002
${TBUSMGR} -s 10000000 -w 20001
${TBUSMGR} -s 10000000 -w 20002
