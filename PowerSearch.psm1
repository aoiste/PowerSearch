function bing {
    #Start-Process microsoft-edge:www.bing.com?q=$url;
    Start-Process -FilePath ("www.bing.com?q=" + $args);
}

function google {
    Start-Process -FilePath ("www.google.com/search?q=" + $args);
}

function wiki {
    Start-Process -FilePath ("www.wikipedia.org/wiki/" + $args);
}

function github {
    Start-Process -FilePath ("www.github.com/search?q=" + $args);
}

function zhihu {
    Start-Process -FilePath ("www.zhihu.com/search?q=" + $args);
}

function tieba($query) {
    Start-Process -FilePath ("https://tieba.baidu.com/f?kw=" + $args);
}

function stack {
    Start-Process -FilePath ("www.stackoverflow.com/search?q=" + $query);
}

function jd {
    Start-Process -FilePath ("https://search.jd.com/Search?keyword=" + $args);
}

function edge($url) {
    if (-not $url.Contains("www")) {
        $url = "www." + $url;
    }
    #Start-Process microsoft-edge:$url;
    Start-Process -FilePath $url;
}

function chrome($url) {
    Start-Process -FilePath "chrome.exe" $url;
}