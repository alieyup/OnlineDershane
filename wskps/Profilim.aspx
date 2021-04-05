<%@ Page Title="Profilim | WSKPS Kontrol Sende" Language="C#" EnableEventValidation="false" MasterPageFile="~/wskps/wskps.master" AutoEventWireup="true" CodeFile="Profilim.aspx.cs" Inherits="wskps_Durumum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="page-title">Profilim <small>Güncelleme</small>
    </h3>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="index-2.html">Ana Sayfa</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">Kullanıcılar</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">Durumum</a>
            </li>
        </ul>
    </div>
    <div class="row profile">
        <div class="col-md-12">
            <div class="row profile-account">
                <div class="col-md-3">
                    <ul class="ver-inline-menu tabbable margin-bottom-10">
                        <li class="active">
                            <a data-toggle="tab" href="#tab_1-1">
                                <i class="fa fa-cog"></i>Genel Bilgiler </a>
                            <span class="after"></span>
                        </li>
                        <li class="display-none">
                            <a data-toggle="tab" href="#tab_3-3"><i class="fa fa-lock"></i>Şifre Değiştir</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-9">
                    <div class="tab-content">
                        <div id="tab_1-1" class="tab-pane active">
                            <div class="form-group">
                                <label class="control-label">İsim</label>
                                <asp:TextBox ID="TextBoxAdi" runat="server" class="form-control" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Ad Soyad Giriniz." ForeColor="Red" ControlToValidate="TextBoxAdi" />
                            </div>
                            <div class="form-group">
                                <label class="control-label">E-Mail</label>
                                <div class="input-group">
                                    <asp:TextBox ID="TextBoxEmail" runat="server" class="form-control" TextMode="Email" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen E-Posta Giriniz." ForeColor="Red" ControlToValidate="TextBoxEmail" />
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail"
                        ErrorMessage="Geçerli bir e-posta adresi giriniz." SetFocusOnError="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label">İl</label>
                                <asp:TextBox ID="TextBoxIl" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="margiv-top-10">
                                <asp:LinkButton ID="LinkButtonKaydet" class="btn btn-success" runat="server" Text="Kaydet" OnClick="LinkButtonKaydet_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

