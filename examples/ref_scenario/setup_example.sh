#!/bin/bash
# We need to do this because NOAA will only keep the results of the latest runs

YEAR=`date -u +"%Y"`
MONTH=`date -u +"%m"`
DAY=`date -u +"%d"`
YEAR_MONTH_DAY=`date -u +"%F"`

cat > ./param/run.cfg <<EOF
YEAR=${YEAR}
MONTH=${MONTH}
DAY=${DAY}
HOUR=0
END_HOUR=6
REQUESTED_RESOLUTION=0p25
GEOG_NAME="geog_high_res_mandatory"
EOF
