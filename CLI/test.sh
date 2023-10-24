for x in {1..200}
do
        output=$(curl -s http://myloadbalancer-602599660.us-east-1.elb.amazonaws.com/ | grep h1)
        echo $x - $output
        sleep 1
done