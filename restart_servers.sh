echo "Interrupting the dedicated server."
pkill -f --signal=SIGINT dedicated
echo "Interrupting the masterserver."
pkill -f --signal=SIGINT masterserver
sleep 1
echo "Launching the dedicated server."
nohup ./Hypersomnia --dedicated-server > /dev/null 2>&1 &
echo "Launching the masterserver."
nohup ./Hypersomnia --masterserver > /dev/null 2>&1 &
