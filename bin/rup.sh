#!/bin/sh

gem update &

# for dailyuse bundle
(
# cd to working directory
cd ~/.gem/needbundle

# bundle install in each target
for target in `ls`;do
  if [ "`readlink -f $target|xargs file|grep directory$`" != ''  ];then
    (
    cd `readlink -f $target`
    # if you want to clean Gemfile.lock,  uncomment below
    rm -f Gemfile.lock

    bundle install &
    )
  fi
done
)

