#!/bin/zsh

BUILDNUMBER_FILE="buildID.txt"

# declare input filetype mappings
declare -A filetype
filetype[md]=markdown
filetype[org]=org

# prepare lua filters
set -G  # nullglob
filter_list=( ~/.pandoc/filters/*.lua )
unsetopt -G

# buildid
[[ -f $BUILDNUMBER_FILE ]] || echo 0 > $BUILDNUMBER_FILE;
buildid="$(cat $BUILDNUMBER_FILE)"
buildid=$(( $buildid + 1 ))
echo $buildid > $BUILDNUMBER_FILE

# task wrap
task() {
    # needed?
    #f=$1
    #formatname=$2

    echo "        $(date) Converting $f..." >> recent_errors.txt
    printf "$(date) Converting $f...\r"
    if [[ $formatname == "markdown" ]]; then
        #sed -E -e 's/!\[\[(.+\.(png|jpg))\]\]/![\1](\1)/g' -i '' $f
    fi
    if [[ $formatname == "org" ]]; then
        # t2proot only works with markdown
        # manually convert existing files:
        # for f in $allnames; do pandoc $f -s -o "$(dirname $f)/_$(basename "${f%.*}").md" &; done
        pandoc $f -s -o "$(dirname $f)/_$(basename "${f%.*}").md"
    fi
    echo pandoc -f $formatname -t pdf   $f --pdf-engine=xelatex --mathjax -s\
        --template=~/.pandoc/templates/default.latex -o "${f%.*}.pdf"\
        "${filter_list[@]/#/--lua-filter=}"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    pandoc -f $formatname -t pdf   $f --pdf-engine=xelatex --mathjax -s\
        --template=~/.pandoc/templates/default.latex -o "${f%.*}.pdf"\
        "${filter_list[@]/#/--lua-filter=}"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    #printf "1/3:     \r"
    pandoc -f $formatname -t latex $f --pdf-engine=xelatex --mathjax\
        --template=~/.pandoc/templates/default.latex -o "${f%.*}.latex" -s\
        "${filter_list[@]/#/--lua-filter=}"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    #printf "2/3:     \r"
    pandoc -f latex -t html "${f%.*}.latex" --pdf-engine=xelatex --mathjax -s\
        --template=~/.pandoc/templates/default.html  -o "${f%.*}.html"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    echo "$(date) Converted $f from $formatname to ${f%.*}.{pdf, latex, html}"
}

#changes="$(git status --porcelain | cut -c4- | grep -E '(\.md|\.org)$')"
changes="$(git status --porcelain | grep -E '^.M ' | cut -c4- | grep -E '(\.md|\.org)$')"
echo "        Log for attempt at $(date) ($buildid)" > recent_errors.txt
for f in ${(@f)changes}; do
    if [[ $(basename $f) == _*.md ]]; then continue; fi # ignore autogenerated files
    amazing=3
    formatname="$filetype[${f:t:e}]"
    task $f $formatname
done

cat recent_errors.txt

cp recent_errors.txt recent_errors.md

make flush >> meta/log.txt

