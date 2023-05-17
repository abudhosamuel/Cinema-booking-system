<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="moviesdb.aspx.cs" Inherits="Galaxy.moviesdb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dash">
   
    
    <div class="table_d">
         <h2>Movies</h2>
        <a href="addmovie.aspx" class="mbutton">Add Movie</a> <br />
        <br />
  <table>
           
               
            <tbody>
                <asp:GridView ID="GridView1" runat="server"  onRowDeleting="GridView1_RowDeleting" DataKeyNames="MovieName" AutoGenerateColumns ="false">
                <AlternatingRowStyle BackColor="white" />
                <Columns>
                    
                   <asp:BoundField DataField="Image" HeaderText="Image" />
                     <asp:BoundField DataField="MovieName" HeaderText="Movie Name" />
                     <asp:BoundField DataField="Duration" HeaderText="Duration" />
                     <asp:BoundField DataField="Year" HeaderText="Year" />
                     <asp:TemplateField HeaderText="Action">
                         <ItemTemplate>
                              <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete"
                                 OnClientClick ="return confirm('Are You Sure You Want To Delete This Entry')"
                                 style="text-decoration:none; color:red;" >Delete</asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#7c6f57" />
                    </asp:GridView>

            </tbody>
        </table>
  
      
</div>
    </div>
        
</asp:Content>
