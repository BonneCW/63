FUNC VOID B_EndGame()
{
	if (Offline_Modus == FALSE)
	{
		CURL_Send(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/goOffline.php?name=", username));
		CURL_Send(ConcatStrings(ConcatStrings(ConcatStrings("http://www.teutonicteam.de/gomon/tauschen/actualizePlaytime.php?name=", username), "&game=9&time="), IntToString(online_playtime)));
	};
};