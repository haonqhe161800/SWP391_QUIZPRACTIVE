<%-- 
    Document   : profile
    Created on : May 25, 2023, 10:35:15 PM
    Author     : QUANG HAO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
        <link rel="stylesheet" href="view/profile/assets/css.profile.css"/>
        <style>
            .space{
                margin-top: 5%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="/jspClient/Header.jsp" ></jsp:include>

            <div class="space"></div>

            <div class="container rounded bg-white mt-5 mb-5">
            <c:set scope="session" var="adse" value="${sessionScope.accountAdmin}"/>
            <c:set scope="session" var="amase" value="${sessionScope.accountMarketer}"/>
            <c:set scope="session" var="amese" value="${sessionScope.accountMentor}"/>
            <c:set scope="session" var="ause" value="${sessionScope.accountUser}"/>
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" id="previewImage"  width="200px" src="${amase.image != null ? amase.image : (amese.image != null ? amese.image : (ause.image != null ? ause.image : "https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"))}">
                        <span class="font-weight-bold"> ${amase != null ? amase.display_name : (amese != null ? amese.display_name : (ause != null ? ause.display_name : adse))} </span>
                        <span class="text-black-50">${amase != null ? amase.email : (amese != null ? amese.email : (ause != null ? ause.email : adse.email))}</span><span> </span></div>
                </div>
                <div class="col-md-5 border-right">
                    <form action="profile" method="POST">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">Full Name</label><input type="text" class="form-control" placeholder="full name" name="fullname" value="${amase != null ? amase.fullName : (amese != null ? amese.fullName : (ause != null ? ause.fullName : adse))}" ${adse != null ? 'disabled' : ''}></div>
                                <div class="col-md-6"><label class="labels">Display Name</label><input type="text" class="form-control" placeholder="displayname" name="displayname" value="${amase != null ? amase.display_name : (amese != null ? amese.display_name : (ause != null ? ause.display_name : adse))}" ${adse != null ? 'disabled' : ''}></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address" name="address" value="${amase != null ? amase.address : (amese != null ? amese.address : (ause != null ? ause.address : adse))}"></div>
                                <div class="col-md-12"><label class="labels">Describe yourself</label><input type="text" class="form-control" placeholder="describle about me" name="aboutme" value="${amase != null ? amase.descyourself : (amese != null ? amese.descyourself : (ause != null ? ause.descyourself : 'describle about me'))}" ${adse != null ? 'disabled' : ''}></div>
                                <div class="col-md-12"><label class="labels">Academic level</label>
                                    <select class="form-control" name="academiclevel" ${adse != null ? 'disabled' : ''}>
                                        <option value="-1">Academic Level</option>
                                        <option value="Primary School" ${amase != null ? (amase.academiclevel == "Primary School" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "Primary School" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "Primary School" ? 'selected' : '') : ''))}>Primary School</option>
                                        <option value="Secondary School" ${amase != null ? (amase.academiclevel == "Secondary School" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "Secondary School" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "Secondary School" ? 'selected' : '') : ''))}>Secondary School</option>
                                        <option value="High School" ${amase != null ? (amase.academiclevel == "High School" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "High School" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "High School" ? 'selected' : '') : ''))}>High School</option>
                                        <option value="University" ${amase != null ? (amase.academiclevel == "University" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "University" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "University" ? 'selected' : '') : ''))}>University</option>
                                        <option value="Postgraduate" ${amase != null ? (amase.academiclevel == "Postgraduate" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "Postgraduate" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "Postgraduate" ? 'selected' : '') : ''))}>Postgraduate</option>
                                        <option value="Another" ${amase != null ? (amase.academiclevel == "Another" ? 'selected' : '') : (amese != null ? (amese.academiclevel == "Another" ? 'selected' : '') : (ause != null ? (ause.academiclevel == "Another" ? 'selected' : '') : ''))}>Another</option>
                                    </select>

                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Gender</label>
                                    <div class="group-rad" style="display: flex;justify-content: space-around;">
                                        <div class="item"> <input type="radio"  name="gender" value="Male" ${ause.gender == 1 ? 'checked' : ''} ${adse != null ? 'disabled' : ''}>
                                            <label>Male</label><br></div>
                                        <div class="item"> <input type="radio" name="gender" value="Female"  ${ause.gender == 0 ? 'checked' : ''} ${adse != null ? 'disabled' : ''}>
                                              <label>Female</label><br></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Birthday</label><input type="date" class="form-control" placeholder="date of birth" name="dob" value="${amase != null ? amase.dob : (amese != null ? amese.dob : (ause != null ? ause.dob : ''))}" ${adse != null ? 'disabled' : ''}></div>
                            </div>
                            <div class="col-md-12">
                                <div class="py-2">
                                    <div class="col-md-12"><label class="labels">Avatar:</label><input type="file" class="form-control" placeholder="link image" name="avatar" id="imageInput" value="${amase != null ? amase.image : (amese != null ? amese.image : (ause != null ? ause.image : 'link image'))}" ${adse != null ? 'disabled' : ''}></div> <br>
                                </div>
                            </div>
                            <div class="mt-3 text-center"><button class="btn btn-primary profile-button" type="Submit">Save Profile</button></div>
                        </div>
                    </form>        
                </div>

                <div class="col-md-4 border-right">

                    <div class="p-3 py-5" style="border-top: 2px solid black;">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h6 class="text-right">Update your email address</h6>
                        </div>
                        <form action="">
                            <div class="col-md-12"><label class="labels">Email current</label><input type="email" class="form-control" value="${amase != null ? amase.email : (amese != null ? amese.email : (ause != null ? ause.email : adse.email))}"></div>
                            <div class="col-md-12"><label class="labels">Password</label><input type="password" class="form-control" value="${amase != null ? amase.password : (amese != null ? amese.password : (ause != null ? ause.password : adse.password))}"></div>
                            <div class="mt-3"><button class="btn btn-success profile-button" type="button">Send</button></div>
                        </form>
                        <div><p style="font-size: 14px; margin-top: 10px">If you forget your password, you can <a href="#">reset password.</a></p></div>
                    </div>

                </div>            
            </div>
        </div>
    </div>
</div>


<jsp:include page="/jspClient/Footer.jsp" />

<!-- ========================= JS here ========================= -->
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/tiny-slider.js"></script>
<script src="assets/js/glightbox.min.js"></script>
<script src="assets/js/main.js"></script>
<script type="text/javascript">
    //========= Category Slider 
    tns({
        container: '.category-slider',
        items: 3,
        slideBy: 'page',
        autoplay: false,
        mouseDrag: true,
        gutter: 0,
        nav: false,
        controls: true,
        controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
        responsive: {
            0: {
                items: 1,
            },
            540: {
                items: 2,
            },
            768: {
                items: 4,
            },
            992: {
                items: 5,
            },
            1170: {
                items: 6,
            }
        }
    });



</script>

<script type="text/javascript">
// Lắng nghe sự kiện change của trường input file
    document.getElementById('imageInput').addEventListener('change', function (e) {
        var reader = new FileReader();

        // Đọc file ảnh đã chọn
        reader.onload = function (e) {
            var previewImage = document.getElementById('previewImage');
            // Hiển thị ảnh đã chọn trong phần tử <img>
            previewImage.src = e.target.result;
            previewImage.style.width = '400px';
        };

        // Đọc dữ liệu của file ảnh
        reader.readAsDataURL(e.target.files[0]);
    });

</script>
</body>
</html>
