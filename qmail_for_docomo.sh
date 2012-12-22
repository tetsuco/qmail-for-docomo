# qmailにてdocomo宛に送信した再、送信が遅いため強制的に送信する。
while true
do
    _queue=`/root/script/qmHandle -s | grep remote | awk -F': ' '{print $2}'`

    if [ ${_queue} != 0 ]; then
        /root/script/qmHandle -a
    fi

    sleep 5
done
