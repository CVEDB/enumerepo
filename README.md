<h1 align="center">enumerepo <a href="https://twitter.com/intent/tweet?text=enumerepo%20-%20Read%20a%20list%20of%20GitHub%20usernames%20and%2For%20organizations%2C%20verify%20their%20existence%2C%20and%20list%20the%20repositories%20owned%20by%20each%20one%20%40khulnasoft%0Ahttps%3A%2F%2Fgithub.com%2Fcvedb%2Fenumerepo&hashtags=bugbounty,bugbountytips,infosec"><img src="https://img.shields.io/badge/Tweet--lightgrey?logo=twitter&style=social" alt="Tweet" height="20"/></a></h1>
<h3 align="center">List all public repositories for (valid) GitHub usernames</h3>


Read a list of GitHub usernames and/or organizations, verify their existence, and list the repositories owned by each one. 

# Installation
## Binary
Binaries are available in the [latest release](https://github.com/cvedb/enumerepo/releases/latest).

## Docker
```
docker run quay.io/cvedb/enumerepo
```

## From source
```
go install github.com/cvedb/enumerepo@latest
```

# Usage
```
  -adjust-delay
    	Automatically adjust time delay between requests
  -delay int
    	Time delay after every GraphQL request [ms]
  -o string
    	Output file name
  -silent
    	Don't print output to stdout
  -token-file string
    	File to read Github token from
  -token-string string
    	Github token
  -usernames string
    	File to read usernames from
```

### Example
##### usernames.txt
```
cvedb
```

```shell script
$ enumerepo -token-string $GITHUB_TOKEN -usernames usernames.txt -o repositories.json
In progress...
[
   {
      "user": "https://github.com/cvedb",
      "repos": [
        {
            "url": "https://github.com/cvedb/cvedb-cli",
            "ssh_url": "git@github.com:cvedb/cvedb-cli.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/cve",
            "ssh_url": "git@github.com:cvedb/cve.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/find-gh-poc",
            "ssh_url": "git@github.com:cvedb/find-gh-poc.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/inventory",
            "ssh_url": "git@github.com:cvedb/inventory.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/mksub",
            "ssh_url": "git@github.com:cvedb/mksub.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/mkpath",
            "ssh_url": "git@github.com:cvedb/mkpath.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/dsieve",
            "ssh_url": "git@github.com:cvedb/dsieve.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/resolvers",
            "ssh_url": "git@github.com:cvedb/resolvers.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/insiders",
            "ssh_url": "git@github.com:cvedb/insiders.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/enumerepo",
            "ssh_url": "git@github.com:cvedb/enumerepo.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/containers",
            "ssh_url": "git@github.com:cvedb/containers.git",
            "language": "Shell"
         },
         {
            "url": "https://github.com/cvedb/safe-harbour",
            "ssh_url": "git@github.com:cvedb/safe-harbour.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/mgwls",
            "ssh_url": "git@github.com:cvedb/mgwls.git",
            "language": "Go"
         },
         {
            "url": "https://github.com/cvedb/log4j",
            "ssh_url": "git@github.com:cvedb/log4j.git",
            "language": ""
         },
         {
            "url": "https://github.com/cvedb/action",
            "ssh_url": "git@github.com:cvedb/action.git",
            "language": "Shell"
         }
      ]
   }
]
Done! 15 repositories found.
```

# Report Bugs / Feedback
We look forward to any feedback you want to share with us or if you're stuck with a problem you can contact us at [support@khulnasoft.comm](mailto:support@khulnasoft.comm). You can also create an [Issue](https://github.com/cvedb/enumerepo/issues/new) or pull request on the Github repository.

# Where does this fit in your methodology?
Enumerepo is an integral part of the [Insiders](https://github.com/cvedb/insiders) workflow many workflows in the Cvedb store. Sign up on [cvedb.khulnasoft.comm](https://cvedb.khulnasoft.comm) to get access to these workflows or build your own from scratch!
