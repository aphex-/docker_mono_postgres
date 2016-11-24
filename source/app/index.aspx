<!-- directives -->
<% @Page Language="C#" %>

<!-- code section -->
<script runat="server">

   private void ToUpper(object sender, EventArgs e)
   {
      changed_text.InnerHtml = the_text.Value.ToUpper();
   }
</script>

<!-- Layout -->
<html>
   <head>
      <title>Aspx Page</title>
   </head>

   <body>
        <form runat="server">
         <input runat="server" id="the_text" type="text" />
         <input runat="server" id="button1" type="submit" value="Text To Upper Case" OnServerClick="ToUpper"/>

         <hr />
         <h3> Results: </h3>
         <span runat="server" id="changed_text" />
      </form>

   </body>

</html>
