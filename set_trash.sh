#!/bin/bash
#在家目录建立一个目录 .trash
mkdir ~/.trash
#del.sh
#!/bin/bash
PARA_CNT=$#

TRASH_DIR="/home/zcl/.trash"
for i in $*; do
     STAMP=`date +'%Y-%m-%d'`
     fileName=`basename $i`
     mv $i $TRASH_DIR/$fileName.$STAMP
done


echo "alias del='~/tools/del.sh'">>~/.bashrc
