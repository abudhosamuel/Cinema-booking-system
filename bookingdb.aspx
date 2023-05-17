<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="bookingdb.aspx.cs" Inherits="Galaxy.booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash">
        <div class="table_d">
            <h2>Bookings</h2>
 <table>
           
               
            <tbody>
                <asp:GridView ID="GridView1" runat="server"  onRowDeleting="GridView1_RowDeleting" DataKeyNames="email" AutoGenerateColumns ="false">
                <AlternatingRowStyle BackColor="#001D3D" />
                <Columns>
                    
                   <asp:BoundField DataField="moviename" HeaderText="Movie Name" />
                     <asp:BoundField DataField="numberoftickets" HeaderText="Number of Tickets" />
                     <asp:BoundField DataField="custname" HeaderText="Customer Name" />
                     <asp:BoundField DataField="email" HeaderText="Email" />
                     <asp:BoundField DataField="phone" HeaderText="Phone" />
                     <asp:BoundField DataField="price" HeaderText="Price" />
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
    
    
     
</asp:Content>
