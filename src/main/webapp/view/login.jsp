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
    <link rel="stylesheet" href="base.css">
    <link rel="stylesheet" href="main.css">

    <style>

        .header__login{
            background-color: var(--white-color);
            background-image: none;
        }
        .background__login{
            display: flex;
            justify-content: center;
            background-color: #ef4c29;
        }

        .header__logo_login{
            border-radius: 5px;
            display:flex;
            margin-top: 17px;
            justify-items: center;
           height: 43px;
            background-color: var(--primary-color);
        }

        .header__logo-name_login{
            color: var(--primary-color);
        }

        .header__logo_login:hover{
            background-color:#f48c81 ;
        }
        .header__logo-name_login:hover{
            color: #f48c81;
        }

    </style>

</head>
<body>
<div class="app">
    <header class="header header__login">
        <div class="grid">
            <nav class="header__navbar">
            </nav>

            <div class="header-with-search">
                <div class="header__logo header__logo_login">
                    <a href="homepage.jsp">
                        <img src="../image/SB-L2-white-backgroud.svg" alt="">
                    </a>

                </div>
                <a href="homepage.jsp" class="header__logo-name header__logo-name_login">
                    ShopBae
                </a>

            </div>
        </div>

    </header>


    <div class="app__container">
        <div class="background__login">
            <img class="background__login-img" src="../image/background_login.png" alt="">
        </div>
        <div class="app__container-banner">


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
                <a class="footer__logo" href="homepage.jsp">
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
</html>