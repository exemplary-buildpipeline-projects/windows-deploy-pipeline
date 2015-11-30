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
   }
}

IISConfiguration
