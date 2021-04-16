<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 메인 페이지</title>
    <!--폰트어썸-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/v4-shims.css">

    <style>
        body{
            margin: 0;
            padding: 0;
            border: 0;
            color: white;
            min-height: 100%;
        }
        .hcontainer {
            display: flex;
            justify-content: space-between;
            background-color : #0C3D6A;
            width: 100%;
            height: 100px;
            text-align: center;
        }
        .headertitle{
            padding-top: 5px;
            padding-right: 15px;
            font-size: 50px;
        }
        #headericon{
            font-size: 35px;
            padding-top: 26px;
            padding-right: 10px;
            padding-left: 15px;
        }
        .headericon{
            padding-top: 8px;
            font-size: 17px;

        }
        .headerbell{
            color: yellow;
            padding-top: 25px;
            padding-right: 30px;
            font-size: 40px;
        }
        .footer-container img{
            height: 60px;
        }
        /*600px 이하 일 때 사용하는 미디어쿼리*/
        @media screen and (max-width: 600px){
            .headerbtn{
                flex-direction: column;
            }
            .dropbtn {
                background-color: gray;
                color: white;
                font-size: 28px;
                border: none;
                height: 50px;
                width: 100%;
                flex-grow: 1;
            }
            .dropdown-content{
                background-color: lightgray;
                height: 100%;
                width: 100%;
            }
            .dropdown-content div{
                text-align: center;
                padding-top: 5px;
                height: 40px;
            }
            .dropdown-content a{
                padding: 10px 20px;
                text-decoration: none;
                color: black;
                font-size: 20px;
            }
            .menudetail:hover {
                background-color: #f1f1f1
            }
            .navline{
                margin: -13px;
            }
            .mainview{
                display: none;
            }
            footer{
                height: 100px;
                position:absolute;
                width:100%;
            }
            .footer-container{
                background-color : #0C3D6A;
                height: 100px;
                text-align: center;
                padding-top: 10px;
                padding-bottom: 20px;
                font-size: 10px;
            }
        }
        /*600px 이상 일 때 사용하는 미디어쿼리*/
        @media screen and (min-width: 600px){
            .headerbtn{
            padding-top: 8px;
            padding-bottom: 8px;
            border-radius: 8px;
            background-color: yellow;
            color: #0C3D6A;
            font-size: 20px;
            }
            .navdiv{
                display: flex;
                justify-content: space-around;
                height: 100%;
                background-color: lightgray;
                color: black;
            }
            .navline{
                font-size: 30px;
                color: rgba(255, 255, 255, 0.192);
            }
            .dropbtn {
                background-color: lightgray;
                color: white;
                font-size: 18px;
                border: none;
                cursor: pointer;
                height: 40px;
                width: 240px;
                flex-grow: 1;
            }
            .dropdown {
                position: relative;
                display: inline-block;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 240px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .dropdown-content a {
                color: black;
                padding: 10px 16px;
                text-decoration: none;
                display: block;
                font-size: 15px;
            }
            .adetail{
                text-decoration: none;
            }
            .dropdown-content a:hover {
                background-color: #f1f1f1;
            }
            .dropdown:hover .dropdown-content {
                display: block;
                color: black;
            }
            .dropdown:hover .dropbtn {
                background-color: #0C3D6A;
            }
            footer{
                position: fixed;
                left: 0px;
                bottom: 0px;
                height: 100px;
                width: 100vw;
            }
            .footer-container{
                background-color : #0C3D6A;
                height: 100px;
                text-align: center;
                padding-top: 10px;
                padding-bottom: 20px;
                font-size: 10px;
            }
        }
        .headeralarm{
            margin-right: 20px;
        }
        .countinput{
            font: bold;
            font-size: 16px;
            color: white;
            position: absolute;
            right: 23px;
            top: 23px;
            width: 20px;
            background-color: transparent;
            /* 알림 숫자 */border: none;
            z-index: 3;
            text-align: center;
        }
        .maintable{
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <div class="hcontainer">
            <div class="headericon"><i id="headericon" class="far fa-user"></i>관리자님</div>
                <div class="headertitle"><a style="text-decoration: none;" href="/ebtd/admin"><img src="/resources/image/mainlogo.png" alt="EBTD메인로고" style="height: 80px;"/></a>&nbsp;</div>
                <div class="headeralarm">
                    <div class="headerbell">
                        <i class="fas fa-bell"></i><i class="fas fa-comment" style="font-size: 35px; color: red; position: absolute; top: 20px;"></i>
                    </div>
                    <div class="countdiv">
                        <input class="countinput" type="text" readonly>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navdiv">
            <div class="dropdown">
                <button class="dropbtn">회사 관리</button>
                <div class="dropdown-content">
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/companyRequestListForm">회사 등록 승인</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">노선 변경 승인</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/newBusRouteListForm">&nbsp;&nbsp;- 신규 노선 등록</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/updateBusRouteListForm">&nbsp;&nbsp;- 기존 노선 수정</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/companyNameListForm">버스 회사 등록 현황</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">승인/반려 내역 보기</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/companyApprovalListForm">&nbsp;&nbsp;- 승인 내역</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="/www/admin/company/companyRejectListForm">&nbsp;&nbsp;- 반려 내역</a></div>
                </div>
            </div>
            <div class="navline">
            <i class="fas fa-grip-lines-vertical"></i>
            </div>
            <div class="dropdown">
                <button class="dropbtn">이용자 관리</button>
                <div class="dropdown-content">
                    <div class="menudetail"><a style="text-decoration: none;" href="#">이용자 상세</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">이용자 전체 히스토리</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">이용자 히스토리 챠트</a></div>
                </div>
            </div>
            <div class="navline">
                <i class="fas fa-grip-lines-vertical"></i>
            </div>
            <div class="dropdown">
                <button class="dropbtn">정류장 관리</button>
                <div class="dropdown-content">
                    <div class="menudetail"><a style="text-decoration: none;" href="#">정류장 전체 리스트</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">정류장 등록 및 신청 리스트</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">정류장 결재 내역함</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">정류장별 이용자 히스토리</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">정류장 이용자 챠트</a></div>
                </div>
            </div>
            <div class="navline">
                <i class="fas fa-grip-lines-vertical"></i>
            </div>
            <div class="dropdown">
                <button class="dropbtn">고객 센터</button>
                <div class="dropdown-content">
                    <div class="menudetail"><a style="text-decoration: none;" href="#">고객센터</a></div>
                    <div class="menudetail"><a style="text-decoration: none;" href="#">로그아웃</a></div>
                </div>
            </div>
        </nav>
    </header>
</body>
</html>