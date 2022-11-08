<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EnterKeyNextTabExampleInWebform.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <asp:ScriptManager ID="ScriptManager2" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel4" runat="server" RenderMode="Inline" UpdateMode="Conditional">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>Name</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" onKeyDown="javascript: gotoField('TextBox2');"></asp:TextBox>
                            </td>
                            <td>Department</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" onKeyDown="javascript: gotoField('TextBox3');"></asp:TextBox>
                            </td>
                            <td>Designation</td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <script
                src="https://code.jquery.com/jquery-3.6.1.min.js"
                integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
                crossorigin="anonymous"></script>
            <script language="javascript" type="text/javascript">
                function gotoField(field) {
                    var evnt = (window.event) ? event.keyCode : event.which;
                    if (evnt == 13) {
                        if (field != "") {
                            var fld = document.getElementById(field);
                            fld.focus();
                        }
                    }
                }
                Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function (evt, args) {
                    function gotoField(field) {
                        var evnt = (window.event) ? event.keyCode : event.which;
                        if (evnt == 13) {
                            if (field != "") {
                                var fld = document.getElementById(field);
                                fld.focus();
                            }
                        }
                    }
                });
            </script>
        </div>
    </form>
</body>
</html>
