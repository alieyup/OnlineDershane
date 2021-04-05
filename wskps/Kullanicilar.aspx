<%@ Page Title="" Language="C#" MasterPageFile="~/wskps/wskps.master" AutoEventWireup="true" CodeFile="Kullanicilar.aspx.cs" Inherits="wskps_Kullanicilar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="page-title">Kullanıcılar<small></small>
    </h3>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="AnaSayfa.aspx">Ana Sayfa</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>Kullanıcılar
            </li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-users"></i>Kullanıcılar
                    </div>
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th style="height: 36px">#
                                </th>
                                <th style="height: 36px">Ad Soyad</th>
                                <th style="height: 36px">E-Posta</th>
                                <th style="height: 36px">Üyelik Tipi</th>
                                <th style="height: 36px">İşlem</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:DataList ID="DataListKullanicilar" runat="server" RepeatDirection="Horizontal" DataKeyField="KullaniciID" OnDeleteCommand="DataListKullanicilar_DeleteCommand" RepeatLayout="Flow" OnEditCommand="DataListKullanicilar_EditCommand" OnCancelCommand="DataListKullanicilar_CancelCommand" OnUpdateCommand="DataListKullanicilar_UpdateCommand">
                                <ItemTemplate>
                                    <asp:Label ID="LabelUserID" runat="server" Text='<%# Eval("KullaniciID") %>' Visible="false" />
                                    <asp:Label ID="LabelUserImage" runat="server" Text='<%# Eval("KullaniciResim") %>' Visible="false" />
                                    <tr class="odd gradeX">
                                        <td>
                                            <img onerror="this.src='http://via.placeholder.com/50x50?text=<%# Eval("KullaniciAdiSoyadi") %>'" src='<%# "../images/user/"+ Eval("KullaniciResim") %>' alt='<%# Eval("KullaniciAdiSoyadi") %>' title='<%# Eval("KullaniciAdiSoyadi") %>' style="width: 50px; height: 50px;" />
                                        </td>
                                        <td><%#Eval("KullaniciAdiSoyadi").ToString().Length>50 ?Eval("KullaniciAdiSoyadi").ToString().Substring(0,50) :Eval("KullaniciAdiSoyadi")%> 
                                        </td>
                                        <td>
                                            <a href="mailto:<%# Eval("KullaniciEmail") %>">
                                                <%# Eval("KullaniciEmail") %> </a>
                                        </td>
                                        <td>
                                            <%# Eval("YetkiID").ToString() == "1" ? "<span class='label label-sm label-danger'>Admin</span>" : Eval("YetkiID").ToString() == "2" ? "<span class='label label-sm label-warning'>Gold Üye</span>" : "<span class='label label-sm label-info'>Standart Üye</span>" %> 
                                        </td>
                                        <td>
                                            <asp:LinkButton CommandName="Edit" class="btn btn-primary" ID="LinkButtonKullaniciDuzenle" runat="server">Düzenle</asp:LinkButton>
                                            <asp:LinkButton ID="LinkButtonKullaniciDelete" runat="server" class="btn btn-danger" CommandName="Delete" OnClientClick="return confirm('Silmek İstediğinize Emin misiniz? Bu Kullanıcı ve tüm bilgileri silinecektir.');">Sil</asp:LinkButton></td>
                                    </tr>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <div class="col-md-3"></div>
                                    <div class="col-md-6 alert alert-warning text-center">
                                        <h4>Bilgileri Güncelle</h4>
                                        <p>
                                            <asp:TextBox ID="TextBoxAdiSoyadi" CssClass="form-control" runat="server" PlaceHolder="Ad Soyad" Text='<%# DataBinder.Eval(Container.DataItem, "KullaniciAdiSoyadi") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Ad Soyad Giriniz." ForeColor="Red" ControlToValidate="TextBoxAdiSoyadi" />
                                        </p>
                                        <p>
                                            <asp:TextBox ID="TextBoxEposta" CssClass="form-control" runat="server" Text='<%# Eval("KullaniciEmail") %>'></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen E-Posta Giriniz." ForeColor="Red" ControlToValidate="TextBoxEposta" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEposta"
                                                ErrorMessage="Geçerli bir e-posta adresi giriniz." SetFocusOnError="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        </p>
                                        <p>
                                            <asp:TextBox ID="TextBoxSehir" CssClass="form-control" runat="server" Text='<%# Eval("KullaniciIl") %>'></asp:TextBox>
                                        </p>
                                        <p>
                                            <asp:DropDownList ID="DropDownListUyelikTipi" runat="server" SelectedValue='<%# Eval("YetkiID") %>'>
                                                <asp:ListItem Value="1">Admin</asp:ListItem>
                                                <asp:ListItem Value="2">Gold Üye</asp:ListItem>
                                                <asp:ListItem Value="3">Standart Üye</asp:ListItem>
                                            </asp:DropDownList>
                                        </p>
                                        <br />
                                        <br />
                                        <asp:LinkButton class="btn btn-default" ID="LinkButtonKullaniciVazgec" runat="server" CommandName="cancel">Vazgeç</asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonKullaniciGuncelle" runat="server" class="btn btn-warning" CommandName="Update">Güncelle</asp:LinkButton>
                                    </div>
                                    <div class="col-md-3"></div>
                                    <br />
                                </EditItemTemplate>
                            </asp:DataList>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

