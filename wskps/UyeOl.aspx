<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UyeOl.aspx.cs" Inherits="wskps_UyeOl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="wskomut/plugins/select2/select2.css" />
    <link href="wsbicim/style-conquer.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/style.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/plugins.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/themes/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="wsbicim/pages/login.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/custom.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="http://keenthemes.com/preview/conquer/favicon.ico" />
    <title>Kontrol Paneli | Giriş Yap</title>
</head>
<body class="login">
    <form id="form1" runat="server">
        <div class="logo">
            <a href="http://www.wskps.com" target="_blank">
                <img src="wsresim/logo-giris.png" alt="" />
            </a>
        </div>
        <div class="content">
            <h3>Kayıt Ol</h3>
            <p>
                <asp:Label ID="LabelUyari" runat="server" Text="Lütfen detaylı ve doğru şekilde bilgilerinizi giriniz."></asp:Label>
            </p>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Ad Soyad</label>
                <div class="input-icon">
                    <i class="fa fa-font"></i>
                    <input class="form-control placeholder-no-fix" type="text" placeholder="Ad Soyad" name="fullname" id="fullname" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen isim giriniz." ForeColor="Red" ControlToValidate="fullname"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">E-Posta</label>
                <div class="input-icon">
                    <i class="fa fa-envelope"></i>
                    <input class="form-control placeholder-no-fix" type="text" placeholder="E-Posta" name="username" id="username" runat="server" /><asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="username"
                        ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="username"
                        ErrorMessage="Geçerli bir e-posta adresi giriniz." SetFocusOnError="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Şifre</label>
                <div class="input-icon">
                    <i class="fa fa-lock"></i>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Şifre" name="password" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ControlToValidate="register_password" ErrorMessage="Lütfen şifre giriniz.">
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Şifre Tekrar</label>
                <div class="controls">
                    <div class="input-icon">
                        <i class="fa fa-check"></i>
                        <input class="form-control placeholder-no-fix" type="password" id="rpassword" runat="server" autocomplete="off" placeholder="Şifre Tekrar" name="rpassword" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="rpassword" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ControlToCompare="register_password" ControlToValidate="rpassword" ErrorMessage="Şifreleriniz Eşleşmiyor" Operator="Equal"></asp:CompareValidator>

                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label visible-ie8 visible-ie9">Şehir</label>
                <div class="input-icon">
                    <i class="fa fa-location-arrow"></i>
                    <input class="form-control placeholder-no-fix" type="text" placeholder="Şehir" name="city" runat="server" id="city" />
                </div>
            </div>
            <p>
                <br />
            </p>
            <div class="form-group">
                <label>
                    <input type="checkbox" name="tnc" runat="server" id="CheckBoxKabul" />
                    <a href="#myModal2" role="button" class="label label-primary" data-toggle="modal">Kullanıcı Sözleşmesi</a> ve <a href="#myModal3" role="button" class="label label-warning" data-toggle="modal">Gizlilik Politikası</a>'nı kabul ediyorum.
                </label>
                <div id="register_tnc_error">
                    <asp:CustomValidator runat="server" ID="CheckBoxRequired" EnableClientScript="true"
                        OnServerValidate="CheckBoxRequired_ServerValidate"
                        ClientValidationFunction="CheckBoxRequired_ClientValidate" ForeColor="Red">Lütfen Kullanıcı Sözleşmesini ve <br />Gizlilik Politikasını kabul ediniz.</asp:CustomValidator>
                </div>
            </div>
            <div class="form-actions">
                <asp:Button ID="ButtonKayitOl" type="submit" class="btn btn-info pull-right" runat="server" Text="Kayıt Ol" OnClick="ButtonKayitOl_Click" />
            </div>
        </div>
        <div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Kullanıcı Sözleşmesi</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            Etiam mattis auctor porta. Praesent eu placerat massa. In consequat libero sit amet nisi interdum, quis bibendum lectus faucibus. Duis vitae odio posuere ipsum cursus aliquam. Aliquam ipsum magna, scelerisque id mauris a, pulvinar placerat leo. Sed accumsan lacus quis augue venenatis hendrerit. Duis auctor fringilla nisi lacinia porta. Vivamus at gravida lectus.
                        </p>
                        <p>
                            Vestibulum mollis ligula non tellus congue, sit amet vestibulum elit viverra. Nunc tempus ipsum vitae facilisis convallis. Sed dignissim malesuada lectus, sed bibendum lorem venenatis sit amet. Praesent odio ipsum, scelerisque a faucibus id, dignissim non turpis. Morbi et massa eu leo laoreet scelerisque sit amet quis mauris. Aenean nec tellus vel lorem condimentum condimentum non id leo. Fusce a quam a tellus volutpat vehicula nec at sem. Etiam nec diam mauris. Sed ultricies nulla at leo volutpat tempor.
                        </p>
                        <p>
                            Cras finibus est ac massa dignissim, vel feugiat lorem pellentesque. Ut a interdum ante, ut viverra ipsum. Cras ac suscipit magna. Sed rhoncus feugiat risus, at dignissim eros congue vitae. Ut id condimentum massa, ut condimentum ex. Aliquam dictum, nunc vitae finibus dictum, diam diam porttitor mi, at pharetra erat risus a urna. Mauris convallis sollicitudin sem nec lobortis. Mauris consectetur ultrices facilisis. Curabitur id mauris diam.
                        </p>
                        <p>
                            Fusce ut mi pretium, feugiat lorem a, facilisis erat. Sed hendrerit nulla a augue varius ullamcorper. Etiam tempus rhoncus purus. Sed commodo sodales libero quis elementum. Suspendisse ac tellus sed est vehicula pharetra vitae eget est. Donec mattis vitae turpis in elementum. Duis id nibh ac tortor imperdiet faucibus. Integer sed tortor euismod, eleifend erat eget, ultrices dui.
                        </p>
                        <p>
                            Nullam sit amet enim in orci ultrices lobortis non a mauris. Etiam ac lobortis mauris. Etiam non vestibulum arcu. Vivamus risus nibh, condimentum nec dictum vel, efficitur et metus. Suspendisse finibus luctus malesuada. Ut congue id urna et tristique. Vestibulum pharetra tellus nec erat sagittis, vel aliquet nulla mollis. Fusce vel auctor metus. Vestibulum vitae convallis tortor, sed interdum leo. Aliquam malesuada augue ac elit mollis, ut fermentum massa posuere. Ut ut ligula consectetur, pellentesque ante sit amet, lobortis dui.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-success">OK</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title">Gizlilik Politikası</h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            Curabitur lobortis nunc lectus. Nunc faucibus tellus ut dolor scelerisque elementum. Phasellus accumsan vehicula ipsum, id laoreet eros viverra eu. Nunc porttitor sem vitae odio efficitur, eu interdum erat volutpat. Praesent blandit nibh quis aliquam vulputate. Donec eleifend elit at elementum egestas. Nam quis mi mollis, sodales quam et, consequat odio. Maecenas et scelerisque urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras tempor euismod faucibus. Aliquam pharetra, velit eu sagittis posuere, ligula dui ultricies quam, rhoncus dapibus magna nisi molestie lacus. Nam ut tincidunt lacus. Praesent luctus nisl odio, in rhoncus libero porta ac. Vivamus a arcu egestas, fringilla nunc accumsan, consectetur est. Integer euismod eget magna ut interdum.
                        </p>
                        <p>
                            Etiam et lectus interdum, sagittis quam sed, ultricies justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas sollicitudin, lorem id rutrum tempus, dolor sem mollis sapien, dignissim rhoncus dui justo sit amet arcu. In eget justo tincidunt, lobortis turpis ac, placerat mauris. Vestibulum tempus ex at lobortis condimentum. Suspendisse vitae est quis dui molestie blandit sodales ut sapien. Vivamus mollis sapien egestas dolor efficitur, at gravida enim aliquam. Donec hendrerit justo et mollis porttitor. Donec consectetur elit elit, eu porta massa vulputate ut. Mauris et urna ut urna ultrices auctor ut eget leo.
                        </p>
                        <p>
                            Integer odio est, pulvinar sagittis tempor nec, convallis sed risus. Nam bibendum enim nisl, nec feugiat odio tincidunt vitae. Ut lobortis quam quis lacus suscipit tempor. Sed ut iaculis libero, eu dignissim est. Duis ipsum lacus, condimentum vitae sem et, sagittis malesuada tortor. Morbi tincidunt malesuada augue sed accumsan. Proin nec mi aliquet, pharetra augue eget, mollis metus.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-success">OK</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            2015 &copy; Web Site Kontrol Panel Sistemi
        </div>
        <script src="wskomut/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="wskomut/plugins/select2/select2.min.js"></script>
        <script src="wskomut/scripts/app.js" type="text/javascript"></script>
        <script src="wskomut/scripts/login.js" type="text/javascript"></script>
        <script>
            jQuery(document).ready(function () {
                App.init();
                Login.init();
                var action = location.hash.substr(1);
                if (action == 'createaccount') {
                    $('.register-form').show();
                    $('.login-form').hide();
                    $('.forget-form').hide();
                } else if (action == 'forgetpassword') {
                    $('.register-form').hide();
                    $('.login-form').hide();
                    $('.forget-form').show();
                }
            });
        </script>
    </form>
</body>
</html>
