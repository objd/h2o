? my $note = $main::context->{note};
? $_mt->wrapper_file("wrapper.mt")->(sub {

<div style="margin-top: 3em;">
<p>
H2O is a new generation HTTP server that <b>provides quicker response to users with less CPU utilization</b> when compared to older generation of web servers.
Designed from ground-up, the server takes full advantage of <a href="https://tools.ietf.org/html/rfc7540">HTTP/2</a> features including <a href="configure/http2_directives.html#prioritization">prioritized content serving</a> and <a href="configure/http2_directives.html#server-push">server push</a>, promising outstanding experience to the visitors of your web site.
<div align="center">
<a href="assets/8mbps100msec-nginx195-h2o150.png" target="_blank"><img src="assets/8mbps100msec-nginx195-h2o150.png" width="333" height="250"></a>
<a href="assets/staticfile612-nginx1910-h2o170.png" target="_blank"><img src="assets/staticfile612-nginx1910-h2o170.png" width="200" height="250"></a>
</div>
Explanation of the benchmark charts can be found in the <a href="benchmarks.html">benchmarks</a> page.
<p>

</p>
</div>

<h3 id="key-features">Key Features</h3>

<ul>
<li>HTTP/1.0, HTTP/1.1
<li><a href="configure/http2_directives.html">HTTP/2</a>
<ul>
<li>full support for dependency and weight-based prioritization with <a href="configure/http2_directives.html#http2-reprioritize-blocking-assets">server-side tweaks</a></li>
<li><a href="configure/http2_directives.html#http2-casper">cache-aware server push</a></li>
</ul>
</li>
<li>TCP Fast Open
<li><a href="configure/base_directives.html#listen-ssl">TLS</a>
<ul>
<li>session resumption (standalone &amp; memcached)
<li>session tickets with automatic key rollover
<li>automatic OCSP stapling
<li>forward secrecy &amp; fast AEAD ciphers<?= $note->(q{chacha20-poly1305: see <a href="https://blog.cloudflare.com/do-the-chacha-better-mobile-performance-with-cryptography/">Do the ChaCha: better mobile performance with cryptography</a>}) ?></li>
<li><a href="configure/base_directives.html#neverbleed">private key protection using privilege separation</a>
</ul>
</li>
<li><a href="configure/file_directives.html">static file serving</a>
<li><a href="configure/fastcgi_directives.html">FastCGI</a>
<li><a href="configure/proxy_directives.html">reverse proxy</a>
<li><a href="configure/mruby.html">scriptable using mruby</a> (Rack-based)
<li>graceful restart and self-upgrade
</ul>

<h3 id="news">News</h3>

<ul>
<li>Version <a href="https://github.com/h2o/h2o/releases/tag/v2.2.1">2.2.1</a> is now available (Apr 22 2017)</li>
<li>Version <a href="https://github.com/h2o/h2o/releases/tag/v2.2.0">2.2.0</a> is now available (Apr 5 2017)</li>
<li>Version <a href="https://github.com/h2o/h2o/releases/tag/v2.1.0">2.1.0</a> is now available (Jan 17 2017)</li>
<li>Version <a href="https://github.com/h2o/h2o/releases/tag/v2.0.6">2.0.6</a> is now available (Jan 5 2017)</li>
<li>Version <a href="https://github.com/h2o/h2o/releases/tag/v2.0.5">2.0.5</a> and <a href="https://github.com/h2o/h2o/releases/tag/v2.1.0-beta4">2.1.0-beta4</a> have been released with <a href="https://github.com/h2o/h2o/issues/1144">a vulnerability fix for CVE-2016-4864</a> (Dec 21 2016)</li>
</ul>

<p>
List of all the vulnerabilities having been fixed can be found <a href="https://github.com/h2o/h2o/issues?utf8=%E2%9C%93&q=label%3Avulnerability">here</a>.
</p>

? })
