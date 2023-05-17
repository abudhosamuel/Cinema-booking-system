<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="Galaxy.users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash">
   
    
    <div class="table_d">
       <div class="users-tab">
  <h2>Users</h2>
        <table>
           
           
            <tbody>
                <asp:GridView ID="GridView1" runat="server"  onRowDeleting="GridView1_RowDeleting" DataKeyNames="Id" AutoGenerateColumns ="false">
                <AlternatingRowStyle BackColor="#001D3D" />
                <Columns>
                    
                   <asp:BoundField DataField="Id" HeaderText="Customer ID" />
                     <asp:BoundField DataField="Email" HeaderText="Email" />
                     <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                     <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                     <asp:BoundField DataField="DateofBirth" HeaderText="D.O.B" />
                     <asp:BoundField DataField="Address" HeaderText="Address" />
                     <asp:TemplateField HeaderText="Action">
                         <ItemTemplate>
                             
                             <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"
                                 OnClientClick ="return confirm('Are You Sure You Want To Delete This Entry')"
                                 style="text-decoration:none; color:red;" >Delete</asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#003566" />
                    </asp:GridView>

            </tbody>
        </table>
          
      



</div>
    </div>
 </div>
</asp:Content>
