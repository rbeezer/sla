#! /bin/bash

# Sage and Linear Algebra Worksheets #
#          Robert A. Beezer          #
#  Copyright 2017 License: CC BY-SA  #
#  See COPYING for more information  #

# Sage for Linear Algebra worksheets
#
# History
#
#  2017-01-12  Initiated

##############
# Instructions
##############

# 1.  Make this script executable
# 2.  Check prerequisite binaries below

# Prerequisite binaries/executables
# $ which <name> will return path if available
#
# install
# xsltproc
# A LaTeX installation
#   texfot - utility to restrict output
#   xelatex - preferable for Unicode characters
# MathBook XML distribution

declare ROOT=${HOME}/books/fcla/sla
declare SCRATCH=/tmp/sla
declare MBX=${HOME}/mathbook/mathbook
declare LATEX="texfot xelatex"

# FCLA sections that have worksheets, in order
ALLSECTIONS=(RREF NM SS MISLE CRS FS B PDM EE SD LT ILT SLT IVLT VR MR)

# http://stackoverflow.com/questions/12303974/assign-array-to-variable
# assignment array variable b=( "${a[@]}" )
if [ "X${1}" == "X" ] ; then
    echo "Provide the string 'all' or a section acronym"
    exit
elif [ "${1}" == "all" ] ; then
    declare SECTIONS=( "${ALLSECTIONS[@]}" );
else
    declare SECTIONS=(${1})
fi

# Create/use temp/scratch directory
install -d ${SCRATCH}
cd ${SCRATCH}

echo "*******************"
echo "Processing Overview"
echo "*******************"
# Overview HTML, LaTeX
xsltproc -xinclude ${MBX}/xsl/mathbook-html.xsl  ${ROOT}/worksheets/overview.xml
xsltproc -xinclude ${MBX}/xsl/mathbook-latex.xsl ${ROOT}/worksheets/overview.xml
${LATEX} overview.tex
${LATEX} overview.tex

for SEC in ${SECTIONS[*]}
do
  echo "*****************"
  echo "Processing "${SEC}
  echo "*****************"
  ###############################
  # PDF, process twice with LaTeX
  ###############################
  xsltproc -stringparam numbering.theorems.level 0 -xinclude \
      ${MBX}/xsl/mathbook-latex.xsl ${ROOT}/worksheets/${SEC}/${SEC}.xml
  ${LATEX} ${SEC}.tex
  ${LATEX} ${SEC}.tex
  ######
  # HTML
  ######
  xsltproc -stringparam numbering.theorems.level 0 -stringparam chunk.level 0 \
      -stringparam html.knowl.exercise.inline no -xinclude \
      ${MBX}/xsl/mathbook-html.xsl ${ROOT}/worksheets/${SEC}/${SEC}.xml
  ###############
  # SageMathCloud
  ###############
  xsltproc -stringparam numbering.theorems.level 0 -stringparam chunk.level 0 -xinclude \
      ${MBX}/xsl/mathbook-smc.xsl ${ROOT}/worksheets/${SEC}/${SEC}.xml
  #########
  # Jupyter
  #########
  xsltproc -stringparam numbering.theorems.level 0 -stringparam chunk.level 0 -xinclude \
      ${MBX}/xsl/mathbook-jupyter.xsl ${ROOT}/worksheets/${SEC}/${SEC}.xml
done

# restore working directory
cd - > /dev/null