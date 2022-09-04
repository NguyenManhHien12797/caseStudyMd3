<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <link rel="icon" href="../image/SB-L2-xxl.svg" type="image/x-icon">
    <title>Login ShopBae</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/bb6a3cf0b7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="../view/base.css">
    <link rel="stylesheet" href="../view/main.css">

    <style>
        .app__container{
            border-bottom: none;
        }
        .header__login{
            background-color: var(--white-color);
            background-image: none;
            height: 85px;
        }

        .header-with-login{
            height: 85px;
            display: flex;
            align-items: center;
            position: relative;
            margin: 0 20px;
        }
        .background__login{
            display: flex;
            justify-content: center;
            background-color: #ef4c29;
        }

        .background__login-img{
            width: 100%;
            height: 680px;
            background-repeat:no-repeat ;
        }

        .header__logo_login{
            border-radius: 5px;
            display:flex;
            margin-top: 25px;
            justify-items: center;
           height: 43px;
            background-color: var(--primary-color);
        }

        .header__logo-name_login{
            color: var(--primary-color);
            margin-right: 10px;
        }

        .header__logo_login:hover{
            background-color:#f48c81 ;
        }
        .header__logo-name_login:hover,
        .header__title_login:hover{
            color: #f48c81;
        }

        .header__title_login{
            color: var(--text-color);
            margin-left:0;
        }

        .header__login-title{
            position: absolute;
            font-size: 1.6rem;
            color: var(--primary-color);
            text-decoration: none;
            right: 0;
            top:45px;
        }

        /*Form login*/

        .app__container-login{
            position: absolute;
            right: 22.3%;
            top: 145px;
            width: 400px;
            height: 490px;
            border-radius:5px ;
            box-shadow: 0 3px 10px 0 rgb(0 0 0 / 14%);
            background-color: var(--white-color);
        }

        .form__login-username,
        .form__login-password{
            display: block;
            width: 340px;
            height: 38px;
            font-size: 1.8rem;
            margin:22px 30px ;
            padding-left: 20px;
        }


        .form__login-username:focus,
        .form__login-password:focus{
            outline: none;
           border-color: var(--primary-color);
            box-shadow: 0 0.1rem 0.2rem #bdbdbd;
        }
        .app__container-login__title{
            display: block;
            font-weight: 500;
            font-size: 2rem;
            color: var(--text-color);
            margin: 45px 30px;
        }

        .login-btn{
            width: 340px;
            margin:0 0 35px 30px;
            color: var(--white-color);
        }

        .login__with-item{
            display: inline-flex;
            margin-left: 30px;
            border-top: 1px solid #bdbdbd;
        }
        .login__with-item::after{
            position: absolute;
            display: flex;
            right: 168px;
            top: 300px;
            width: 66px;
            height: 18px;
            font-size: 1.6rem;
            text-align: center;
            justify-items: center;
            justify-content: center;
            content: "HOẶC";
            background: var(--white-color);
            color:#bdbdbd ;
        }


        .footer-item__link-fb-login,
        .footer-item__link-gg-login,
        .footer-item__link-linked-login{
            margin: 35px 0;
            padding: 5px 10px;
            color: #367af1;
            font-size: 1.5rem;
            display: block;
            border-radius: 3px;
            border: 1px solid #bdbdbd;
            text-decoration: none;
        }

        .footer-item__link-fb-login:hover,
        .footer-item__link-gg-login:hover,
        .footer-item__link-linked-login:hover{
            text-decoration: none;
            color: #6896e9;
        }

        .footer-item__link-gg{
            margin: 35px 20px 35px 20px;
        }
        /*Form login*/

        .register{
            text-align: center;
        }
        .register__title{
            font-size: 1.4rem;
            font-weight: 150;
        }
        .register__link{
            font-size: 1.6rem;
            color: var(--primary-color);
            text-decoration: none;
        }
        .register__link:hover{
            text-decoration: none;
            color: #df8071;
        }

    </style>

</head>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v14.0&appId=594721352199837&autoLogAppEvents=1" nonce="Zwb32Km7"></script>
<body>


<div class="app">
    <header class="header header__login">
        <div class="grid">
            <div class="header-with-login">
                <div class="header__logo header__logo_login">
                    <a href="/ShopBae">
                        <img src="../image/SB-L2-white-backgroud.svg" alt="">
                    </a>

                </div>
                <a href="/ShopBae" class="header__logo-name header__logo-name_login">
                    ShopBae
                </a>

                <span class="header__logo-name header__title_login">Đăng nhập</span>
                <a href="#" class="header__login-title">Bạn cần giúp đỡ?</a>
            </div>
        </div>

    </header>


    <div class="app__container">
        <div class="background__login">
            <div class="grid">
                <div class="grid__row">
                    <div class="grid__column-12 background__login-img " style="background-image: url(../image/background_login.png)">
                        <div class="app__container-login">
                            <span class="app__container-login__title"> Đăng nhập</span>

<%--                            Form Login--%>

                            <form action="/login" class="form__login" method="post">
                                <input type="text" class="form__login-username" name="username" placeholder="Nhập user name">
                                <input type="password" class="form__login-password" name="password" placeholder="Nhập password">
                                <button class="btn btn-primary login-btn">ĐĂNG NHẬP</button>
                            </form>

<%--                            Form Login--%>

                            <div class="login__with">
                                <li class="login__with-item">
                                    <a href="https://www.facebook.com/" class="footer-item__link-icon footer-item__link-fb footer-item__link-fb-login"><i class="fa-brands fa-facebook"></i> Facebook</a>
<%--    <div class="fb-login-button footer-item__link-icon footer-item__link-fb footer-item__link-fb-login" data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>--%>
                                    <a href="https://www.google.com/" class="footer-item__link-icon footer-item__link-gg footer-item__link-gg-login"><i class="fa-brands fa-google-plus-g"></i>Google</a>
                                    <a href="https://www.linkedin.com/" class="footer-item__link-icon footer-item__link-linked footer-item__link-linked-login"><i class="fa-brands fa-linkedin"></i> Linkedkin</a>
                                </li>
                            </div>

                            <div class="register">
                                <span class="register__title">Bạn mới biết đến ShopBae?</span>
                                <a href="register.jsp" class="register__link">Đăng ký</a>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


        </div>


    </div>
    <div class="footer">
        <div class="grid">
            <div class="grid__row footer-wrap">
                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Chăm sóc khách hàng</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Trung tâm trợ giúp</a>
                        <a href="#" class="footer-item__link">ShopBae Blog</a>
                        <a href="#" class="footer-item__link">ShopBae Mall</a>
                        <a href="#" class="footer-item__link">Hướng dẫn mua hàng</a>
                        <a href="#" class="footer-item__link">Hướng dẫn bán hàng</a>
                        <a href="#" class="footer-item__link">Thanh toán</a>
                        <a href="#" class="footer-item__link">ShopBae xu</a>
                        <a href="#" class="footer-item__link">Vận chuyển</a>
                        <a href="#" class="footer-item__link">Trả hàng & hoàn tiền</a>
                        <a href="#" class="footer-item__link">Chăm sóc khách hàng</a>
                        <a href="#" class="footer-item__link">Chính sách bảo hành</a>
                    </li>
                </div>

                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Về ShopBae</h3>
                    <li class="footer-item">
                        <a href="#" class="footer-item__link">Giới thiệu về ShopBae Việt Nam</a>
                        <a href="#" class="footer-item__link">Tuyển dụng</a>
                        <a href="#" class="footer-item__link">Điều khoản ShopBae</a>
                        <a href="#" class="footer-item__link">Chính sách bảo mật</a>
                        <a href="#" class="footer-item__link">Chính hãng</a>
                        <a href="#" class="footer-item__link">Kênh người bán</a>
                        <a href="#" class="footer-item__link">Flash sales</a>
                        <a href="#" class="footer-item__link">Chương trình tiếp thị liên kết ShopBae</a>
                        <a href="#" class="footer-item__link">Linh hệ với truyền thông</a>
                    </li>
                </div>

                <div class="grid__column-2-4 ">
                    <h3 class="footer__heading">Thanh toán</h3>
                    <li class="footer-item footer-item-pay">
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-brands fa-cc-visa"></i></a>
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-brands fa-cc-paypal"></i></a>
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-brands fa-cc-jcb"></i></a>
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-brands fa-cc-amazon-pay"></i></a>
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-solid fa-credit-card"></i></a>
                        <a href="#" class="footer-item__link footer-item__link-pay"> <i class="fa-brands fa-cc-mastercard"></i></a>
                    </li>
                    <h3 class="footer__heading footer__heading-ship">Đơn vị vận chuyển</h3>
                    <li class="footer-item footer-item-ship">
                        <img src="../image/footer-item-ship-img_1.png" alt="" class="footer-item-ship-img">
                        <img src="../image/footer-item-ship-img_2.png" alt="" class="footer-item-ship-img">
                        <img src="../image/footer-item-ship-img_3.webp" alt="" class="footer-item-ship-img">
                    </li>
                </div>

                <div class="grid__column-2-4">
                    <h3 class="footer__heading">Theo dõi chúng tôi</h3>
                    <li class="footer-item">
                        <a href="https://www.facebook.com/" class="footer-item__link footer-item__link-icon footer-item__link-fb"><i class="fa-brands fa-facebook"></i> Facebook</a>
                        <a href="https://www.instagram.com/" class="footer-item__link footer-item__link-icon">
                            <i class="fa-brands fa-instagram footer-item__link-ins"></i>

                            <span class="footer-item__link-name">Instagram</span>
                        </a>
                        <a href="https://www.linkedin.com/" class="footer-item__link footer-item__link-icon footer-item__link-linked"><i class="fa-brands fa-linkedin"></i> Linkedkin</a>
                    </li>
                </div>

                <div class="grid__column-2-4 ">
                    <h3 class="footer__heading footer__heading-end ">Tải ứng dụng ShopBae</h3>
                    <img src="../image/qr-code.png" alt="" class="footer-item__img footer-item__img__download">
                </div>
            </div>
        </div>

        <div class="grid">
            <div class="grid__row grid__row-coppyright ">
                <div class="grid__column-3">
                    <span class="coppyright">© 2022 ShopBae. Tất cả các quyên được bảo lưu.</span>
                </div>

                <div class="grid__column-9 grid__column-9__address ">
                    <span class="address">Quốc gia & khu vực Singapore | Indonesia | Đài Loan | Thái Lan | Malaysia | Việt Nam | Philipines | Bzazil | México | Colombia | Chile | Poland | Argentina</span>
                </div>
            </div>
        </div>

        <div class="grid footer__policy-wrap">
            <div class="grid__column-12 footer__policy">
                <span class="footer__policy-title">Chính sách bảo mật</span>
                <span class="footer__policy-title">Quy chế hoạt động</span>
                <span class="footer__policy-title">Chính sách vận chuyển</span>
                <span class="footer__policy-title">Chính sách trả hàng và hoàn tiền</span>
            </div>
            <div class="grid__column-12 footer__footer-logo">
                <a class="footer__logo" href="/ShopBae">
                    <img src="../image/SB-L2-white-backgroud.svg" alt="" class="footer__logo-img">
                    <span class="footer__logo-name">ShopBae</span>
                </a>

            </div>
            <div class="grid__column-12 footer__address">
                <span class="footer__address-name">Địa chỉ: Tầng 4-5-6, Tòa nhà HD City, số 1 đường Mỹ Đình, Phường Mỹ Đình, Quận Từ Liêm, Thành phố Hà Nội, Việt Nam. Tổng đài hỗ trợ: 1903412312 - Email: cskh@hotro.shopBae.vn</span>
                <span class="footer__address-name">Chịu Trách Nhiệm Quản Lý Nội Dung: Nguyễn Văn A - Điện thoại liên hệ: 0987654321</span>
                <span class="footer__address-name">© 2015 - Bản quyền thuộc về Công ty TNHH ShopBae</span>
            </div>
        </div>
    </div>
</div>

</body>


<script>
    window.fbAsyncInit = function() {
        FB.init({
            appId      : '594721352199837',
            xfbml      : true,
            version    : 'v14.0'
        });
        FB.AppEvents.logPageView();
    };

    (function(d, s, id){
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));


    function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
        console.log('statusChangeCallback');
        console.log(response);                   // The current login status of the person.
        if (response.status === 'connected') {   // Logged into your webpage and Facebook.
            testAPI();
        } else {                                 // Not logged into your webpage or we are unable to tell.
            document.getElementById('status').innerHTML = 'Please log ' +
                'into this webpage.';
        }
    }


    function checkLoginState() {               // Called when a person is finished with the Login Button.
        FB.getLoginStatus(function(response) {   // See the onlogin handler
            statusChangeCallback(response);
        });
    }


    window.fbAsyncInit = function() {
        FB.init({
            appId      : '{app-id}',
            cookie     : true,                     // Enable cookies to allow the server to access the session.
            xfbml      : true,                     // Parse social plugins on this webpage.
            version    : '{api-version}'           // Use this Graph API version for this call.
        });


        FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
            statusChangeCallback(response);        // Returns the login status.
        });
    };

    function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
                'Thanks for logging in, ' + response.name + '!';
        });
    }

</script>
</html>
