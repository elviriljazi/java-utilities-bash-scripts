
if [ -n "$1" ] || [ -n "$2" ]
then
TOMCAT_HOME=/opt/tomcat9
mvn -f $1 install
cp -r $1/target/$2.war $TOMCAT_HOME/webapps/
$TOMCAT_HOME/bin/startup.sh
exit 0
fi

echo "Please specify project Directory and Artifact Id"
echo "Example deplyer /home/pi/ piApi "
exit 0