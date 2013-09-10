<script language="Javascript">

function seekTime(varSeconds)
{
	alert("oi")
	var mediaElement = document.getElementById('myTaggedVideo');
	mediaElement.currentTime = varSeconds; // Seek to 122 seconds
}

function setCurrentTime(varInputText)
{
	var mediaElement = document.getElementById('myTaggedVideo');
	var varSeconds = mediaElement.currentTime 

	varInputText.value = varSeconds;
	alert("Time Set!")
	
}


</script>''