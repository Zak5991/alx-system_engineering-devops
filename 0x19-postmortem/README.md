0x19-postmortem
Start: June 25, 2024, 4:00 AM
End: June 28, 2024, 4:00 PM
IMPACT:
Service Affected: The entire application running on PHP 7 crashed.
User Experience: Users were unable to log into their accounts, and those already logged in couldn't send requests (messages).
Percentage of Users Affected: Nearly 100% of users were affected.
Root Cause: An update to the production environment inadvertently included dependencies incompatible with the current PHP 7 and Apache 5 stack.
TIMELINE:
Detection Time: June 27, 2024, 3:00 AM.
Detection Method: The issue was identified through alerts in the application deployment log.
ACTIONS TAKEN:
Initially attempted to update affected methods and variables to the new version, which complicated matters.
Escalated the incident to the developers' team.
Resolution: Rolled back the application to the previous stable state, causing new user accounts created during the downtime to be lost.
Root Cause and Resolution: The issue arose from an accidental production environment upgrade by a developer, unnoticed by DevOps, resulting in user connection and request failures. Resolved by rolling back to the prior application state.
Fix: Automated daily backups implemented at 10:30 PM.
Corrective and Preventative Measures:
Implemented Docker containers for developers' local environments to prevent global system impact from local changes.
Enhanced logging and monitoring to promptly detect and address similar issues.
Lessons Learned:
Ensure strict separation between development and production environments to prevent inadvertent updates.
Regularly review and update deployment procedures to mitigate human error impact.
This postmortem outlines the incident, its impact, actions taken, and measures implemented to prevent future occurrences, ensuring improved resilience and stability of the application.



