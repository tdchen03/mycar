$Times = $args[0]
$DonkeyDate = Get-Date -Format "MMdd"
$ModelType = 'linear', 'categorical', 'rnn', '3d', 'memory'
foreach ($Type in $ModelType) {
	donkey train --tub=./data --model=./models/$DonkeyDate$Type$Times.h5 --type=$Type
}
