function getCurrentStartTime()
{
var tagFinish=document.getElementById("tag_start");
var mediaElement = document.getElementById('myTaggedVideo');
var varSeconds = mediaElement.currentTime 

tagFinish.value = varSeconds;
}

function getCurrentFinishTime()
{
var tagFinish=document.getElementById("tag_finish");
var mediaElement = document.getElementById('myTaggedVideo');
var varSeconds = mediaElement.currentTime 

tagFinish.value = varSeconds;
}

function setVideoTime(varSeconds)
{
window.scrollTo(0, 0);
$( 'html, body' ).animate( { scrollTop: 0 }, 'slow' );
document.getElementById('myTaggedVideo').currentTime = varSeconds;
document.getElementById('myTaggedVideo').play();
}