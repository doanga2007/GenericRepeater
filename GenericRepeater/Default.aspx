<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GenericRepeater.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <asp:Repeater ID="rptName" runat="server">
    <HeaderTemplate>
    <table>
         <tr>
                <th>EmployeeID</th>
                <th>DepartmentID</th>
                <th>EmployeeName</th>
        </tr>   
    </HeaderTemplate>
      <ItemTemplate>
        <tr>
          <td>
            <%# ((Employee)Container.DataItem).EmpID %>
          </td>
          <td>
            <%# ((Employee)Container.DataItem).DeptID %>
          </td>
          <td>
            <%# ((Employee)Container.DataItem).EmpName %>
          </td>
        </tr>
      </ItemTemplate>
      <FooterTemplate>      
        </table><br />
    </FooterTemplate>
    </asp:Repeater>

    </form>
</body>
</html>
