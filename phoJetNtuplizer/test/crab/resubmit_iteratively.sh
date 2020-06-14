#!/bin/sh

#sleep 3600 #inseconds

for (( i=0; i<10; i++)); do
    echo -n """
    Iteration ${i}
    """

    for jobDir in `ls crab_MC2017_12Apr2018_monoHiggs_09Jun2020/`; do
	echo -n """ 
      for sample  ${jobDir}
      """
	crab resubmit -d crab_MC2017_12Apr2018_monoHiggs_09Jun2020/${jobDir}
    done
    
    for jobDir in `ls crab_data2017_31Mar2018_09Jun2020/`; do
	echo -n """
      for sample  ${jobDir}
      """
	crab resubmit -d crab_data2017_31Mar2018_09Jun2020/${jobDir}
    done
    
    echo "Sleep for 1hr"
    sleep 3600
done
exit 0;
