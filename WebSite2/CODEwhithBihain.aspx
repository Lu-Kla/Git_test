﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/> 
    <title> 🌹❄🌹</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%this.Response.Write(this.GetType().FullName);
                 %>

             <h1>🌹❄    А это мOOЯ стр-ка!     ❄🌹
                 <p style= "color:blue;text-align: center;" >
                &nbsp;</p>
                 🌹🌹🌹🌹🌹 = <% =5*5%> 🌹🌹🌹🌹🌹
             </h1>
        </div>
    </form>
</body>
</html>
