check_tomcat_status () {
RUN=`ps aux | grep tomcat | grep -v grep | grep java | awk '{print $2}'`
}

while check_tomcat_status
do
        if [ -n "$RUN" ]
        then
                printf "WARNING: Tomcat still running with PID $RUN."
        else
                printf "Tomcat stopped, proceeding...nn"
        break
        fi
done