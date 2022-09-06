# Collection-of-command-line-tools
Windows command linetools

Note a number of tools require NirCmd

[NirSoft nircmd](https://www.nirsoft.net/utils/nircmd.html)

#STEAM
For the launch steam generic file

you must create an environment file named

```{sh}
.env
```

within this simple text file (with no name) the contents must be of the format

```{sh}
steam_username <username>
steam_password <password>
```

The angle brackets < > are not needed for the password/username. The reason I have done this way is that it is a standard cybersecruity measure not to keep your passwords in repositorities hosted online to insure that they are not compromised. A contininous integration/continous delivery process can also roll over these secrets automagically when requested or when compromised. See (_S_ite _R_eilability _E_ngineering) https://sre.google.com for more information

Must step up in steam the location of install folder to d drive and have created the `app` directory beforehand.

TODO 

* add as variable why do this as my setup is low on harddisk space and my D drive has more space. 
* Make the loading batch file more generic

