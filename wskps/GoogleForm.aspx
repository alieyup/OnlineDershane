<%@ Page Title="" Language="C#" MasterPageFile="~/wskps/wskps.master" AutoEventWireup="true" CodeFile="GoogleForm.aspx.cs" Inherits="wskps_GoogleForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="page-title">Google Form Ekle<small></small>
    </h3>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="AnaSayfa.aspx">Ana Sayfa</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>Google Form Ekle
            </li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="portlet">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-plus"></i>Google Form Ekle
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>
                <div class="portlet-body form">
                    <div class="form-horizontal">
                        <div class="form-body">

                            <div class="form-group">
                                <div class="col-md-1"></div>
                                <div class="col-md-10">
                                    <asp:Literal ID="LiteralHataMesaji" Visible="false" runat="server"></asp:Literal>
                                    <div class="col-md-1"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Google Form Test Adı</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="maxlength_placement" MaxLength="250" runat="server" name="defaultconfig" class="form-control" ClientIDMode="Static" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen Google Form Test Adı Giriniz." ForeColor="Red" ControlToValidate="maxlength_placement" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Google Form Link</label>
                                <div class="col-md-6">
                                    <asp:TextBox ID="TextBoxGoogleFormLink" MaxLength="250" runat="server" name="defaultconfig" class="form-control" ClientIDMode="Static" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen Google Form Link Giriniz." ForeColor="Red" ControlToValidate="maxlength_placement" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Google Form Açıklama</label>
                                <div class="col-md-6">
                                    <textarea id="maxlength_textarea" runat="server" clientidmode="Static" class="form-control" maxlength="500" rows="4"></textarea>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen Ünite Açıklama Giriniz." ForeColor="Red" ControlToValidate="maxlength_textarea" />
                                </div>
                            </div>

                            <div class="form-actions">
                                <div class="row">
                                    <div class="col-md-offset-3 col-md-9">
                                        <asp:LinkButton ID="LinkButtonUniteEkle" CssClass="btn btn-success" runat="server" OnClick="LinkButtonUniteEkle_Click"><i class="fa fa-check"></i>Ünite Ekle</asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

