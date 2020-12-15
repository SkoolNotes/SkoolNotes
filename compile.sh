#!/bin/zsh

BUILDNUMBER_FILE="buildID.txt"

declare -A filetype
filetype[md]=markdown
filetype[org]=org

[[ -f $BUILDNUMBER_FILE ]] || echo 0 > $BUILDNUMBER_FILE;
buildid="$(cat $BUILDNUMBER_FILE)"
buildid=$(( $buildid + 1 ))
echo $buildid > $BUILDNUMBER_FILE

changes="$(git status --porcelain | cut -c4- | grep -E '(\.md|\.org)$')"
echo "        Log for attempt at $(date) ($buildid)" > recent_errors.txt
for f in ${(@f)changes}; do
    echo "        $(date) Converting $f..." >> recent_errors.txt
    formatname="$filetype[${f:t:e}]"
    printf "$(date) Converting $f...\r"
    if [[ $formatname == "markdown" ]]; then
        #sed -E -e 's/!\[\[(.+\.(png|jpg))\]\]/![\1](\1)/g' -i '' $f
    fi
    pandoc -f $formatname -t pdf   $f --pdf-engine=xelatex --mathjax -s\
        --template=~/.pandoc/templates/default.latex -o "${f%.*}.pdf"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    printf "1/3:     \r"
    pandoc -f $formatname -t latex $f --pdf-engine=xelatex --mathjax\
        --template=~/.pandoc/templates/default.latex -o "${f%.*}.latex" -s\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    printf "2/3:     \r"
    pandoc -f latex -t html "${f%.*}.latex" --pdf-engine=xelatex --mathjax -s\
        --template=~/.pandoc/templates/default.html  -o "${f%.*}.html"\
        --resource-path="$f:h" -V BUILDID=$buildid 2>>recent_errors.txt
    echo "$(date) Converted $f from $formatname to ${f%.*}.{pdf, latex, html}"
done

cat recent_errors.txt

make flush >> meta/log.txt

