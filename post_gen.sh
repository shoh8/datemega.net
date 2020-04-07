#!/bin/sh

OUTPUT=./content

echo -n "Title:"
read TITLE

echo -n "Today Posts y/n:"
read Q_TODAY
if [ "${Q_TODAY}" == "y" ];then
  DATE_STR=$(date "+%Y-%m-%d %H:%M")
  FILESTR=$(date "+%Y%m%d_%H%M")
else
  echo -n "Post Date:"
  read DATE_STR
  FILESTR=${DATE_STR}
fi

echo -n "Category:"
read CATEGORY

echo -n "Tags:"
read TAGS

echo -n "Slug:"
read SLUG 

AUTHOR=shoh8
echo -n "Author is ${AUTHOR}? y/n:"
read Q_AUTHOR
if [ "${Q_AUTHOR}" != "y" ];then
  echo -n "author:"
  read AUTHOR
fi

echo -n "Summary:"
read SUMMARY

OUTPUTFILE=${OUTPUT}/${FILESTR}.md

echo "##  reminder  ##"
cat << _EOT_
Title: ${TITLE}
Date: ${DATE_STR}
Category: ${CATEGORY}
Tags: ${TAGS}
Slug: ${SLUG}
Authors: ${AUTHOR}
Summary: ${SUMMARY}

# FILENAME: ${OUTPUTFILE}
_EOT_

echo -n "Are you ready? (y/n):"
read Q_READY
if [ "${Q_READY}" != "y" ];then
  echo "CANCELED!"
  exit -1
fi

cat << _EOT_ >${OUTPUTFILE}
Title: ${TITLE}
Date: ${DATE_STR}
Category: ${CATEGORY}
Tags: ${TAGS}
Slug: ${SLUG}
Authors: ${AUTHOR}
Summary: ${SUMMARY}

# ${TITLE}

${SUMMARY}
_EOT_
