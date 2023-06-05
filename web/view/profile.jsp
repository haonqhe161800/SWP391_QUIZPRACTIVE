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
        <link rel="stylesheet" href="assets/css.profile.css"/>
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
                <div class="row">
                    <div class="col-md-3 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Edogaru</span><span class="text-black-50">edogaru@mail.com.my</span><span> </span></div>
                    </div>
                    <div class="col-md-5 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4 class="text-right">Profile Settings</h4>
                            </div>
                            <div class="row mt-2">
                                <div class="col-md-6"><label class="labels">FullName</label><input type="text" class="form-control" placeholder="first name" value=""></div>
                                <div class="col-md-6"><label class="labels">Display Name</label><input type="text" class="form-control" value="" placeholder="displayname"></div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Address</label><input type="text" class="form-control" placeholder="enter address" value=""></div>
                                <div class="col-md-12"><label class="labels">Password</label><input type="text" class="form-control" placeholder="enter password" value=""></div>
                                <div class="col-md-12"><label class="labels">Confirm Password</label><input type="text" class="form-control" placeholder="enter confirm password" value=""></div>
                                <div class="col-md-12"><label class="labels">Describe yourself</label><input type="text" class="form-control" placeholder="describle about me" value=""></div>
                                <div class="col-md-12"><label class="labels">Academic level</label><input type="text" class="form-control" placeholder="enter academic level" value=""></div>
                                <div class="col-md-12">
                                    <label class="labels">Gender</label>
                                    <div class="group-rad" style="display: flex;justify-content: space-around;">
                                        <div class="item"> <input type="radio"  name="gender" value="Male">
                                            <label>Male</label><br></div>
                                        <div class="item"> <input type="radio" name="gender" value="Female">
                                              <label>Female</label><br></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-12"><label class="labels">Birthday</label><input type="date" class="form-control" placeholder="date of birth" value=""></div>
                            </div>
                            <div class="col-md-12">
                                <div class="p-3 py-5">
                                    <div class="col-md-12"><label class="labels">Avatar:</label><input type="file" class="form-control" placeholder="link image" value=""></div> <br>
                                </div>
                            </div>
                            <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="button">Save Profile</button></div>
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
</body>
</html>
