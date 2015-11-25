Configuration IISConfiguration
{
   Node PSDSCClient001
   {
       WindowsFeature IIS
       {
           Ensure = "Present"
           Name = "Web-Server"
       }

       WindowsFeature ASP
       {
           Ensure = "Present"
           Name = "Web-Asp-Net45"
       }
   }
}

IISConfiguration
