Configuration IISConfiguration
{
   Node localhost
   {
       WindowsFeature IIS
       {
           Ensure = "Present"
           Name = "Web-Server"
       }

       WindowsFeature ASP
       {
           Ensure = "Present"
           Name = "Web-Asp"
       }

       WindowsFeature ASP_NET
       {
           Ensure = "Present"
           Name = "Web-Asp-Net45"
       }
       WindowsFeature MNG_CONSOLE
       {
           Ensure = "Present"
           Name = "Web-Mgmt-Compat"
       }
       WindowsFeature MNG_CONSOLE2
       {
           Ensure = "Present"
           Name = "Web-WMI"
       }
       WindowsFeature MNG_CONSOLE3
       {
           Ensure = "Present"
           Name = "Web-Lgcy-Mgmt-Console"
       }
       WindowsFeature MNG_CONSOLE4
       {
           Ensure = "Present"
           Name = "Web-Mgmt-Service"
       }
       WindowsFeature MNG_CONSOLE5
       {
           Ensure = "Present"
           Name = "Web-Mgmt-Console"
       }
   }
}

IISConfiguration
