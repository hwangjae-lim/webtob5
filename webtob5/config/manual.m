# 
# WebtoB Configuration Reference
# 
# �ش� ���� �ش� �׸� ���� ���� �ڼ��� ������ ���Ѵٸ� "WebtoB Administrator's Guide"�� �����ϱ� �ٶ���.
# 
# �� ������ WebtoB 5.0�� �������� �Ѵ�.
# 

#####
##### DOMAIN �� 
#####
# �������� WebtoB �ý����� �������� ȯ�� ������ �� �� �ִ�.
*DOMAIN

# ������ ������ string �������� 31�ڱ��� ��� ����. 
# �ٸ� ������ string �׸� �̿� �����ϴ�.
webtob1


#####
##### NODE ��
#####
# WebtoB�� �̷�� �� Node�鿡 ���� ��ü���� ȯ�� ������ �� �� �ִ�.
# �ʼ� �׸����� WebtobDir, ShmKey, DocRoot �׸��� �����ؾ� �ִ�.
*NODE

# ���� ��ϵ� ȣ��Ʈ�� �̸��� ���ϸ�, UNIX�� ��� "uname -n" ������� �� Host�� �̸��� Ȯ���� �� �ִ�. 
# Node���� �ݵ�� UNIX�� ��� "/etc/hosts"(Windows�� ��� C:\WINNT\system32\drivers\etc) ���Ͽ� ��ϵǾ� �־�� �Ѵ�.
# �ϳ��� Domain�� �ϳ� �̻��� Node�� �̷�����Ƿ�, NODE������ �ּ��� �ϳ� �̻��� Node �̸��� ���ǵǾ�� �Ѵ�.
WebServer  

# WebtoB�� ��ġ�Ǿ� �ִ� Home Directory �� ���� ��θ��̴�.
# ȯ�溯���� ���ǵǴ� WEBTOBDIR �� ������ ������ �����ϸ� �ȴ�.
                WebtobDir = "/data2/wbqam/webtob",

# Shared Memory Segment�� ����Ű�� ���̴�.
# 32768 ~ 262143 ���� ������ �ٸ� ������ ���Ǵ� Ű���� �浹�� ���� �ʰ� Shared Memory�� Key���� ���� �ϸ� �ȴ�.
                ShmKey = 78100,

# WebtoB�� ���� ���� �����ϴ� ��� ������ �����ϴ� Root Directory �� ���� ��θ� �����Ѵ�.
                DocRoot="/data2/wbqam/webtob/docs",

# HTTP Request Handler) Process�� ������ �����Ѵ�.
# Hth�ϳ��� �� 800�� �̻��� Client�� ������ �� �ִ�.
# Default Number ������ 1 �̸�, �ִ� 20�� ���� ������ �� �ִ�.
                Hth = 2,

# WebtoB�� Listen�ϴ� Port�� �����Ѵ�.
# �Ϲ������� Web Server�� 80 Port �̿��ϹǷ� �������� ������� default ������ 80���� �����ȴ�.
# �ִ� 100���� ��Ʈ�� ���ÿ� �����Ͽ� ����� ���� �ִ�.
# Listen �׸�� ���ÿ� ��� �� ������, Port���� Listen�׸񿡼� �����Ǵ� Port�� �켱������ ����
# ���ÿ� �����ϸ� Port�׸��� ���� �ȴ�.
                Port = "8100,8200",

##### User, Group ����
# WebtoB���� �ý����� ������ ���Ͽ� WebtoB�� ���� ���� Process�� ���� ���� ������ �� �� �ִ�.
# ������ �������� Process�� ����Ǳ� ���ؼ��� �ݵ�� root �������� WebtoB�� �����ؾ� �Ѵ�.

# ������ Group�� �������� WebtoB�� �䱸�� �����ϰ� �ȴ�.
# Client �䱸�� �����ϱ� ���Ͽ� Group ������ �����Ѵ�.
# Group ������ Unix�迭�� OS������ �����Ѵ�.
               Group = "nobody",

# ������ User�� �������� WebtoB�� �䱸�� �����ϰ� �ȴ�.
# Client �䱸�� �����ϱ� ���Ͽ� User ������ �����Ѵ�.
# User ������ Unix�迭�� OS������ �����Ѵ�.
               User = "nobody",

# �������� ������ ��Ÿ����.
# �����ڿ��� ������ �� �ִ� e-mail address�� ������ �� �ִ�.
                Admin = "wbqam@tmax.co.kr",

# Http Response Header�� host name field�� ��ϵ� ���� ������ �� �ִ�.
                HostName = "www.tmax.co.kr",

# �ش� ������ HostName�� ���� �ش�.
# Ư���� $(NODENAME)�̶�� �����ָ�, �ڵ����� �ش� ������ HostName�� ����ȴ�.
# �ѱ� ������ ����ϰų� �� ������ ����� ��� NodeName �� �����Ѵ�.
		NodeName = "$(NODENAME)"

# MultiNode ������ �� Node�� ���� ���� Port ��ȣ�� �����Ѵ�. 
# MultiNode ������ �ݵ�� ������ �־�� �Ѵ�.
# default ������ 7777 ���̴�.
#                NodePort = 7777,

# WebtoB�� Servlet ���� Server���� ���� Port ��ȣ�� �����Ѵ�.
# default ������ 9999 ���̴�.
                JSVPort = 9100,

# Multi Node ������ Node ���� �������� Node�� ����� ���� Port��ȣ�� �����Ѵ�. 
# ���� NodePort�ʹ� �޸� �̰��� ���� Process �� �ϳ��� wsracd Daemon���� ����ϴ� Port��ȣ�̴�.
# default ������ 3333 ���̴�.
                RacPort = 4455,

# WebtoB�� Server ���� Caching�� �� Entry�� ũ��μ� �⺻������ Kbyte�̴�.
# default size�� 128 Kbyte �̴�.
                CacheSize = 128,

# Cache�� �� Hashing Key ��Ʈ�� ������ �����Ѵ�.
# default ������ 128�� �̴�.
                CacheEntry = 256,

# HTML file�� ���� cache refresh time�� �����Ѵ�.
# default ������ 0 second �̴�.
                CacheRefreshHtml = 60,

# DirIndex�� ���� cache refresh time�� �����Ѵ�.
# default ������ 0 second �̴�.
                CacheRefreshDir = 60,

# ����ڰ� ������Ʈ�� ������ ��, �ٸ� ���������� �о� ���̱� ���� �� �ٽ� ������ �õ� �� ��� 
# ���ʿ��� �ð� ������ ������ �Ϸ��� �� �׸��� ���������ν� ������ �������� �ʰ� ������ �� �ִ�.
                KeepAlive = Y,

# Ŀ�ؼ� ������ ���� ������ �䱸�� Ŀ�ؼ��� ������ ���·� ���񽺸� �ϰ� Ŀ�ؼ��� ������ �ϴµ�,  
# Ŀ�ؼ��� ���� ���� ����ִ� �䱸�� ������ �����Ѵ�.
# default ������ 9999 �̴�.
                KeepAliveMax = 10,

# �ϳ��� Client�� ���ʿ��ϰ� Ŀ�ؼ��� ���� ��� �ִ� ��츦 ���� ����
# ���� Request ���� ���� �ð� �̻��� �Ǹ� Ŀ�ؼ��� ���� �� �ֵ��� ������ �� �ִ�.
# default ������ 60 second �̴�.
                KeepAliveTimeout = 30,

# ������� �ִ� ���ӽð��� �����Ѵ�.
# default ������ 300 second �̴�.
                Timeout = 100,

# WebtoB�� ���� ����ں��� ���ÿ� ���� �Ϸ��� ��� �����Ѵ�.
# ���� ������ �Ǹ� �� ������� directory�� ã�Ƽ� ���� �Ѵ�.
                UserDir = "public_html",

# WebtoB�� ���� ���� ���α׷��� �ٷ� ȣ���ϴ� ��� �ش� ���α׷��� ��ġ�� ���丮�� �����Ѵ�. 
# ��θ��� ���� ��ο� WEBTOBDIR�� �������� �� ��� ��θ� ����� �� �ִ�.
                AppDir = "/data2/wbqam/webtob/ap",

##### Log Directory
# WebtoB������ �⺻������ Log ������ ����� ���Ͽ� �����Ѵ�.
# ȯ�����Ͽ� ���� �������� ������� WEBTOBDIR/log ���丮�� ����� �ȴ�.
# �αװ� ��ϵ� ���丮�� ������� booting�� ������ ���Ƿ�, ���� �����ϴ� ���丮���� �Ѵ�.
# ��θ��� ���� ��ο� WEBTOBDIR�� �������� �� ��� ��θ� ����� �� �ִ�.

# �ý��� �޽����� ��ϵ� Directory�� ��θ��� �����Ѵ�.
# Default Path�� (WEBTOBDIR)/log/syslog �̴�.
#                SysLogDir = "/data2/wbqam/webtob/log/syslog",
# SysLogDir �� �� �̻� ��ȿ���� �ʴ�.

# ����� �޽����� ��ϵ� Directory�� ��θ��� �����Ѵ�. 
                UsrLogDir = "/data2/wbqam/webtob/log/usrlog",

# Service Directory�� ��û�� �ô� �⺻������ ���񽺵Ǵ� ���� �̸��� �����Ѵ�.
# �⺻ ������ index.html �̴�.
                IndexName = "indexname.html",

# NODE �� ����Ǵ� �ɼ��� �����Ѵ�.
# HTML: HTML ���� ������
# CGI: CGI ���� ������
# SSI: SSI ���� ������
# PHP: PHP ���� ������
# JSV: JSV (JEUS) ���� ������
# INDEX: Indexing ��� ������
# INCLUDE: Include (SSI) ���� ������
# �� ��� ����� �̿��Ϸ��� "+ALL", ��� ����� �̿����� �������� "-ALL"�� ������ �� �ִ�.
#
# StrictAuthorizationHdrFormat: HTTP Authorization header field �� format �˻縦 �����Ѵ�.
# + �����ΰ�� HTTP request �� Authorization header field �� format �� �˻��ϰ�, format ��
# �������� request �� �����Ѵ�.
# - �����ΰ�� HTTP �� ���ǵ������� ���� �����ϰ� ��û�� ó���Ѵ�.
#
# Default = +ALL,+StrictAuthorizationHdrFormat
                Options = "+Index,-StrictAuthorizationHdrFormat",

# Client�� ������ Request Method�� ���� ���Ǹ� �� �� �ִ�.
# HEAD, GET, POST, OPTIONS ���� ������ �� �� ������, ����ϰ� ���� ������� "-Option" ���� �����ϸ� �ȴ�.
# ����� HTTP Method CONNECT, DELETE, GET, HEAD, OPTIONS, POST, PUT, TRACE ���� �ִ�.
                Method = "GET,POST,HEAD,-OPTIONS",

# �������� IP Address�� ���� Server���� �ڽ��� ���ϴ� IP�θ� ���� �ϱ⸦ ���Ҷ� �����Ѵ�.
# �������� �����ǿ� ��Ʈ�� ������ ���� �ִ�.
# Port�׸�� Listen �׸��� ���ÿ� �����ϴ� ��� Port�� ������ Port�� ���õȴ�.
#               Listen="192.168.1.43:8300",

# DIRINDEX������ �����ϴ� ���丮 �ε����� �̸��� �����ش�.
                DirIndex = "diridx_def"

# ���� Client�� ��� �� �������� �ʾ��� ���
# Server�ʿ��� ������ ��� ������� Multiview request ���� ó���� �̷�������� �Ѵ�.
                LanguagePrio = "kr",

# LOGGING������ �����ϴ� Logging Name�� �����ϸ�, �ش� ������ �ش��ϴ� Log�� ����� �Ǵ� ���̴�.
                Logging = "log1",

# LOGGING������ �����ϴ� Logging Name�� �����ϸ�, �ش� ������ ���� Error Log�� ����� �ȴ�.
                ErrorLog = "log2",

# LOGGING������ �����ϴ� Logging Name�� �����ϸ�, �ش� ������ ���� Sys Log�� ����� �ȴ�.
		SysLog = "syslog",

# WebtoB���� Ư�� ������ �о� ���� �ʿ䰡 �ִ� ��� �̿�ȴ�.
#                EnvFile = "WebtoB.env",

# WebtoB���� SSL�� �̿��� �� Y �� �����Ѵ�. 
# default ������ N �̴�.
#                SslFlag = Y,

# SslFlag = Y �����϶� ������ �Ǹ�, SSL���� ������ Ssl Name�� �����Ѵ�.
#                SSLNAME = "ssl_def",

# ���� ���μ����� ���� ����� �ִ� ���� ������ ���� �����Ѵ�.
                MaxUser = 4000,

# WebtoB ���� ���μ����� ���ٱ����� �����Ѵ�.
# Default ������ 0700 �̴�.
#                IpcPerm = 0744,

# WebtoB log file ���� permission ���� �����Ѵ�.
# Default ������ 0600 �̴�.
#                LogPerm = 0644,

# ������ ��ٸ��� ť(queue)�� ���̸� �����ϴ� ������, 
# ������ �뷮�� ���� �õ��� �Ѳ����� �����ִ� TCP SYN��ŷ�� ���ϰ� �ִٸ� �����ϰ� ��� �ɼ� ���� ���̴�.
# default ������ 511 �̴�.
                ListenBacklog = 100,

# TCP ���� Buffer�� ũ�⸦ �����ϴ� ������, �� �׸��� �̿��ϸ� Ư���� ȯ�濡�� ���� �ӵ��� ����ų �� �ִ�. 
# default ������ 0�̸�, 0�� ���� OS default���� ������� �ǹ��Ѵ�.
                SendBufferSize = 4096,

# Ŭ���̾�Ʈ�� ��û�� HTTP ���������� ���� ������ ������ �� �ִ� Request Body ũ�⸦ ����Ʈ ������ �����ϴ� ������, 
# 0�� ���� ũ�⿡ ������ ������ �ǹ��Ѵ�.
# default ������ 0 bytes �̴�.
                LimitRequestBody = 20000,

# Ŭ���̾�Ʈ�� ��û�� ���Ǵ� HTTP Request header field�� ���� �����Ѵ�. 
# 0�� ���� ������ ������ �ǹ��Ѵ�.
# default ������ 100 �̴�.
                LimitRequestFields = 20,

# Ŭ���̾�Ʈ�� ��û�� ���Ǵ� �� HTTP Request header field�� ũ�⸦ �����Ѵ�. 
# �ִ� ���Ǵ� ���� 8190�̴�.
# default ������ 8190 bytes �̴�.
                LimitRequestFieldSize = 300,

# Ŭ���̾�Ʈ�� ��û�� ���Ǵ� HTTP Request line�� �ִ� ũ�⸦ �����Ѵ�. 
# �ִ� ���Ǵ� ���� 8190�̴�.
# default ������ 8190 �̴�.
                LimitRequestLine = 4000,

# HTTP ���� ����� Server�� ���� ������ ��� �ٷ��� �����Ѵ�.
# "Off", "Prod[uctOnly]", "Min[imal]", "OS", "Full", "Custom=xxx/x.x" ���� ������ �� �ִ�.
# Default ���� "Off".
                ServerTokens = "Off",

# HTTP ��û���κ��� �ش� Server�� Service�� �����Ҷ�, URI���� EXT���� �켱������ �����Ѵ�. 
# Vhost���� �� �׸��� �������� ���� ���� Node���� ������ ���̳� �⺻���� Vhost�� ������ �ȴ�.
# default ������ "uri,ext" �̴�.
                ServiceOrder = "ext,uri",

# HTTP header�� Content-Type�� character set ������ ���� Request�� ���信 �߰��� character set�� �̸��� �����Ѵ�.
# "On"(ISO-8859-1), "Off"(��������), "_charset_"(����� ���) �� �ϳ��� ������ �� �ִ�.
# ���� ������ ����Ǵ� �켱 ������ Node < Vhost < SvrGroup < Directory ���̴�.
                DefaultCharset = "Off",

# MIME-Type�� ������ �� ���� ������ Default Content-Type�� �����Ѵ�. 
# Default Content-Type�� SvrGroup, Vhost, Node���� ������ �����ȴ�
                DefaultMimetype = "text/html",

# Web Server���� ���� ���μ����� IPC����� �ϱ� ���ؼ� �⺻������ Ư�� ��Ʈ(6666)�� ����ϴµ�, 
# IPCBasePort�׸��� ���� �ش� ��Ʈ�� ������ �� �ִ�. 
# ���� Windows������ �����ȴ�. (UNIX�� ��� PIPE���)
# default ������ 6666 �̴�.
#                IpcBasePort = 6667,

# EXPIRES���� ������ Expires�̸��� �����Ѵ�.
                Expires = "exp11, exp12, expdef1",

# TCPGW ���� ������ tcpgw �̸��� �����Ѵ�.
                TcpGW = "tcpgw_full",

# ERRORDOCUMENT���� ������ ErrorDocument �̸��� �����Ѵ�.
                ErrorDocument = "404",

# WebtoB ���� ���μ��� ����� ���� socket���� ���丮�� �����Ѵ�.
# default ������ $WEBTOBDIR/path �̴�.
                PathDir="/data2/wbqam/webtob/path",


##### ��Ƽ��� ������ �Ʒ��� ���� �߰������� ��带 �����Ѵ�.
#tmaxi1  
#                WEBTOBDIR="/data/wbqam/webtob",
#                SHMKEY = 78100,
#                DOCROOT="/data/wbqam/webtob/docs",
#                APPDIR="/data/wbqam/webtob/ap",
#                PORT = "8100",
#                HTH = 2,
#                LOGGING = "log5",
#                ERRORLOG = "log6",
#                HostName = "www.tmax.co.kr",
#                RACPORT = 4455,
#                NodePort = 7787

# CGI, PHP ��ûó���� client �� connection �� �������,
# �۵����� CGI, PHP process �� �ߴ�/�Ϸ�ñ��� ó���� �����Ѵ�.
# Y ����: process ���� ����
# N ����: ��ûó���� process ���� ����
# Default = Y 
                 TerminateCgiUponClientClose = Y,

# HTTP Etag ����� �����Ѵ�.
# Y ����: HTTP response �� �����ϸ� Etag �߰��ϰ�, HTTP request �� Etag �� ����Ѵ�.
# N ����: HTTP response �� Etag �� �߰���������.  HTTP request �� Etag �� �����Ѵ�.
# Default = Y
                 UseEtag = Y,

# Apache mod_rewrite port ��� ����� �����Ѵ�.
# Y ����: ����Ѵ�.  URLRewriteConfig ������ �ʿ��ϴ�.
# N ����: �������������.
# Default = N
                 URLRewrite = N,

# Apache mod_rewrite port �� �������� �������.
# ���������� Apache 2.2 mod_rewrite �� ���� ����� �����ϴ�.
# ���� ����� �������� ������.
# %{SSL:variable}
# %{LA-U:variable}
# %{LA-F:variable}
# %{IS_SUBREQ}
# %{PATH_INFO}
# %{API_VERSION}
# %{REMOTE_HOST}
# %{SCRIPT_USER}
# %{SCRIPT_GROUP}
# %{REMOTE_IDENT}
# %{SERVER_ADMIN}
# %{SCRIPT_FILENAME}
# %{REQUEST_FILENAME}
# RewriteMap
# 'B' (escape backreferences)
# 'proxy|P' (force proxy)
                 URLRewriteConfig = "/webtob/config/rewrite.cfg",

# Reverse proxy ���� client connection �� ������ �� ������ keep-alive connection 
# �� �����ʰ� �����Ҽ��ִ�.  �̿Ͱ��� connection �� �ִ� ������ �����Ѵ�.
# Default = 0
# ���: �ι����� ��� ���������ʾƾ� �Ѵ�.
                 MaxReverseProxyKeepAliveServerConnections = 16,

# Reverse proxy �� ��û�� �����Ͽ� ���� ������ ������ ��� ���Ǵ�
# �޸� ������ ����ũ��.  ���� ��û�� HTTP header field ������ �������,
# �� ���� �����ϸ� ��������� ���� �� �ִ�.  ������ byte.
# Default = 1024
                 ReverseProxyRequestSlackBufferSize = 2048,

# Error ���� (3XX �̻��� status code) �� ������ WebtoB �� client ������ ���´�.
# KeepAliveErrorStatusCode �� Ư�� status code �� �����ϸ�, ������ status code ��
# ���� ������ ������ client ������ �����Ѵ�.
# Default ���� "" (empty string).
                 KeepAliveErrorStatusCode = "301,302",

# HtmlsForbidsWEBINF = Y �� �����Ǹ�, HTMLS �� static file ��û�� ó���ϱ� ��,
# ���� ��ΰ� /WEB-INF/ (case insensitve) ���ԵǴ��� �Ǵ��Ѵ�.  �����ϸ�
# 403 Forbidden ������ ������.  JEUS application ���ϵ鿡���� ������ ���� �� �ִ�.
# Default ���� Y.
                 HtmlsForbidsWEBINF = Y,

# Access log �޽������� WSM �� ���ؼ� ���Ϸ� ��ϵȴ�.  AccessLogThroughWSM = N �� �����ϸ�,
# UNIX ��񿡼��� WSM �� ������ �ʰ� �� WebtoB process ���� ���� ���Ϸ� ����� �� �ִ�.
# Windows ������ N �� ������ �� ����.
# Default ���� Y.
                 AccessLogThroughWSM = Y,

# HTH �� chunked request �� non-chunked request �� ��ȯ�Ѵ�.  �̶� ���Ǵ� �ִ� ��ûũ�⸦
# �����Ѵ�.  ������ ����Ʈ.  Default ���� 10000000 (10MB).
                 MaxDechunkSize = 10000000,

# HTL, HTH ���� ��ſ����� ����ϴ� socket �� ����ũ�⸦ �����Ѵ�.
# ������ ����Ʈ.  Default ���� 0 (OS default) �̴�.
                 HtlHthSendSocketBufferSize = 0,
                 HtlHthRecvSocketBufferSize = 0

# HTMLS, CGIS, PHPS, SSIS ������ client ������ flow control �۵������ �����Ѵ�.
# Y ����: ���� �۵���� ���.  Client �� ������ ������ ������� ������ �ֱ������� client ���¸�
#         �˻��Ѵ� (1�ʿ� �ѹ�).  �̹���� ����ϸ� ���ۼӵ��� ����ܷ� ���������ִ�.
# N ����: ���ο� �۵���� ���.  �ֱ��� �˻縦 ��������ʴ´�.
# Default ���� Y.
                 UseOldServerFlowControl = Y

# HTH ���� HTMLS ��� ��� ����.  ���� HTMLS �� HTMLS ������ �����ϴ� ����� ���� ���� ���Ǵ�
# static file ����, conditional GET (range ��û����) ���� ó���Ѵ�.
# Y ����: ����Ѵ�.  �ڼ��� �۵������ �߰� ������ ���ؼ� �����Ѵ�.
# N ����: ������� �ʴ´�.
# Default ���� N.
                 UseInternalHTMLS = N,

# ���� �������� HTH ���� HTMLS �۵������ �����Ѵ�.  UseInternalHTMLS = Y �ϰ�츸 ����ȴ�.
# InternalHTMLSReadSize �� �ִ� read buffer ũ���̴� (byte).
# Default ���� 16384.
                 InternalHTMLSReadSize = 16384,
# ������ InternalHTMLSMaxCacheSize ���� ������� (byte), HTH cache �� �����Ѵ�.
# Default ���� 8192.
                 InternalHTMLSMaxCacheSize = 8192,
# ������ InternalHTMLSAsyncReadThreshold ���� Ŭ��� HTH ������ worker thread �� ����ؼ� ������ �д´�.
# Default ���� 32768.
                 InternalHTMLSAsyncReadThreshold = 32768,
# InternalHTMLSAsyncReadThreads �� worker thread ������ �����Ѵ�.
# Default ���� 16.
                 InternalHTMLSAsyncReadThreads = 16,
# Sendfile �� �����ϴ� ������ ������ InternalHTMLSSendfileThreshold ���� ũ�� sendfile �� ����ؼ�
# ������ �����Ѵ�.  SSL ������ sendfile �� ����Ҽ�����.
# Default ���� 0 (������� ����).
                 InternalHTMLSSendfileThreshold = 0

# ��û�� ������ ã�� ������ ���, CheckURLFrom���� CheckURLTo�� character encoding�� ��ȯ�Ͽ� �ٽ� ã�ƺ��� �Ѵ�.
# Default ���� N.
                 CheckURL = Y,
# Unix/Linux������ CheckURL = Y�� ������ ���, �׻� CheckURLTo�� �����ؾ��Ѵ�.
# Windows������ CheckURL = Y�� ������ ���, CheckURLTo�� "ACP"�� default�̸�, code-page identifier�� ������ �� �ִ�.
# CheckURLTo/From������ Windows���� ����� �� �ִ� ������ ������ ����.
# "ACP"    Ansi code-page, system default�� ���
# "UTF-8"  UTF-8
# "<code-page identifier>" system�� ��ġ�� code-page�� ��ȣ�� ����
#                          ex) "949" Korean
                 CheckURLTo = "EUC-KR",
                 CheckURLFrom = "UTF-8"  # default

#####
##### VHOST ��
#####
# WebtoB�� Virtual Hosting�� �ʿ��� ���, �̿� ���� ȯ�� ������ �Ѵ�. 
# Virtual Host ����� �����δ� �ϳ��� WebtoB�� ����������, 
# ���� �ٸ� URL�� �ٸ� ������ �����ϵ��� �����μ�, 
# ��ġ ���� ���� Server�� ���񽺸� �����ϴ� ��ó�� ���̵��� �ϴ� ����̴�.
# �ʼ� �׸����� NodeName, HostName, DocRoot�� �����ؾ� �Ѵ�.
*VHOST

# VHost�� �̸��� �����Ѵ�.
vhost_full      

# Virtual Host�� �����ִ� Node�� �̸��� �����ش�. 
# �� Node �̸��� NODE ���� ���ǵǾ� �־�� �Ѵ�.
                NodeName = "WebServer",

# Virtual Host�� ������ �� ������ ����� ȣ��Ʈ �̸��� �����ش�. 
# Name-based Virtual Hosting�� �ϴ� ��� ������ VHOST ������ ȣ��Ʈ �̸��� �ٸ��� �����Ѵ�. 
# �� ���� ȣ��Ʈ �̸����� Virtual Host�� ���еȴ�.
                HostName = "vhost.tmax.co.kr",

# Virtual Host�� �����ϰ� �� HTML������ �ִ� �ֻ��� ���丮 ��θ��� �����Ѵ�.
                DocRoot="/data2/wbqam/webtob/docs/vhost_full",

# VHOST���� ���� �׸��� ���� NODE���� ���� �׸� �� �Ϻκ��̸� �� ������ �����ϴ�. 
# ���� ������ virtual host�� ���� ������ �ȴ�. 
# �� �׸��� ���� �� �������� ���ؼ��� NODE���� �����Ͽ� �����Ѵ�.
#                Port = "8540",
#                Listen = "192.168.1.43:8540",

##                SslFlag = Y,
##                SslName = "ssl_def",

#                Group = "nobody",
#                User = "nobody",

#                Admin = "vhost@tmax.co.kr",
#                AppDir = "/data2/wbqam/webtob/ap",
#                IndexName = "vindexname.html",
##                DirIndex = "diridx_ign",
#                ServiceOrder = "ext,uri",
#                DefaultCharset = "On",
#                DefaultMimetype = "application/octet-stream",
#                KeepAlive = Y,
#                KeepAliveTimeout = 10,
#                KeepAliveMax = 5,
#                Timeout = 5,
#                UserDir = "vpublic_html",
#                Options = "-CGI,-Index",
#                Logging = "log3",
#                ErrorLog = "log4",
#                ErrorDocument = "404",
#                Method = "GET,-POST,-HEAD,-OPTIONS",
#                Expires = "expdef1" 
#                HostAlias = "quality.tmax.co.kr,qa2.tmax.co.kr",

##### VHOST���� ������ ��.
#vhost_def       
#                NodeName = "WebServer",
#                HostName = "192.168.1.43",
#                DocRoot = "/data2/wbqam/webtob/docs",
#                Port = "8510",
#                Logging = "log3",
#                ErrorLog = "log4"

#vhost_only      NodeName = "WebServer",
#                HostName = "192.168.1.43",
#                DocRoot = "/data2/wbqam/webtob/docs",
#                Port = "8520",
#                Logging = "log3",
#                ErrorLog = "log4",
#                DirIndex = "diridx_ign",
#                Options = "+Index",
#                KeepAlive = N

#vhost_ssl       NodeName = "WebServer",
#                HostName = "192.168.1.43",
#                DocRoot = "/data2/wbqam/webtob/docs",
#                Port = "8530",
#                Logging = "log3",
#                ErrorLog = "log4",
#                SslFlag = Y,
#                SslName = "ssl_def"


#####
##### HTH_THREAD ��
#####
#HTH_THREAD ���� HTH ���μ����� �������� �����Ѵ�. 
#HTH_THREAD ���� �ݵ�� �����ؾ� �ϸ� �ϳ��� �����Ѵ�.
#
*HTH_THREAD

name    # String[32]
# 31�� �̳��̾�� �Ѵ�.
# HTH_THREAD �̸��� �����Ѵ�.

        WorkerThreads = Numeric           # 8 (1-100)
# Worker Thread�� ���� �����Ѵ�.
# Worker Thread�� ���� ���� ó��, SSL/TLS ó��(Handshake, ��ȣȭ, ��ȣȭ), ���� ó��, HTTP ���� ó���� �ϴ� �������̴�.

       #ReadBufSize = Numeric,            # 1048576 (65536-)
# Worker Thread���� ���� ������ �б� ���� read buffer ũ�⸦ �����Ѵ�.

       #SendfileThreads = Numeric,        # 4 (0-100)
# Sendfile Thread�� ���� �����Ѵ�.
# ���� ������ ó���� �� Ư�� OS������ �����ϴ� sendfile ����� ����ϴ� �������̸�, blocking���� �����Ѵ�.
# �� ����� UNIX/Linux ȯ�濡���� ����� �� �ִ�.

       #SendfileThreshold = Numeric,      # 32768 (0-)
# ��û�� ������ ũ�Ⱑ ������ ������ ũ�� sendfile�� ����Ѵ�.
# 0���� �����ϴ� ��� sendfile ����� ������� �ʴ´�.
# �� ����� UNIX/Linux ȯ�濡���� ����� �� �ִ�.

       #AccessLogThread = Boolean,        # Y
# HTH���� ����� ��û ó���� ���� ����� ����� ���� ������ ��� ���θ� �����Ѵ�.
# �� ����� ������� �ʴ� ��� WSM���� ���� ����� ����� �ȴ�.
# �� ����� UNIX/Linux ȯ�濡���� ����� �� �ִ�.

       #HtmlsCompression = Literal[256]   # LIST[32], MULTI
# Worker Thread���� ó���ϴ� ���� ���Ͽ� ���� ���信 ���� ������ ����� �����ϴ� �����̴�.
# ������ MIME-Type�� �����ϸ�, ������ Content-Type�� ���ȴ�. �ش�Ǵ� ������ Ŭ���̾�Ʈ�� ���۵Ǳ� ���� Worker Thread���� GZIP�� ����ؼ� ����ȴ�.
# �޸�(,)�� �����Ͽ� �ִ� 32������ ���� MIME-Type�� ������ �� �ִ�.
# �������� ����� ��� ��Ʈ��ũ Ʈ������ ���� �� ������, ������ ������ ���ϵ� �� �ִ�.
# ������� ���� ����(zip ���� ���������̳� jpeg ���� ���� �̹��� ��)�� ������ ��� ������ ���ϸ� �ֱ� ������ �ش� MIME-Type�� ���� ����� ���� �ʵ��� �����ؾ� �Ѵ�.
# ���� ����� HTTP Request Header �� Accept-Encoding�� GZIP�̳� deflate�� ������ ��û�� ���ؼ��� ����ȴ�.

       #HtmlsCompressionMinSize = Numeric # 1 (1-)
# ���� ������ ���� ������ �����ϰ��� �� �� ������ �ּ� ũ�⸦ �����Ѵ�.
# ��û�� ������ ũ�Ⱑ ������ ������ ũ�� ������ �����Ѵ�.

##### HTH_THREAD���� ������ ��.
#hworker
#  WorkerThreads = 8,
#  SendfileThreads = 4,
#  SendfileThreshold = 32768,
#  AccessLogThread = Y

#####
##### SVRGROUP ��
#####
# WebtoB�� ���� ���� Server Process�� �����ϴ� ��� Server Process�� ������ �������� ���� 
# �̵��� �׷����� ������ �ʿ䰡 �ְ� �ȴ�. 
# �ʼ� �׸����� NodeName, SvrType �� �����ؾ� �Ѵ�.
*SVRGROUP

# Server Group�� ���� ������ �̸����ν� SVRGROUP�� ������ ������ ���̾�� �Ѵ�.
# SVRGROUP�� �̸��� SERVER ���� SVGNAME �׸񿡼� ���ȴ�.
htmlg_full      

# Server Group�� �����ϴ� Node�� �����Ѵ�. 
# ���Ǵ� NodeName�� NODE ������ ������ Node �̸��̾�� �Ѵ�.
                NodeName = "WebServer", 

# Server Group�� �Ӽ�, �� ��� ���񽺸� �����ϴ°��� ����Ѵ�. 
# SvrType���� HTML, CGI, JSV, WEBSTD, SSI �߿� �ϳ��� ���� �����Ͽ��� �Ѵ�.
                SvrType = HTML,

# Server Group�� Virtual Host�� ���� ��� �ش� Virtual Host �̸��� �����ش�.
#                VhostName = "vhost_only",

# WebtoB�� ���� ���� ���α׷��� �ٷ� ȣ���ϴ� ��� �ش� ���α׷��� ��ġ�� ���丮�� �����Ѵ�. 
# ��θ��� ���� ��ο� WEBTOBDIR�� �������� �� ��� ��θ� ����� �� �ִ�.
                AppDir = "/data2/wbqam/webtob/ap/htmlg2/",

# ����� �޽����� ��ϵ� Directory�� ��θ��� �����Ѵ�. 
                UsrLogDir = "/data2/wbqam/webtob/log/usrlog/htmlg2/",

# WebtoB���� Ư�� ������ �о� ���� �ʿ䰡 �ִ� ��� �̿�ȴ�.
#                EnvFile = "WebtoB.env",

# LOGGING������ �����ϴ� Logging Name�� �����ϸ�, �ش� ������ �ش��ϴ� Log�� ����� �Ǵ� ���̴�.
                Logging = "log_htmlg2",

# php�� ���õ� Server Group�� ������ ��� php ���� ����� ������ �����ϴ� ���� ��θ� �����ϴ� �׸��̴�. 
##                ScriptLoc = "/cgi-bin/php"

# php ��� �ܺ� php executable �� ��������ʰ� php �� ����������� �ε��Ҽ��ִ�.
# UseSAPI=Y �� �����ϸ� php ���������Ѵ�.  �⺻���� N �̴�.
# Y �� �����Ѱ��, ��� ��θ� SapiModulePath �� �ݵ�� �����ؾ��Ѵ�.
# �߰������� php �� ����� php ini ���ϰ�θ� SapiIniPath �� �����Ҽ��ִ�.
#                UseSAPI=Y,
#                SapiModulePath="libphp5.so",
#                SapiIniPath="php.ini",

# HTTP header�� Content-Type�� character set ������ ���� Request�� ���信 �߰��� character set�� �̸��� �����Ѵ�.
# "On"(ISO-8859-1), "Off"(��������), "_charset_"(����� ���) �� �ϳ��� ������ �� �ִ�.
# ���� ������ ����Ǵ� �켱 ������ Node < Vhost < SvrGroup < Directory ���̴�.
#                DefaultCharset = "On",

# MIME-Type�� ������ �� ���� ������ Default Content-Type�� �����Ѵ�. 
# Default Content-Type�� SvrGroup, Vhost, Node���� ������ �����ȴ�
#                DefaultMimeType = "application/jsp",

# EXPIRES���� ������ Expires�̸��� �����Ѵ�.
#                Expires = "expdef1",

# AUTHENT������ ������ �̸��� ����ϸ� �ȴ�.
# ����(Authentication)�� ������ �� �ִ�
#                AuthentName = "auth_def"

# Multi Node ȯ�濡�� ���Ϻл��� ���ؼ� �ݵ�� ������ �־�� �ϴ� �׸��̴�. 
# �ٸ� �׷� �̸��� ������ �ָ� �׷캰�� ���� ���� ���μ����� �����ϰ� �Ǿ� 
# ������ �׷쿡�� ���� ���μ����� ������� �ʾƵ� �ش� ���μ����� ���񽺸� ó���� �� �ְ� �ȴ�. 
# ���� Node�̰ų� �ٸ� Node�� �ִ� �׷��� ��� ��� �����Ͽ� ���� �� �� �ִ�.
##                Cousin = "htmlg3",

# Multi Node ȯ�濡�� Cousin ������ ���� �л� ����� �����Ѵ�.
# ���� ������ ���� 1 ~ 256 �̴�.
# 0 �ϰ�� Dynamic Load Balancing�� �ǹ��ϸ�, 
# �� ��忡�� ���̻��� ����ڸ� ó���� ������ ������ �ٸ� ��忡�� ó�� �Ѵ�.
##                Load = 2

# Multi Node ȯ�濡�� ��� �����׷��� �����ϴ� �׸��̴�.
# ��ֽ� �ߴ� ���� ���񽺸� �� �� �ְ� ��ֽ� ��� �Ǿ�� �� �׷� �̸��� �����Ѵ�.
##                Backup = "backsvg"

##### SVRGROUP���� ������ ��.
#htmlg_def       NodeName = "WebServer", 
#                SvrType = HTML

#htmlg_auth      NodeName = "WebServer", 
#                SvrType = HTML,
#                AuthentName = "auth_def"

#webapg_def      NodeName = "WebServer", 
#                SvrType = WEBSTD

#cgig_def        NodeName = "WebServer", 
#                SvrType = CGI

#jsvg_def        NodeName = "WebServer", 
#                SvrType = JSV

#phpg_def        NodeName = "WebServer", 
#                SvrType = PHP,
#                ScriptLoc = "/cgi-bin/php"

#ssig_def        NodeName = "WebServer", 
#                SvrType = SSI

##### MultiNode ������ ���� SVRGROUP���� ������ ��.
#mainsvg         NodeName = "WebServer", 
#                SvrType = HTML,
#                Backup = "backsvg"

#backsvg         NodeName = "tmaxi1", 
#                SvrType = HTML

#htmlg1          NodeName = "WebServer", 
#                SvrType = HTML,
#                Cousin = "htmlg3",
#                Load = 2

#htmlg3          NodeName = "tmaxi1", 
#                SvrType = HTML,
#                Load = 1

#####
##### SERVER ��
#####
# WebtoB���� �����ϴ� ���񽺵��� ����Ѵ�.
# WebtoB�� �����ϴ� ��κ��� ���񽺴� SERVER ������ ����� �����ϸ�,
# ����Ͻ� ������ WebtoB�� ���� ���� ȣ���ϴ� ��쿡�� SERVICE ���� ����� �ʿ��ϴ�. 
# �ʼ� �׸����δ� SvgName�� �����ؾ� �Ѵ�.
*SERVER

# Server�� ���� ���� �̸����ν� �Ϲ������� Server �̸��� ����(Unique) �ؾ� �Ѵ�.
html_full       

# Server�� ���� �ִ� Server Group�� �����Ѵ�.
                SvgName = htmlg_full,

# Ư�� vhost ������ ������ ����Ұ��, vhost �̸��� �����Ѵ�.
# Server group �� vhost �̸��� �����Ҽ��ִ�.  Server �� server group ��ο� vhost �̸��� �����Ǿ��ִ� ���,
# �̸��� ��ġ�ؾ��Ѵ�.
#               VhostName = vhost1,

# Server Process�� �⵿ �� �� �� Server Process�� ���޵Ǵ� ��ɾ� �ɼ��� ���� ��� �� �׸񿡼� ������ �� �ִ�. 
# ���ǵ� �ɼǵ� �߿� '--' ������ ������ �ɼǵ��� �ý��ۿ��� ����ϰ�, 
# �� ���Ŀ� ������ �ɼǵ��� ����ڰ� �����Ӱ� ����� �� �ִ�.
                Clopt = "-o html_full.out -e html_full.err",

# �⺻������ �⵿ �� Server Process�� ������ �����Ѵ�.
                MinProc = 2,

# MinProc�� �����Ͽ� �߰������� �⵿ ��ų �� �ִ� Process�� �ִ� �����̴�.
                MaxProc = 10,

# ����� �޽����� ��ϵ� Directory�� ��θ��� �����Ѵ�. 
                UsrLogDir = "/data2/wbqam/webtob/log/usrlog/html_full/",

# ť�� ��ü�� Client�� �䱸���� ��� ���� �̻��� �Ǹ� 
# ���� ������ �䱸�� ť�� ��ü���� �ʰ� Client�� ��� ������ ������ �� �ֵ���
# ť�� ��ü �� �䱸 �Ѱ踦 �����Ѵ�.
#                MaxQCount = 2,

# ť�� ��ü�� Client�� �䱸���� ��� ���� �̻��� �Ǹ� 
# ���� ������ �䱸�� ť�� ��ü���� �ʰ� redirect ������ ������.
# �� ������ ���� �ٸ� �������� ��û�� ó���ϰų�, Max Queue �������� ǥ���ϴ� �������� ������ �� �ִ�.
# ��, �� ��� redirect �Ǵ� ������ ���� ������ ��� ������ redirect�� �� �ִ�.
#                MaxQUrl = "/err/maxq.html",

# �ڵ����� Server Process�� �߰� �⵿ �Ǳ� ���� �������� ť�� �׿��� �䱸 ������ �����Ѵ�. 
# ��, �� ť�� ������ �̻��� ���� ��ü�Ǹ� MinProc���� MaxProc�� ������ ����ŭ ���ʴ�� �����ϰ� �ȴ�.
#                AsQCount = 1

# Ư���� Server Process���� HTH Process�� ���� ��� ä�� ���� �����ϴ� �׸��̴�. 
# Server Process�� ó������ ���� ���� �ϳ��� ä�ηδ� ó���ӵ��� ���ϵ� �� ���� ������� ó�� �ӵ��� ������ų �� �ִ�.
#                SvrCPC = 4, 

# SERVER���� �� server�� ���ǵ� MaxRequests���� ����, 
# �� server�� ���μ������� �� ����ŭ�� ����� request�� ó���� ��, auto-rebooting�ȴ�.
# 0���� ������ ������ ���� �ʴ´�.(unlimited)
# default ������ 0 �̴�. 
#                MaxRequests = 5,

# �������μ����� �ִ� ����� ���� Ƚ���� �����Ѵ�.
#                MaxRestart = 2,

# Server���� ������� ��û�� response�� ���� �� ����ϴ� ������ ũ�⸦ �����Ѵ�.
# default ������ 4096 �̴�.
                HttpOutBufSize = 2048,

# Server�� ������� request�� ���� �� ����ϴ� ������ ũ�⸦ �����Ѵ�.
# default ������ 8192 �̴�.
                HttpinBufSize = 4096,

# Request�� ó���� Server Process�� �����ϴ� ����� �����Ѵ�.
# RR : Round Robin������� Idle�� Server Processor�� ��û�� �Ҵ��Ѵ�.
# FA : First Assign������� �켱����(index)�� ���� Idle�� Server Process�� ��û�� �Ҵ��Ѵ�.
# default ������ RR �̴�.
                Schedule = FA,

# �������� ������ �������� Ȯ���ϱ� ���� üũ�ϴ� �ð��� �����ϸ� 
# ��ȭ���� ���̿� �ΰ� ����� JEUS ���� ������ Ȯ���ϴ� �� ���ȴ�.
                SvrChkTime = 5,

# JSV (JEUS) �����ΰ�� session routing ������ ���Ǵ� session ID key �̸��� �����Ѵ�.
# Default = "JSESSIONID"
                SessionIdCookieKey = "MySessionId",

# ������ Content-Type �� ������ GZIP �����Ѵ�.
# �Ѱ��̻��� Compression= �� ����ϸ� �������� Content-Type �� �����Ҽ��ִ�.
# Default = ������������.
                Compression = "text/html",
                Compression = "text/plain",

# �ش� ������ ����� �ɼ��� �����Ѵ�.
# {+|-}Cache : Content�� Cache ������ �����Ѵ�. ���� SvrType�� HTML�� �������� �����ȴ�.
# BlockListen : Server�� ���� �Ҵ� ���°� �Ǹ�, ���̻��� Ŭ���̾�Ʈ�� �޾Ƶ����� �ʵ��� WebtoB�� Port Listen�� �ߴ��Ѵ�.
# NotifyClientClose : JSV (JEUS) �����ΰ�� client �� ������ ������ JSV ���ᵵ �Բ� ���´�.
# default ������ none �̴�.
                Options = "-Cache,BlockListen",

# FastCGI ���� ���� (CGI ����).
#
# FcgiInitEnv �� ����ؼ� FastCGI application �� �����Ҷ� ȯ�溯���� �߰��Ҽ��ִ�.   
# ������ NAME=VALUE.
                FcgiInitEnv = "LOGFILE=d:/wb-413/log/iip.log",
# FastCGI application process �� �������� ������ �ð��� ������ CGI ������ ��ûó���� process �� ������ �����Ѵ�.
# FcgiKillTimeOut ������ second.  0 �� �������� �ǹ��Ѵ�.
                FcgiKillTimeOut = 600,
# FastCGI application process �� �������� ó���� ��û�� �� ������ ������ �ʰ��ϸ� CGI ������
# process �� ������ �����Ѵ�. 0 �� �������� �ǹ��Ѵ�.
                FcgiKillMaxRequest = 100

##### SERVER���� ������ ��.
#html_def        SvgName = htmlg_def

#html_auth       SvgName = htmlg_auth

#html_cpc        SvgName = htmlg_def,
#                SvrCPC = 4

#html_nocache    SvgName = htmlg_def,
#                MinProc = 2,
#                HttpOutBufSize = 0,
#                HttpInBufSize = 0,
#                Options = "-Cache"
##               UriDir = "/uri/exclusive"

#svr_def         SVGNAME = webapg_def

#cgi_def         SVGNAME = cgig_def

#MyGroup_def     SvgName = jsvg_def,
#                MinProc = 5, MaxProc = 10

#php_def         SvgName = phpg_def

#ssi_def         SvgName = ssig_def

##### MultiNode ������ ���� SERVER���� ������ ��.
#html_failover   SVGNAME = mainsvg,      
#                MinProc = 2, 
#                MaxProc = 10,
#                Options = "-Cache"

#html_load       SVGNAME = htmlg1,
#                MinProc = 2, 
#                MaxProc = 10,
#                Options = "-Cache"

######
###### SERVICE ��
######
# WebtoB�� ���� ����Ͻ� ������ �ٷ� ������ ��쿡�� ������ �ʿ��ϴ�.
# �ʼ� �׸����� SvrName�� �����ؾ� �Ѵ�.
*SERVICE

# WebtoB�� ���� �ٷ� �����Ű���� �ϴ� ����Ͻ� ������ �ش��ϴ� 
# Server���α׷� ���� �Լ� �̸� (Service ��ƾ��)�� ����Ѵ�.
# 15�� �̳��� SERVICE�� ������ ������ �̸��̾�� �Ѵ�.
#svc_def

# �ش� Service�� �����ϴ� Server Process�� �����Ѵ�.
                SvrName = svr_def,

# Client �䱸�� ó���ϴ� �켱���� ���� �����Ѵ�.
# 1 ~ 50 ������ ���� ������ �� ������, ���ڰ� �������� ���� �켱�������� ���´�.
                Priority = 10,

# Service ó���� ���� �ð��̴�. 
# ������ SvcTime �ð����� ó���� ���ϸ� ������ ��������.
                SvcTime = 5

#####
##### DIRECTORY ��
#####
# Node���� Ư�� Directory�� �Ӽ��� �����Ѵ�.
# �ʼ� �׸����� Directory�� �����ؾ� �Ѵ�.
*DIRECTORY

# DIRECTORY������ ������ �̸��� �����Ѵ�.
dir_full       

# �Ӽ��� ������ Directory�� ��θ��� �����Ѵ�.
                Directory = "/data2/wbqam/webtob/docs/directory/dir_full", 

# HTTP header�� Content-Type�� character set ������ ���� Request�� ���信 �߰��� character set�� �̸��� �����Ѵ�.
# "On"(ISO-8859-1), "Off"(��������), "_charset_"(����� ���) �� �ϳ��� ������ �� �ִ�.
# ���� ������ ����Ǵ� �켱 ������ Node < Vhost < SvrGroup < Directory ���̴�.
                DefaultCharset = "kr",

# MIME-Type�� ������ �� ���� ������ Default Content-Type�� �����Ѵ�. 
# Default Content-Type�� SvrGroup, Vhost, Node���� ������ �����ȴ�
                DefaultMimeType = "text/html",

# ���丮 ���� ��� ���ҽ��鸦 ForceMimetype�� ������ Mimetype���� ó���ϰ� �Ѵ�.
                ForceMimeType = "text/html",

# Virtual Host�� �����ִ� Node�� �̸��� �����ش�. 
# �� Node �̸��� NODE ���� ���ǵǾ� �־�� �Ѵ�.
                NodeName = "WebServer"

# Virtual Host�� �̿��ϰ� ������ ȯ�濡�� DIRECTORY�� ���� ������ 
# �ش� Virtual Host���� ����ǵ��� ������ �ؾ� �� �ʿ䰡 ���� �� ������ �����̴�.
#               VHostName = "vhost_only"

# DIRECTORY ���� ���ؼ� ����(Authentication)�� ������ �� �ִ�.
# ��, ����Ÿ���� JSV�� ��� SVRGROUP���� ������ ������ �� �ִ�.
##                AuthentName = "auth_def"

# ACCESS���� ������ �̸��� �����Ѵ�.
# AccessName�� ������ ��Ģ�� ���� Access�� ������ �� �ִ�.
##                AccessName = "access_allow"

# DIRECTORY ���� ����� �ɼ��� ������ �� �ִ�.
                Options = "+Cache"

##### DIRECTORY���� ������ ��.
#dir_def         DIRECTORY = "/data2/wbqam/webtob/docs/directory/dir_def"
#dir_auth        DIRECTORY = "/data2/wbqam/webtob/docs/directory/dir_auth", 
#                AuthentName = "auth_def"
#dir_access      DIRECTORY = "/data2/wbqam/webtob/docs/directory/dir_access", 
#                AccessName = "access_allow"
#dir_noaccess    DIRECTORY = "/data2/wbqam/webtob/docs/directory/dir_noaccess", 
#                AccessName = "access_deny",
#                VHostName = "vhost_only"
#dir_mixed       DIRECTORY = "/data2/wbqam/webtob/docs/directory/dir_mixed", 
#                AccessName = "access_mixed"

#####
##### URI ��
#####
# URI Section�� Client �䱸�� URI(Uniform Resource Identifier)���� ���� 
# �̸� ó���ϴ� ���񽺸� ������ �� �ֵ��� �Ѵ�. 
# URI���� CGI�� �̿��ϴ� ��쿡 ���� �̿�ȴ�. 
# �ʼ� �׸����� Uri, SvrType �� �����ؾ� �Ѵ�.
*URI

# Uri �̸��� �����Ѵ�.
uri_full        

# ���� �Ӽ��� ������ URI ���� �����Ѵ�.
                Uri = "/uri/full/",

# URI �� ������ ������ �⺻������ request URL �� prefix �� ���ȴ�.
# Prefix �� exact matching, fn matching, regular expression matching �� ��밡���ϴ�.
# Match �� ����ϰ� ���� ����� �����ϸ� �ȴ�.
# �������� ��: prefix, exact, fn, regexp
# Default ���� prefix �̴�.
#               Match = "exact",

# ������ URI�� �����ϴ� Request�� ���� �� �̸� ó���� Server�� �����Ѵ�. 
                SvrType = HTML,

# ó���� ����� Server�� �̸��� �����Ѵ�
                SvrName = html_def,

# ó���� ������ Service�� �̸��� �����Ѵ�.
#                SvcName = "",

# Multi Node�� ������ ȯ�濡�� 
# NodeName�� ������ URI�� �ش� ��忡�� ����ȴ�.
#                NodeName = "WebServer",

# Ư�� Vhost�� ���� URI�� �����ϰų� 
# Vhost���� URI�� �����ϳ� �ٸ� SVRTYPE�� ������� �� �����Ѵ�.
#                VHostName = "vhost_only"
#
# ���� URI �� �ϳ��̻��� Vhost �� �����ϰ���� ���, �������� Vhost �̸��� ������ �� �ִ�.
# �̶� �̸����� comma �� �����Ѵ�.  �̸��� ���� ��� VhostName �� ������ �����ϸ� �ȴ�.
#                VhostName="vhost1, vhost2",
#                VhostName="vhost3"

# ���� URI�� ���� �䱸�� �ٸ� URI�� Mapping ��Ű���� �Ҷ� �����Ѵ�. 
#                Redirect = ""

# Redirect ��� ���� �߻��� http status �����Ѵ�. 
# �� ���� http response�� Location header�� �����Ǿ� ����ڿ��� ��������.
#                RedirectStatus = permanent,

# URI ���� ���ؼ� ����(Authentication)�� �����ϰ��� �Ҵ� �����Ѵ�.
#                AuthentName = "auth_def"

# URI���� ����� �ɼ��� �����Ѵ�.
                Options = "-Cache,SSLDenySSL",

# SvrType = CGI �� ���, ��û�� SCGI ���� �����Ѵ�.  SCGI = Y �� �����ϸ�,
# �߰������� SCGI ���� �ּҵ� �Բ� �����ؾ� �Ѵ�.
                SCGI = N,

# SCGI ���� �ּҸ� �����Ѵ�.  ������ "�����̸�/IP �ּ�:port ��ȣ".
                ScgiServer="server21:11112",

# SvrType = CGI �� ���, ��û�� FastCGI ���� �����Ѵ�.
                FCGI = N


##### URI���� ������ ��.
#uri_cgi         Uri = "/cgi-bin/", 
#                SvrType = CGI

#uri_wbapi       Uri = "/svct/", 
#                SvrType = WEBSTD

#uri_jsv         Uri = "/examples/", 
#                SvrType = JSV

#uri_php         Uri = "/uri_php/", 
#                SvrType = PHP

#uri_ssi         Uri = "/uri_ssi/", 
#                SvrType = SSI

#uri_exclusive   Uri = "/uri/exclusive/", 
#                SvrType = HTML,
#                SvrName = html_nocache

#uri_redirst     Uri = "/uri/redirect/", 
#                SvrType = HTML, 
#                Redirect = "/uri/redirect3/",
#                RedirectStatus = permanent,
#                VHostName = "vhost_only"

#uri_redir       Uri = "/uri/redirect/", 
#                SvrType = HTML, 
#                Redirect = "/uri/redirect2/"

#uri_auth        Uri = "/uri/auth/",
#                SvrType = HTML,
#                AuthentName = "auth_def"

#uri_access      Uri = "/uri/access/",
#                SvrType = HTML,
#                AccessName = "access_allow"

#uri_noaccess    Uri = "/uri/noaccess/",
#                SvrType = HTML,
#                AccessName = "access_deny",
#                VHostName = "vhost_only"

#uri_svgauth     Uri = "/uri/svgauth/",
#                SvrType = HTML,
#                SvrName = html_auth

#####
##### ALIAS ��
#####
# Server ���� ������ ���丮 ��ο� URI�� Alias��Ű���� ������ �� �ִ�. 
# �̴� ����ڰ� Document root�� ������� ������ �� �ֱ� ������ 
# �����ϴ� ���忡�� �ſ� ���� ���̴�.
# �ʼ� �׸����� Uri, RealPath�� �����ؾ� �Ѵ�.
*ALIAS

# Alias �̸��� �����Ѵ�.
ali_full        

# Alias ��Ű���� �ϴ� URI�� �����Ѵ�.
                Uri = "/ali_full/", 

# Server ���� ������ Directory�� ��θ��� �����Ѵ�.
                RealPath = "/data2/wbqam/webtob/docs/",

# Alias�� ����� �� �̸� ������ Server�� Type�� �����Ѵ�.
                SvrType = HTML,

# Alias ���� ����Ǵ� Node�� �����Ѵ�.
                NodeName = "WebServer",

# Alias ���� ����Ǵ� Virtual Host�� �����ϰ� ���� �� ����Ѵ�.
                VhostName = "vhost_only"

##### ALIAS���� ������ ��.
#ali_def         Uri = "/ali_def/",
#                RealPath = "/data2/wbqam/webtob/docs/alias/"
#ali_cgi         Uri = "/cgi-bin/",
#                RealPath = "/data2/wbqam/webtob/cgi-bin/"

#####
##### DIRINDEX ��
#####
# ��û �ּҰ� ���丮������ ��õ� ���丮 ������ ������ �� �ֵ��� ������ �� �ִ�.
# DIRINDEX���� ����ϱ� ���ؼ� NODE������ Options = "+Index", DirIndex = "DirIndex_Name"
# ������ �ؾ� �Ѵ�.
# �ʼ� �׸����� Options�� �����ؾ� �Ѵ�.
*DIRINDEX

# DirIndex �̸��� �����Ѵ�.
diridx_full     

# Options
# {+|-}Fancy �ɼ�
#   WebtoB�� �����ϴ� Fancy Indexing�� on/off�� ������ �� �ִ�.
#   Fancy Indexing�� filename, last-modified, filesize���� �����ϴ� ��ũ�� �����ִ� ����̴�.
# {+|-}EncodeURL �ɼ�
#   ������ ������ ������ URL�� Non-ASCII�� ���� URL-encoding ����� �����Ѵ�.
#   -EncodeURL�� ������ ��� �ѱ������� link�� �ѱ� �״�� ���̰� �Ǹ�,
#   ������ ������ ���� �ش� ������ Not Found�� �� �� �ֱ� ������ �����ؾ� �Ѵ�.
# Default ���� = Fancy, EncodeURL
                Options = "Fancy, EncodeURL",

# ǥ���ϰ� ���� ���� ���ϵ��� Index ����Ʈ�� ��Ÿ���� �ʵ��� ���ش�. 
# Description, HeaderFile, TailFile�� ������ �׸��� ���̰� ���� ������� �����ϸ� �����ϴ�.
                Ignore = "desc, header.html, tail.html, *.bak",

# Ư���� ���Ͽ� ���� Description�� �����Ѵ�.
# description file�� ���� �����̸�,
# docroot�� ���� �����η� �����ϰų�, ���� directory�κ��� ����η� ������ �� �ִ�.
#
# description file�� �����̸��� �� ���Ͽ� ���� ������ �������� �����Ͽ� ���پ� ������ �ǰ�,
# ���Ͽ� ������ �ִٸ� "sample file.txt" ó�� ""�� �����ָ� �ȴ�.
# ���� ������ '#'�̸� �� ���� �����Ѵ�.
#
# Description ������ ������� ��� �����̸��� ����� �ϸ�,
# Description ������ �������� ��� �����̸��� �����η� ����� �Ѵ�.
                Description = "desc",

# Indexing�� Header�� ������ ���Ͽ��� �о� �´�.
                HeaderFile = "header.html",

# Indexing�� TailFile�� ������ ���Ͽ��� �о� �´�.
                TailFile = "tail.html",

# Unknown File Type�� ���� Icon�� �����Ѵ�.
# Node�� VHost�� IconDir ������ �������� �Ѵ�.
                DefaultIcon = "icon.ico",

# ������ extension ���� ���� �׿� �´� Icon���� Indexing�� �� �� �ֵ��� �����Ѵ�. 
# ��, Icon ������ URL�� ���� Ȯ���ڸ� ��Ī��Ų��.
# ���� ��� IconExt = "gif"�� �����ϸ�
# ������ sample.html �̰�, html.gif�� IconDir�� ���� ��� html.gif�� �����ش�.
# ���� html.gif�� IconDir�� ���ٸ� DefaultIcon�� ���� ���̴�.
                IconExt = "gif",

##### DIRINDEX���� ������ ��.
#diridx_def      Options = "Fancy"
#diridx_ign      Options = "Fancy",
#                Ignore = "*.gif"

#####
##### LOGGING ��
#####
# Client�� �䱸 ������ ����ϴ� ������ �����Ѵ�. 
# ���� ������ ���� ������ ���� ����Ǹ� ���� ������ ������ �� �ִ�.
# LOGGING���� ����ϱ� ���ؼ��� NODE���� Logging, ErrorLog ���� ������ �ʿ��ϴ�.
# �ʼ� �׸����� FileName, Format�� �����ؾ� �Ѵ�.
*LOGGING

# Log �̸��� �����Ѵ�.
log1            

# �α׸� ������ ������ ��θ�� ���� �̸��� �����Ѵ�.
# ��� ��� ("/" �� �������� �ʴ� ���) �� "WEBTOBDIR/�����" �� �ڵ� ��ü�Ѵ�.
# ���� �̸��� ���Ե� ���� string �� ���� ������ ���������� ��ü�˴ϴ�.
# %Y% = year (4 digits)
# %M% = month (2 digits)
# %D% = day (2 digits)
# %h% = hour (2 digits)
# %m% = minute (2 digits)
# %s% = second (2 digits)
                FileName = "log/access_%Y%%M%%D%.log", 

# Log File�� ��ϵ� ����� ��� ����� �����Ѵ�. 
# Format�� �������� ���� ��� WebtoB�� default �α� ���� ������ ��� �ȴ�.
# WebtoB���� �̸� ������ ���� �������� DEFAULT, ERROR �ΰ����� �����Ѵ�.
                Format = "DEFAULT", 

# Logging ����� Option�� �����Ѵ�.
# "Sync" �ɼ��� �ָ� Log�� �޸𸮿� ���۸����� �ʰ� �ٷ� ����Ѵ�.
                Option = "Sync",

# ������ Ȯ���ڸ� ���� ��û ���Ͽ����ؼ� log �� �����ھʴ´�.
# Default = ""
                ExcludeByExt = "jpg,png",

# ���ο� log message ������ ���� �����ϴ� log file �� ������ �ð�����
# �����Ǹ� ���ο� log file �� �����.  ������ ��.
# Default = �������� ����.
                RotateBySeconds = 10000,

# ���ο� log message ������ ���� �����ϴ� log file �� ������ log message
# ������ ������ ������ �������, ���ο� log file �� �����.
# Default = �������� ����.
# RotateByEntries �� ���̻� ������� ����.
#                RotateByEntries = 1000000

# ArchiveFileName �� �����ϸ� �α� ���� ��ȯ�� (log rotation) ���� ���� �̸��� ������ �� �ִ�.
# ArchiveFileName �� �����Ȱ��, ���� �α� ������ ������ �̸����� �Ȱ�����.  �׸���
# ���ο� �α� ������ FileName �� ������� �����ȴ�.  Default ���� "" (empty string).
#
# ��) ���� ���Ǵ� �α� ������ ������ log/access.log �̸�, �ֱ������� 
# log/backup.access_20090425_112233.log ������ �Ȱ�����.
#                 ArchiveFileName="log/backup/access_%Y%%M%%D%_%h%%m%%s%.log"
#                 FileName = "log/access.log", 


##### LOGGING���� ������ ��.
#log2            Format = "ERROR", 
#                FileName = "/data2/wbqam/webtob/log/error_%Y%%M%%D%.log", 
#                Option="sync",
#log3            Format = "DEFAULT", 
#                FileName = "/data2/wbqam/webtob/log/vaccess_%Y%%M%%D%.log", 
#                Option="sync",
#log4            Format = "ERROR", 
#                FileName = "/data2/wbqam/webtob/log/verror_%Y%%M%%D%.log", 
#                Option="sync",
#log_htmlg2      Format = "DEFAULT", 
#                FileName = "/data2/wbqam/webtob/log/htmlg2_%Y%%M%%D%.log"
#syslog          Format = "SYSLOG", 
#                FileName = "/data2/wbqam/webtob/log/syslog/syslog_%Y%%M%%D%.log"

#####
##### AUTHENT ��
#####
# Client�� ������ �����ϱ� ���� ���������� ������ �׷� ������ ������ �� �ֵ��� ���������ϸ� 
# SVRGROUP, URI, EXT, DIRECTORY ���� �����Ǿ� ���� ������ ��ĥ �� �ִ�.
# �ʼ� �׸����� Type, UserFile�� �����ؾ� �Ѵ�.
*AUTHENT

# Authent �̸��� ������ �� �ִ�.
auth_def        

# Authorization control (�ΰ� ����) ����� �����Ѵ�. 
# Basic: HTTP Basic authentication.
# Digest: HTTP Digest authentication.
                Type = Basic,

# Authorization�� ���� �����, ��ȣ, realm �� ��ϵǴ� ������ �����Ѵ�.
# �� ������ wsmkpw �� ����Ͽ� �����Ѵ�.
                UserFile = "/data2/wbqam/webtob/config/passwd"

# Authorization�� �׷������ �����ϱ� ���� ����ڸ�� ��ȣ���� ����ϴ� ������ 
# ���� ������ �ʿ䰡 ���� �� ���ȴ�. 
#                GroupFile = ""

#####
##### SSL ��
#####
# WebtoB���� ����� SSL�� ����� �����Ѵ�.
# �ʼ� �׸����� CertificateFile, CertificateKeyFile�� �����ؾ� �Ѵ�.
*SSL

# Ssl �̸��� �����Ѵ�.
ssl_full        

# �̰��� PEM ������� ���ڵ��� ������ �������̴�.
                CertificateFile = "/data2/wbqam/webtob/ssl/newcert.pem",

# �������� ���̴� PEM ������� ���ڵ��� �������� ����Ű�� �����Ѵ�. 
                CertificateKeyFile = "/data2/wbqam/webtob/ssl/newcert.pem",

# �������� ������ ���丮�� �����Ѵ�.
                CACertificatePath = "/data2/wbqam/webtob/ssl/",

# ���� CA�� ������ ����� ������ �ް� ���� ��쿡 �����Ѵ�.
                CACertificateFile = "/data2/wbqam/webtob/ssl/client.pem",

# �󸶳� ���� ������ ����� CA���� �����Ͽ� ������ �������� �����Ѵ�.
                VerifyDepth = 10,

# ����ڿ��� ��û�� ���� ������ �����Ѵ�.
# 0: �ƹ��� ���� ��û�� ���� �ʴ´�.
# 1: ����ڴ� ��� ������ ������ �������� ���� �־�� �Ѵ�.
# 2: ����ڴ� ��� ������ ������ �ݵ�� �������� ���� �־�� �Ѵ�.
# 3: ����ڴ� ��� ������ ������ ���� �־�� �ϸ� 
#    ���� ������ �������� ������ ���� ���� ��Ȳ������ ������ ���� ������ �ʿ� ����.
                VerifyClient = 1,

# ����¥�� ����� �̸��� ������ �⺻ ���� ������ ���ؼ� ��ġ ������ ��ó�� ���� �ش�.
                FakeBasicAuth = Y,

# SSL���� �̿��� Random Seed�� ���� ������ �����Ѵ�.
                RandomFile = "/data2/wbqam/webtob/bin/.rnd, 2048",

# RandomFile�� ������ �� ���� �� SSL�� ���� ������ ���� ��
# �� ���� ������ �̿��Ͽ� Random Seed�� ���� ������ �����ϴ� ���̴�.
                RandomFilePerConnection = "/data2/wbqam/webtob/bin/.rnd, 512",

# ���� ������(Certificate)�� ������ ����(Certificate Chain)�� ������ �� �ʿ���, 
# ���� ���������(CAs)�� ������(certificate) ��θ� �����Ѵ�. 
# ��, Client�� ���� (authentication)����ϱ� ���ؼ��� 
# CACertificateFile�̳�, CACertificatePath�� �����ؾ� �Ѵ�.
                CertificateChainFile = "/data2/wbqam/webtob/ssl/chain.pem",

# SSL ���ÿ� ��ȣȭ�� ����Ű(encrypted private key) ���ϵ鿡 ���� 
# ��ȣ���� ������� ����� �����ϴ� �׸��̴�.
# "exec: <progname>"	    : progname�� stdout�� ���� PassPhrase ������ ����Ѵ�.
# "file: <ppd-filename>"    : wsmkppd utility�� �̿��Ͽ� ������� ppd-file����
#			      sslname������ ����� PassPhrase���� ��´�.
                PassPhraseDialog = "exec:/pass.sh",

# SSL external Crypto Device�� ������ �����Ѵ�.
# ���� ������ ���� "builtin", "cswift" �ΰ��� �̸�, 
# default ������ "builtin" �̴�.
                CryptoDevice = "builtin"

##### SSL���� ������ ��.
#ssl_def         CertificateFile="/data2/wbqam/webtob/ssl/newcert.pem",
#                CertificateKeyFile="/data2/wbqam/webtob/ssl/newcert.pem",
#                PassPhraseDialog="exec:/data2/wbqam/webtob/pass.sh"

#####
##### EXT ��
#####
# Client�� �䱸�� ������ Ȯ���ڸ� ���� ó�� ��� Process�� ������ �� �ִ�. 
# WebtoB�� �⺻���� ��� MIMETYPE�� ���� ó�� ��� Process�� �����Ǿ� ������, 
# �ʿ信 ���� �߰����� ������ �� ��� ���� �Ѵ�.
# �ʼ� �׸����� MimeType, SvrType�� �����ؾ� �Ѵ�.
*EXT

# Ext �̸��� �����Ѵ�.
ext_full        

# ó���ϰ��� �ϴ� MimeType�� �����Ѵ�.
                MimeType = "text/html", 

# �䱸�� ó���� Server Ÿ���� �����Ѵ�.
                SvrType = HTML,

# Ư���� Server�� ó���ϰ� �Ϸ��� Server�� �̸��� �����Ѵ�.
                SvrName = "html_def",

# Ư���� ���񽺰� ó���ϵ��� ������ ��� ������ �̸��� �����Ѵ�.
                Routing = "svc_def",

# ��Ƽ��� ȯ�濡�� EXT���� ���� ������ Ư�� ��忡�� �����ϰ��� �� ���
# �ش� ����̸��� �����Ѵ�.
# �������� ���� ��쿡�� ��� ��忡 ����ȴ�.
                NodeName = "WebServer",

# Ư�� Virtual Host���� �����ϰ��� �� ��� Virtual Host �̸��� �����Ѵ�.
# �������� ���� ��쿡�� ��� Virtual Host�� ����ȴ�.
#               VHostName = "vhost_only",
# ���� EXT �� �ϳ��̻��� Vhost �� �����ϰ���� ���, �������� Vhost �̸��� ������ �� �ִ�.
# �̶� �̸����� comma �� �����Ѵ�.  �̸��� ���� ��� VhostName �� ������ �����ϸ� �ȴ�.
#                VhostName="vhost1, vhost2",
#                VhostName="vhost3"

# ����(Authentication)�� �����ϰ��� AUTHENT������ ������ �̸��� �����Ѵ�.
# ��, ����Ÿ���� JSV�� ��� SVRGROUP���� ������ ������ �� �ִ�.
                AuthentName = "auth_def"

# ����� �ɼ��� ������ �� �ִ�.
# "+Cache", "-Cache", "SSLRequireSSL", "SSLDenySSL", "UnSet" �� ������ �� �ִ�.
                Options = "+Cache,SSLDenySSL",

# URI ���� SCGI ����.
                SCGI = N,

# URI ���� ScgiServer ����.
                ScgiServer = "server21:11112",

# URI ���� FCGI ����.
                FCGI = N

# EXT �� ������ ������ �⺻������ exact matching �� ����Ѵ�.  �� �� prefix matching, regular expression
# matching �� ��밡���ϴ�.  Match �� ����ϰ� ���� ����� �����ϸ� �ȴ�.  Regular expression �� ����Ϸ���
# ������ RegExp �� ������ �����ؾ� �Ѵ�.
# �������� ��: prefix, exact, regexp
# Default ���� exact �̴�.
#               Match = "exact",

# Regular expression ���� ������ �����Ѵ�.
#               RegExp = "jsp.*"

##### EXT���� ������ ��.
#htm             MIMETYPE = "text/html", SVRTYPE = HTML
#html            MIMETYPE = "text/html", SVRTYPE = HTML
#jsp             MIMETYPE = "application/jsp",  Svrtype=JSV
#php             MIMETYPE = "application/x-httpd-php3", SVRTYPE = PHP
#auth            MIMETYPE = "text/html", SVRTYPE = HTML,
#                AuthentName = "auth_def"
#access          MIMETYPE = "text/html", SVRTYPE = HTML, 
#                AccessName = "access_deny"
#jsp             Options = "UnSet"

#####
##### ACCESS ��
#####
# Client�� IP address�� network/netmask ���� �������� ��û�� ���/������ �����ϰ�, 
# ��û ���/������ ����Ǵ� ������ ������ �� �ִ�. 
# Access ���� URI/EXT/DIRECTORY/TCPGW ���� ����� �� �ִ�.
*ACCESS

# Access �̸��� �����Ѵ�.
access_mixed    

# Allow�� Deny�� ����Ǵ� ������ �����Ѵ�.
                Order = "allow,deny", 

# ��û�� ���Ǵ� IP address�� network/netmask���� �����Ѵ�.
                Allow = "192.168.1.43/255.255.255.0",

# ��û�� �����Ǵ� IP address�� network/netmask���� �����Ѵ�.
                Deny = "192.168.1.43/255.255.255.0"

##### ACCESS���� ������ ��.
access_allow    Order = "allow,deny", 
                Allow = "192.168.1.43/255.255.255.0"
access_deny     Order = "deny,allow", 
                Deny = "all"

#####
##### EXPIRES ��
#####
# Ŭ���̾�Ʈ ��û�� ���� ���۵Ǵ� �������� ����� ������ �����Ѵ�.
# Ư�� Mimetype ���� ���۽� �������� ������� ���۵Ǵ� ������ expiry date�� �����Ѵ�.
# �ʼ� �׸����� ExpiresTime�� �����ؾ� �Ѵ�.
*EXPIRES

# string���� Expires�� �̸��� �����Ѵ�.
expdef1         

# 2���� ������� Expiry Date�� ����� �� �ִ�.
                ExpiresTime = "modification 1 days",

# Response MIME type�� ���� Expiry Date�� ������ �� �ִ�.
# <code><seconds>, <base> [plus] {<num> <type>}
                MimeType = "text/html",

# Request URL�� ���� Expiry Date�� ������ �� �ִ�.
                Url = "/exp/"

##### EXPIRES���� ������ ��.
exp11           MimeType = "image/gif", 
                ExpiresTime = "A2419200"
exp12           MimeType = "image/jpeg", 
                ExpiresTime = "access plus 1 months"

#####
##### TCPGW ��
#####
# NODE���� �����Ͽ� Ư�� port�� IP�� ������ Client Request�� ó���� server�� ���� �����Ѵ�. 
# ������ port�� listen�ϰ� �ִ� data�� ���� �� data�� �״�� ������ ������ �й��Ѵ�.
# �ʼ��׸����� Port Ȥ�� Listen, ServerAddress�� �����ؾ� �Ѵ�.
*TCPGW

# TCPGW�� �̸��� �����Ѵ�.
tcpgw_full      

# Client�� Request�� Listen�ϴ� Port�� �����Ѵ�.
# �������� ���ÿ� ���������ϴ�. (100��)
                Port = "4949", 

# Client�� Request�� Listen�ϴ� IP Address�� Port�� �����Ѵ�.
# �������� ���ÿ� ���������ϴ�. (100��)
                #Listen = "192.168.1.43:4949"

# Client�� Request�� ó�� �� �������� IP Address�� Port�� �����Ѵ�.
# �������� ���ÿ� ���������ϴ�. (100��)
# ������ �����鰣�� �й��Ģ�� Round Robin�� �����Ѵ�.
                ServerAddress = "192.168.1.43:8100,192.168.1.43:8540",

# ����ڰ� Request ��, �ش� �����κ��� ������ �ð����� ������ ���� ���, 
# ������ �����ϱ� ���� �ð��� ������ �� �ִ�.
# 0 �̸� Disable �̸�, Default ���� 300 �̴�.
                TimeOut = 30,

# Client�� Request��WebtoB TCP Gateway�� �޾Ƽ�, ������ ��� ������ ������ �õ��� ��, 
# �����ð� ���� ���� �䱸�� ���� ������ ������, �ٸ� ������ ��й� �ǵ��� �ð��� ������ �� �ִ�.
# 0 �̸� Disable �̸�, Default ���� 5 �̴�.
                ConnectTimeout = 10,

# ���Ӱ������� ���� ������ �Ź� ��û������ ���� ������ Ȯ���ϴ� ��ſ� 
# ó�� ������ ���Ӱ������� ������ ���� �й迡�� �����ϰ� 
# CheckAliveTime �������� �ش缭���� ���������� Ȯ���Ͽ� ���� �й迡�� ���� ������ �����ϰ� �ȴ�.
# 0 �� ���� ������ ���ó�� �Ź� ��û�� ���� ������ ���Ӱ��� ������ Ȯ���ϰ� �ȴ�.
# Default ���� 0 �̴�.
                CheckAliveTime = 15,

# ACCESS ���� ACCESS name�� ������ ��Ģ�� ���� ����� ������ ��� ���θ� �����Ѵ�.
                AccessName = access_allow

##### TCPGW���� ������ ��.
#tcpgw_def       Port = "4747", 
#                ServerAddress = "192.168.1.43:8100"
#tcpgw_listen    Listen = "192.168.1.43:4848",
#                ServerAddress = "192.168.1.43:8100",
#                CheckAliveTime = 15

#####
##### ERRORDOCUMENT ��
#####
*ERRORDOCUMENT
404             Status = 404, Url = "/404.html"

#####
##### Reverse proxy ��
#####
# Reverse proxy �� �Ϲ� HTTP proxy �� ������ �������Ѵ�.  Client �� ���Ϳ� ��û��
# ������ ������ �����ϰ�, ���� ������ ���Ϳ� ������ client �� �����Ѵ�.
# �Ϲ� HTTP proxy �ʹ� �ٸ��� Reverse proxy �� ���� �߰������ �����Ѵ�.
# 1. ��û�� request URL �� �������� ���� ������ �����Ѵ�.
#    �̿ܿ� X-Forwarded-For, X-Forwarded-Host, X-Forwarded-Server header field ��
#    �߰��ȴ�.
# 2. ���� ������ Location, Content-Location, Cookie header field �� HTML URL �� ��������
#    client �� �����Ѵ�.
*REVERSE_PROXY

# Reverse proxy �� �̸��� �����Ѵ�.
rproxy1

# Reverse proxy �� ���ϴ� NODE �� �̸�.
                NodeName = "WebServer",

# Reverse proxy �� ���ϴ� VHOST �� �̸�.
                VhostName = "vhost1",

# Request URL �� ������ string ���� �����ϸ� �ش��û�� reverse proxy �� ó���Ѵ�.
                PathPrefix = "/internal/",

# ��û�� ���޵Ǵ� ���� �����ּ�
                ServerAddress = "internal-server:80",

# Request URL �� PathPrefix �� �ش��ϴ� �κ��� ���⼭ ������ string ���� ��ü����,
# ������ ��û�� ��� ������ (ServerAddress) ���޵ȴ�.
# ��) /internal/abc.html => /docs/abc.html
                ServerPathPrefix = "/docs/",

# ���� ���� ������ status code �� 301, 302, 303, 307 �� ��� (redirect)
# Location, Content-Location header field �� absolute URL �� �����Ѵ�.
# RewriteRedirect �� ����� (whitespace) �� �ΰ��� string ���� ����������.
# ù°�� (http://internal-server:80/docs/) ���� ������ Location, Content-Location
# �� URL �� �񱳵ȴ�.  URL �� ������ string ���� �����ϸ� URL �� �����ȴ�.
# URL host �κ��� ��û�� ���� host, port �� ��ȯ�ǰ�, URL path �κ���
# �� ��° string ���� ��ü�ȴ�.
# ��)    Location: http://internal-server:80/docs/abc.html
#     => Location: http://webtob:8100/internal/abc.html
                RewriteRedirect = "http://internal-server:80/docs/ /internal/",

# ���� ���� ������ Cookie header field ���� domain= �� �����Ѵ�.
# domain= �� ������ domain string �� ���⿡ ������ string �� ��ġ�Ұ��
# domain= �� �䫊�� ���� domain ���� ��ü�Ѵ�.
# ��)    Cookie: ... domain=internal-server
#     => Cookie: ... domain=webtob
                RewriteCookieDomain = "internal-server",

# ���� ���� ������ Cookie header field ���� path= �� �����Ѵ�.
# path= �� ������ string �� ���⿡ ������ ù ��° string ���� �����Ұ��
# �� ��° string ���� ��ü�Ѵ�.
# ��)    Cookie: ... path=/jeus/application
#     => Cookie: ... path=/jeus_proxy/application
                RewriteCookiePath = "/jeus /jeus_proxy",

# ���� ���� ������ HTML �� ��� (Content-Type: text/html), HTML ������
# URL �� �����Ѵ�.  URL �� �����ϴ� tag, attribute �� HtmlUrl ��
# ����Ͽ� �����Ѵ�.  ���� meta tag �� content �� ���ܷ� �׻� URL ��
# �����Ѵٰ� �����Ѵ�.
# <meta ... http-equiv="refresh" ... content="http://internal-server:80/docs/link3.html" ...>
#
# URL �� �ؿ� ������ ù ��° string ���� �����ϸ�,
# �ش��ϴ� �κ��� �� ��° string ���� ��ü�ȴ�.  URL host �� �������, host ��
# ��û�� ���� WebtoB �ּҷ� ��ü�ȴ�.
                RewriteHtmlUrl = "http://test2:80/ /apache_proxy/",
                RewriteHtmlUrl = "/ /apache_proxy/",

# HTML ���������� URL �� �����ϴ� tag, attribute �̸��� ���Ѵ�.
# �R string �� tag name �̰�, �ι�° ���ʹ� attribute �̸��� ���Ѵ�.
                HtmlUrl = "a href",
                HtmlUrl = "img src longdesc usemap",

# HTML URL ������ ���� HTML ���� ��ü�� WebtoB ���� �޸𸮿� �����Ѵ�.
# �̿뵵�� ���Ǵ� �޸� ������ �ִ�ũ�⸦ �����Ѵ�.  ����: Byte.
# ������ ������ ������ ū���� HTML URL �� �������� �ʴ´�.
# Default = 10240
                RewriteHtmlMaxSize = 4194304

#####
##### LOGLEVEL ��
#####
# Syslog �޽�������� �����ϴ� �α׷����� �����ϴ� ���̴�.
#
# �α� ������ TRACE �ΰ�� �޽����� syslog ���Ͽ� ��������ʰ�, ȯ�溯�� WEBTOB_TRACE �� ������ ���� (TRACE ����) �� ����ȴ�.
# WEBTOB_TRACE �� �����Ǿ� ���������� $(WEBTOBDIR)/log/trace/processname-pid-date.trace
# �� ����ȴ�.  WEBTOB_TRACE �� %N%, %P%, %D% �� ���� format string �� ����Ҽ��ִ�.
# %N% = process �̸�
# %P% = PID
# %D% = date
# ��) WEBTOB_TRACE = %N%.trace �� �����Ǹ�, HTH �޽����� HTH.trace, CGIS �޽����� CGIS.trace �� ����ȴ�.
*LOGLEVEL

# Logger �̸��� �����Ѵ�.  Logger �� WebtoB �ϳ��� ������ҿ� �ش�ȴ�.  �̸��� hierarchy �� �Ǿ�������,
# ���� ���ǵ� �̸����� ������ ����.
# .               : Root �� �ǹ��Ѵ�.  ��� ������Ҹ� �����Ѵ�.
# .hth            : HTH
# .htl            : HTL
# .wsm            : WSM
# .server         : ��� �������� �����Ѵ�. 
# .server.htmls   : HTMLS
# .server.cgis    : CGIS 
# .server.phps    : PHPS
# .server.ssis    : SSIS
# .server.filters : FILTERS
.hth

# �α� ������ �����Ѵ�.  �޽����� ������ ������ ���̻��̸� ��µȴ�.
# ���ǵ� ������ "TRACE", "DEBUG", "INFO", "WARN", "FATAL" �̴�.
# TRACE �� ���� ���� �����̸� WebtoB 4.1.3 ������ debug binary �޽����� ����Ѵ�.
# Default ���� INFO �̴�.
                Level = "INFO"

# .hth �� �߰������� ������ client �� �ְ� �޴� �޽����� ����� �� �ִ�.
# ���� �������� option �� comma �� �����ؼ� �����ϸ� �ȴ�.
# dcR=client �� ���� ����Ÿ ���
# dcW=client �� ���۵� ����Ÿ ���
# dsR=server �� ���� ����Ÿ ���
# dsW=server �� ���۵� ����Ÿ ���
# Default ���� "" (empty string).
#               Options="dcR,dcW,dsR,dsW"
#
# ������ client �޽������� syslog ������ �ƴ� TRACE ���Ͽ� ����ȴ�.
