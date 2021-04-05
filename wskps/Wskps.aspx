<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Wskps.aspx.cs" Inherits="wskps_Wskps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <meta name="MobileOptimized" content="320">
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="wskomut/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="wskomut/plugins/select2/select2.css" />
    <!-- END PAGE LEVEL SCRIPTS -->
    <!-- BEGIN THEME STYLES -->
    <link href="wsbicim/style-conquer.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/style.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/plugins.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/themes/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="wsbicim/pages/login.css" rel="stylesheet" type="text/css" />
    <link href="wsbicim/custom.css" rel="stylesheet" type="text/css" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="http://keenthemes.com/preview/conquer/favicon.ico" />
    <title>Kontrol Paneli | Giriş Yap</title>
</head>
<body class="login">


        <!-- BEGIN LOGO -->
        <div class="logo">
            <a href="http://www.rinoda.com" target="_blank">
                <img src="wsresim/logo-giris.png" alt="" />
            </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <form class="login-form" runat="server" id="form">
                <h3 class="form-title">WSKPS Giriş Paneli</h3>
                <asp:Literal ID="LiteralYanlisGiris" Visible="false" runat="server"></asp:Literal>
                
                <div class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button>
                    <span>E-posta ve şifre girin! </span>
                </div>
                <div class="form-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">E-Posta</label>
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                        <input class="form-control placeholder-no-fix" type="text" runat="server" autocomplete="off" placeholder="E-Posta" name="username" id="username" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Şifre</label>
                    <div class="input-icon">
                        <i class="fa fa-lock"></i><script>
                                                      function button_click(objTextBox, objBtnID) {
                                                          if (window.event.keyCode == 13) {
                                                              document.getElementById(objBtnID).focus();
                                                              document.getElementById(objBtnID).click();
                                                          }
                                                      }
</script>
                        <asp:TextBox ID="password" TextMode="Password" AutoCompleteType="None" placeholder="Şifre" ClientIDMode="Static" class="form-control placeholder-no-fix" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-actions">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1" />
                        Beni Hatırla
                    </label>
                    <asp:Button ID="ButtonGiris" type="submit" class="btn btn-info pull-right" runat="server" Text="Giriş" OnClick="ButtonGiris_Click" />
                </div>
                <div class="forget-password">
                    <h4>Şifreni mi Unuttun ?</h4>
                    <p>
                        Endişelenme, <a href="javascript:;" id="forget-password">buraya</a> tıkla ve yeni bir şifre al!
                    </p>
                </div>
                <div class="create-account display-none">
                    <p>
                        Don't have an account yet ?&nbsp; <a href="javascript:;" id="register-btn">Create an account</a>
                    </p>
                </div>
            </form>
            <!-- END LOGIN FORM -->
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <form class="forget-form">
                <h3>Yeni Şifre Talebi</h3>
                <p>
                    Kayıt sırasında kullanılan e-posta adresini yazın.
                </p>
                <div class="form-group">
                    <div class="input-icon">
                        <i class="fa fa-envelope"></i>
                        <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="E-Posta" name="email" />
                    </div>
                </div>
                <div class="form-actions">
                    <button type="button" id="back-btn" class="btn btn-default">
                        <i class="m-icon-swapleft"></i>Geri
                    </button>
                    <button type="submit" class="btn btn-info pull-right">
                        Gönder
                    </button>
                </div>
            </form>
            <!-- END FORGOT PASSWORD FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        <div class="copyright">
            2015 &copy; Web Site Kontrol Panel Sistemi
        </div>
        <!-- END COPYRIGHT -->
        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <script src="wskomut/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
        <script src="wskomut/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="wskomut/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="wskomut/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="wskomut/plugins/select2/select2.min.js"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="wskomut/scripts/app.js" type="text/javascript"></script>
        <script src="wskomut/scripts/login.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
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
        <!-- END JAVASCRIPTS -->
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-37564768-1', 'keenthemes.com');
            ga('send', 'pageview');
        </script>


    </form>
</body>
</html>
