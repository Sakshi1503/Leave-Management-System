<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Edit Profile</title>
    <!-- UIkit CSS -->
    <link rel="stylesheet" href="css/uikit.min.css" />
    <!-- UIkit JS -->
    <script src="js/uikit.min.js"></script>

    <link rel="stylesheet" href="css/font-awesome.min.css">

    <link href="./css/dashboard.css" rel="stylesheet" />
    <link href="./css/register.css" rel="stylesheet" />
    <script src="js/uikit-icons.min.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- <link rel="stylesheet" type="feather-icons" href="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.7.3/feather.js"> -->
</head>

<body style="height: -webkit-fill-available;">

    <a href="login.jsp">
        <div class="header" style="width: 100%; z-index: 980;" uk-sticky="" uk-sticky="bottom: #offset">
            <h1 class="uk-heading-divider"></h1>
            <h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
            <h1 class="uk-heading-divider"></h1>
        </div>
    </a>
    <div class="uk-modal-container" style="padding: 0px; margin: 0px; background-color: #edf2fa;">
        <div class="container" style="height: 100%; width: 100%; padding: 0px; margin: 0px;">
            <div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
                <div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff;">
                    <div class="col-lg order-lg-first">
                        <ul class="nav nav-tabs flex-column flex-lg-column">
                            <li class="nav-item">
                                <a href="./wardenHome.jsp" class="nav-link"><i class="fe fe-home"></i> Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenApplyLeave.jsp" class="nav-link"><i class="fe fe-plus"></i> Apply for
                                    Leave</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenApproveStudent.jsp" class="nav-link"><i class="fe fe-check-circle"></i>
                                    Approve Student</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenRemoveStudent.jsp" class="nav-link"><i uk-icon="icon: close"></i>
                                    Remove Student</a>
                            </li>
                            <li class="nav-item">
                                <a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenEditProfile.jsp" class="nav-link active"><i class="fe fe-user"></i>
                                    Edit Profile</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenChangePassword.jsp" class="nav-link"><i class="fe fe-lock"></i> Change
                                    Password</a>
                            </li>
                            <li class="nav-item">
                                <a href="login.jsp" class="nav-link"><i class="fe fe-minus"></i> Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-8 col-md-9 col-lg-10" style="margin: 0px; padding: 0px; width: 100%;">
                    <div class="page">
                        <div class="page-single" style="width: 100%;">
                            <div class="container">
                                <div class="row">
                                    <div class="col col-login mx-auto">
                                        <form class="card" action="" method="post">
                                            <div class="card-body p-6">
                                                <div class="card-title">
                                                    <center>Edit Profile</center>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">You are</label>
                                                    <select class="form-control custom-select">
                                                        <option value="warden" selected="">Warden</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Name</label>
                                                    <input type="username" class="form-control" id="exampleInputname"
                                                        aria-describedby="nameHelp" placeholder="Enter Name">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Contact No</label>
                                                    <input type="mobileno" class="form-control" id="exampleInputMobile"
                                                        aria-describedby="MobileNo" placeholder="Mobile No">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Email ID</label>
                                                    <input type="email" class="form-control" id="exampleInputEmail1"
                                                        aria-describedby="emailHelp" placeholder="Enter Email">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Branch ID</label>
                                                    <input type="branch" class="form-control" id="exampleInputbranch"
                                                        aria-describedby="branchHelp" placeholder="Enter branch">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Designation</label>
                                                    <input type="position" class="form-control" id="exampleInputposition"
                                                        aria-describedby="positionHelp" placeholder="Enter Current Position">
                                                </div>
                                                <div class="form-group">
                                                    <label class="form-label">Is appointed as a hostel incharge?</label>
                                                    <div class="selectgroup w-100">
                                                        <label class="selectgroup-item">
                                                            <input type="radio" name="hosteller" id="hosteller" value="Yes"
                                                                class="selectgroup-input">
                                                            <span class="selectgroup-button">Yes</span>
                                                        </label>
                                                        <label class="selectgroup-item">
                                                            <input type="radio" name="hosteller" id="hosteller" value="No"
                                                                class="selectgroup-input">
                                                            <span class="selectgroup-button">No</span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <!-- <div class="form-group" name="hostel" id="hostel" style="display: none;">
											<label class="form-label">Hostel</label>
											<select class="form-control custom-select">
												<option value="" disabled="" selected="">Select Hostel</option>
												<option value="">Hostel 1</option>
												<option value="">Hostel 2</option>
											</select>
										</div> -->



                                                <div class="form-footer">
                                                    <!-- <button type="submit" class="btn btn-primary btn-block" id="submit" disabled=""><a href="login.jsp" style="color: white;">Submit</a></button> -->
                                                    <button type="submit" class="btn btn-primary btn-block" id="submitLink"
                                                        value="submit" name="submit" formaction="index.jsp">Submit</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('input[type="radio"]').click(function () {
                                if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'Yes') {
                                    $('#hostel').show();
                                }
                                else if ($(this).attr('id') == 'hosteller' && $(this).attr('value') == 'No') {
                                    $('#hostel').hide();
                                }
                                else { }
                            });
                        });
                    </script>
</body>

</html>