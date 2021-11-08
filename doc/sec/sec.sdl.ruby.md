#

## bundle-audit


Name: addressable
Version: 2.7.0
CVE: CVE-2021-32740
GHSA: GHSA-jxhc-q857-3j6g
Criticality: High
URL: https://github.com/advisories/GHSA-jxhc-q857-3j6g
Description:

  Within the URI template implementation in Addressable, a maliciously crafted template may result in uncontrolled resource consumption, leading
  to denial of service when matched against a URI. In typical usage, templates would not normally be read from untrusted user input, but
  nonetheless, no previous security advisory for Addressable has cautioned against doing this. Users of the parsing capabilities in Addressable
  but not the URI template capabilities are unaffected.

Solution: upgrade to >= 2.8.0

Name: nokogiri
Version: 1.11.3
CVE: CVE-2021-41098
GHSA: GHSA-2rr5-8q37-2w7h
Criticality: High
URL: https://github.com/sparklemotion/nokogiri/security/advisories/GHSA-2rr5-8q37-2w7h
Description:

  ### Severity

  The Nokogiri maintainers have evaluated this as [**High Severity** 7.5
  (CVSS3.0)](https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N/E:H/RL:O/RC:C/MAV:N/MAC:L) for JRuby users.
  (This security advisory does not apply to CRuby users.)

  ### Impact

  In Nokogiri v1.12.4 and earlier, **on JRuby only**, the SAX parser resolves external entities by default.

  Users of Nokogiri on JRuby who parse untrusted documents using any of these classes are affected:

  - Nokogiri::XML::SAX::Parser - Nokogiri::HTML4::SAX::Parser or its alias Nokogiri::HTML::SAX::Parser - Nokogiri::XML::SAX::PushParser -
  Nokogiri::HTML4::SAX::PushParser or its alias Nokogiri::HTML::SAX::PushParser

  ### Mitigation

  JRuby users should upgrade to Nokogiri v1.12.5 or later. There are no workarounds available for v1.12.4 or earlier.

  CRuby users are not affected.

Solution: upgrade to >= 1.12.5

Name: nokogiri
Version: 1.11.3
GHSA: GHSA-7rrm-v45f-jp64
Criticality: High
URL: https://github.com/sparklemotion/nokogiri/security/advisories/GHSA-7rrm-v45f-jp64
Description:

  ### Summary

  Nokogiri v1.11.4 updates the vendored libxml2 from v2.9.10 to v2.9.12 which addresses:

  - [CVE-2019-20388](https://security.archlinux.org/CVE-2019-20388) (Medium severity) -
  [CVE-2020-24977](https://security.archlinux.org/CVE-2020-24977) (Medium severity) -
  [CVE-2021-3517](https://security.archlinux.org/CVE-2021-3517) (Medium severity) -
  [CVE-2021-3518](https://security.archlinux.org/CVE-2021-3518) (Medium severity) -
  [CVE-2021-3537](https://security.archlinux.org/CVE-2021-3537) (Low severity) - [CVE-2021-3541](https://security.archlinux.org/CVE-2021-3541)
  (Low severity)

  Note that two additional CVEs were addressed upstream but are not relevant to this release.
  [CVE-2021-3516](https://security.archlinux.org/CVE-2021-3516) via `xmllint` is not present in Nokogiri, and
  [CVE-2020-7595](https://security.archlinux.org/CVE-2020-7595) has been patched in Nokogiri since v1.10.8 (see #1992).

  Please note that this advisory only applies to the CRuby implementation of Nokogiri `< 1.11.4`, and only if the packaged version of libxml2 is
  being used. If you've overridden defaults at installation time to use system libraries instead of packaged libraries, you should instead pay
  attention to your distro's `libxml2` release announcements.

  ### Mitigation

  Upgrade to Nokogiri `>= 1.11.4`.

  ### Impact

  I've done a brief analysis of the published CVEs that are addressed in this upstream release. The libxml2 maintainers have not released a
  canonical set of CVEs, and so this list is pieced together from secondary sources and may be incomplete.

  All information below is sourced from [security.archlinux.org](https://security.archlinux.org), which appears to have the most up-to-date
  information as of this analysis.

  #### [CVE-2019-20388](https://security.archlinux.org/CVE-2019-20388)

  - **Severity**: Medium - **Type**: Denial of service - **Description**: A memory leak was found in the xmlSchemaValidateStream function of
  libxml2. Applications that use this library may be vulnerable to memory not being freed leading to a denial of service. - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/commit/7ffcd44d7e6c46704f8af0321d9314cd26e0e18a

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4.

  #### [CVE-2020-7595](https://security.archlinux.org/CVE-2020-7595)

  - **Severity**: Medium - **Type**: Denial of service - **Description**: xmlStringLenDecodeEntities in parser.c in libxml2 2.9.10 has an
  infinite loop in a certain end-of-file situation. - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/commit/0e1a49c8907645d2e155f0d89d4d9895ac5112b5

  This has been patched in Nokogiri since v1.10.8 (see #1992).

  #### [CVE-2020-24977](https://security.archlinux.org/CVE-2020-24977)

  - **Severity**: Medium - **Type**: Information disclosure - **Description**: GNOME project libxml2 <= 2.9.10 has a global buffer over-read
  vulnerability in xmlEncodeEntitiesInternal at libxml2/entities.c. - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/commit/50f06b3efb638efb0abd95dc62dca05ae67882c2

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4.

  #### [CVE-2021-3516](https://security.archlinux.org/CVE-2021-3516)

  - **Severity**: Medium - **Type**: Arbitrary code execution (no remote vector) - **Description**: A use-after-free security issue was found
  libxml2 before version 2.9.11 when "xmllint --html --push" is used to process crafted files. - **Issue**:
  https://gitlab.gnome.org/GNOME/libxml2/-/issues/230 - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/-/commit/1358d157d0bd83be1dfe356a69213df9fac0b539

  Verified that the fix commit first appears in v2.9.11. This vector does not exist within Nokogiri, which does not ship `xmllint`.

  #### [CVE-2021-3517](https://security.archlinux.org/CVE-2021-3517)

  - **Severity**: Medium - **Type**: Arbitrary code execution - **Description**: A heap-based buffer overflow was found in libxml2 before
  version 2.9.11 when processing truncated UTF-8 input. - **Issue**: https://gitlab.gnome.org/GNOME/libxml2/-/issues/235 - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/-/commit/bf22713507fe1fc3a2c4b525cf0a88c2dc87a3a2

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4.

  #### [CVE-2021-3518](https://security.archlinux.org/CVE-2021-3518)

  - **Severity**: Medium - **Type**: Arbitrary code execution - **Description**: A use-after-free security issue was found in libxml2 before
  version 2.9.11 in xmlXIncludeDoProcess() in xinclude.c when processing crafted files. - **Issue**:
  https://gitlab.gnome.org/GNOME/libxml2/-/issues/237 - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/-/commit/1098c30a040e72a4654968547f415be4e4c40fe7

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4.

  #### [CVE-2021-3537](https://security.archlinux.org/CVE-2021-3537)

  - **Severity**: Low - **Type**: Denial of service - **Description**: It was found that libxml2 before version 2.9.11 did not propagate errors
  while parsing XML mixed content, causing a NULL dereference. If an untrusted XML document was parsed in recovery mode and post-validated, the
  flaw could be used to crash the application. - **Issue**: https://gitlab.gnome.org/GNOME/libxml2/-/issues/243 - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/-/commit/babe75030c7f64a37826bb3342317134568bef61

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4.

  #### [CVE-2021-3541](https://security.archlinux.org/CVE-2021-3541)

  - **Severity**: Low - **Type**: Denial of service - **Description**: A security issue was found in libxml2 before version 2.9.11. Exponential
  entity expansion attack its possible bypassing all existing protection mechanisms and leading to denial of service. - **Fixed**:
  https://gitlab.gnome.org/GNOME/libxml2/-/commit/8598060bacada41a0eb09d95c97744ff4e428f8e

  Verified that the fix commit first appears in v2.9.11. It seems possible that this issue would be present in programs using Nokogiri <
  v1.11.4, however Nokogiri's default parse options prevent the attack from succeeding (it is necessary to opt into `DTDLOAD` which is off by
  default).

  For more details supporting this analysis of this CVE, please visit #2233.

Solution: upgrade to >= 1.11.4

Name: puma
Version: 3.12.6
CVE: CVE-2021-29509
GHSA: GHSA-q28m-8xjw-8vr5
Criticality: High
URL: https://github.com/puma/puma/security/advisories/GHSA-q28m-8xjw-8vr5
Description:

  ### Impact

  The fix for CVE-2019-16770 was incomplete. The original fix only protected existing connections that had already been accepted from having
  their requests starved by greedy persistent-connections saturating all threads in the same process. However, new connections may still be
  starved by greedy persistent-connections saturating all threads in all processes in the cluster.

  A puma server which received more concurrent keep-alive connections than the server had threads in its threadpool would service only a subset
  of connections, denying service to the unserved connections.

  ### Patches

  This problem has been fixed in puma 4.3.8 and 5.3.1.

  ### Workarounds

  Setting queue_requests false also fixes the issue. This is not advised when using puma without a reverse proxy, such as nginx or apache,
  because you will open yourself to slow client attacks (e.g. [slowloris][1]).

  The fix is very small. [A git patch is available here][2] for those using [unsupported versions][3] of Puma.

  [1]: https://en.wikipedia.org/wiki/Slowloris_(computer_security) [2]: https://gist.github.com/nateberkopec/4b3ea5676c0d70cbb37c82d54be25837
  [3]: https://github.com/puma/puma/security/policy#supported-versions

Solution: upgrade to ~> 4.3.8, >= 5.3.1

Name: puma
Version: 3.12.6
CVE: CVE-2021-41136
GHSA: GHSA-48w2-rm65-62xx
Criticality: Low
URL: https://github.com/puma/puma/security/advisories/GHSA-48w2-rm65-62xx
Description:

  ### Impact

  Prior to `puma` version 5.5.0, using `puma` with a proxy which forwards LF characters as line endings could allow HTTP request smuggling. A
  client could smuggle a request through a proxy, causing the proxy to send a response back to another unknown client.

  This behavior (forwarding LF characters as line endings) is very uncommon amongst proxy servers, so we have graded the impact here as "low".
  Puma is only aware of a single proxy server which has this behavior.

  If the proxy uses persistent connections and the client adds another request in via HTTP pipelining, the proxy may mistake it as the first
  request's body. Puma, however, would see it as two requests, and when processing the second request, send back a response that the proxy does
  not expect. If the proxy has reused the persistent connection to Puma to send another request for a different client, the second response from
  the first client will be sent to the second client.

  ### Patches

  This vulnerability was patched in Puma 5.5.1 and 4.3.9.

  ### Workarounds

  This vulnerability only affects Puma installations without any proxy in front.

  Use a proxy which does not forward LF characters as line endings.

  Proxies which do not forward LF characters as line endings:

  * Nginx * Apache (>2.4.25) * Haproxy * Caddy * Traefik

  ### Possible Breakage

  If you are [dealing with legacy clients that want to send `LF` as a line
  ending](https://stackoverflow.com/questions/43574428/have-apache-accept-lf-vs-crlf-in-request-headers) in an HTTP header, this will cause
  those clients to receive a `400` error.

  ### References

  * [HTTP Request Smuggling](https://portswigger.net/web-security/request-smuggling)

Solution: upgrade to ~> 4.3.9, >= 5.5.1