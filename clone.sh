function returnDirName() {
	IFS='/' read -ra my_array <<< "$1"
        sizeOfArray=${#my_array}
        dirNameWithExtension=${my_array[$sizeOfArray - 2]}
        IFS='.' read -ra arrayOfLastElement <<< $dirNameWithExtension
        echo ${arrayOfLastElement[0]}
}


args=$#
if [ $args -lt 1 ]
then
	echo "Please specify the repo name after the file name as an argument"
else
	echo $1
	cd $(returnDirName $1)
fi

