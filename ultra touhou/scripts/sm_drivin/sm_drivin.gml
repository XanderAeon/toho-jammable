function sm_drivin() {
	var songfile = file_text_open_read("drivin.txt");
	var songtxt = "";
	while (!file_text_eof(songfile)) {
		songtxt = songtxt + file_text_readln(songfile) + "\n";
	}
	file_text_close(songfile);
	log(songtxt);
	return songtxt;
}