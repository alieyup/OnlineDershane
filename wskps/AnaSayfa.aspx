<%@ Page Title="WSKPS | Kontrol Paneli" Language="C#" MasterPageFile="~/wskps/wskps.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="wskps_AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    Widget settings form goes here
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success">Save changes</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <h3 class="page-title">WSKPS <small>Kontrol Sende</small>
    </h3>
    <div class="page-bar">
        <ul class="page-breadcrumb">
            <li>
                <i class="fa fa-home"></i>
                <a href="AnaSayfa.aspx">Ana Sayfa</a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>Kontrol Paneli
            </li>
        </ul>

    </div>
    <div class="clearfix">
    </div>
    <div class="row">
        <div class="col-md-6 col-sm-12">
            <div class="portlet" style="height: 293px;">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-child"></i>Alan 1 (Son Eklenen 5)
                    </div>
                    <div class="tools">
                        <a href="#" class="collapse"></a>
                        <a href="#" class="remove"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="portlet" style="height: 293px;">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-graduation-cap"></i>Alan 2 (Son Eklenen 5)
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="portlet tabbable">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-edit    "></i>Alan 4 (Son Eklenen 5)
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>
                <div class="portlet-body">

                    <div id="SonucOgrenciBulunamadi" runat="server" class="display-none">
                        <p>
                            <h4>
                                <span class="label label-danger">Veri Bulunamadı...</span>
                            </h4>
                        </p>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12">
            <div class="portlet tabbable">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-edit"></i>Alan 6 (Son Eklenen 5)
                    </div>
                    <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                        <a href="javascript:;" class="remove"></a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div id="SonucVeliBulunamadi" runat="server" class="display-none">
                        <p>
                            <h4><span class="label label-danger">Veri Bulunamadı...</span></h4>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix">
    </div>
</asp:Content>

