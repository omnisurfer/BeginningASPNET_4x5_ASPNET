<%@ Page Title="ContainersDemo" Language="C#" AutoEventWireup="true" CodeFile="ContainersDemo.aspx.cs" Inherits="Demos_Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:CheckBox ID="ShowPanel" runat="server" AutoPostBack="True" OnCheckedChanged="ShowPanel_CheckedChanged" Text="Show Panel" />

        </div>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick">
                <WizardSteps>
                    <asp:WizardStep runat="server" Title="About You">
                        <asp:Label Text="Your name " ID="NameLabel" runat="server"></asp:Label>
                        <asp:TextBox Text="" ID="YourName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Finish" Title="Favorite Language">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="L1">C#</asp:ListItem>
                            <asp:ListItem Value="L2">Visual Basic</asp:ListItem>
                            <asp:ListItem Value="L3">C/C++</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" Title="Ready" StepType="Complete">
                        <asp:Label Text="" ID="Result" runat="server"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:Panel>
    </form>
</body>
</html>