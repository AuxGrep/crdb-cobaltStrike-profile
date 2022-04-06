# crdb-cobaltStrike-profile
Cobalt Strike is commercial threat emulation software that emulates a quiet, long-term embedded actor in a network. This actor, known as Beacon, communicates with an external team server to emulate command and control (C2) traffic. Due to its versatility, Cobalt Strike is commonly used as a legitimate tool by red teams – but is also widely used by threat actors for real-world attacks.

Cobalt Strike users control Beacon’s HTTP indicators through a profile, and can select either the default profile or a customizable Malleable C2 profile.

Today lets check this profile name CRDB PROFILE

HOW IT WORKS??? COOL!!

Cobalt Strike’s Malleable C2 is a method of avoiding that problem when it comes to command and control (C2) traffic. Malleable C2 provides operators with a method to mold Cobalt Strike command and control traffic to their will. For instance, if you determine your target organization allows employees to use CRDB SERVICES , you could create a profile to make Cobalt Strike’s C2 traffic look like CRDB TRAFFICS on the wire. 

Alternatively, if a client wants to test detection capabilities, you could make your traffic look like a well-known malware toolkit like Zeus.

# GET STARTED

In any linux OS (hacker's server) just run the following command to start teamserver and load this profile

──(auxgrep㉿kali)-[~/Desktop/CS4.5]
└─$ ./teamserver <<SERVER-IP>> <<PASSWORD>> crdb.profile
  
  note: make sure your in de directory that contains cobalt strike linux package 
  
  if you dont have it ...check me here mranonymoustz@tutanota.com


@ENJOY

