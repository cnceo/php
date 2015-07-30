// Õð¶¯º¯Êý
function sound(_this) {



    var route=_sys_idcorp%50;

    var href = _this.attr("href");
    if (/[?&]from=app\b/gi.test(location.href)) {
        if (onoff) {
            try {
                playAudio('http://img.quickapp.cn/5/1100009505/sys/key_sound.wav');
            } catch (e) {
            }
        }
    }

    if (/[?&]from=ios\b/gi.test(location.href)==true&&/[?&]ios=cache\b/gi.test(location.href)==false) {
        if (onoff) {
            try {  
                playAudio('http://img.quickapp.cn/5/1100009505/sys/key_sound.wav');
                } catch (e) {
            }
        }
    }
	
	 if (/[?&]ios=cache\b/gi.test(location.href)) {
        if (onoff) {
            try {  
				url="http://img.quickapp.cn/5/1100009505/sys/key_sound.wav";
                playAudio(dwonFolder+url.replace(/..\/sdcard\//g, ''));
                } catch (e) {
            }
        }
    }
	
}
