name             "site-citypo3org"
maintainer       "TYPO3 Association"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "Jenkins on ci.typo3.org"
version          "0.1.1"

depends "jenkins", "= 2.0.0"
depends "php"
depends "maven"
depends "sonar"
depends "t3-mysql"
depends "redisio", "= 1.7.0"
