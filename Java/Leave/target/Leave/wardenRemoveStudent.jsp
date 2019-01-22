<title>Remove Student</title>
<jsp:include page="header.jsp" />


<body style="height: 100vh;">
    <div class="header" style="width: 100%; z-index: 980;" uk-sticky="">
        <h1 class="uk-heading-divider"></h1>
        <h1 class="uk-heading-line uk-text-center"><span>Institute Leave Management System</span></h1>
        <h1 class="uk-heading-divider"></h1>
    </div>

    <div class="page" style="padding: 0px; margin: 0px; height: -webkit-fill-available; background-color: #edf2fa;">
        <div class="container" style="padding: 0px; margin: 0px; height: -webkit-fill-available;">
            <div class="row" style="height: 100%; width: 100%;padding: 0px; margin: 0px;">
                <div class="col-sm-4 col-md-3 col-lg-2" style="padding: 10px; margin-top: 0px; background-color: #b3d9ff; height: -webkit-fill-available;">
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
                                <a href="wardenRemoveStudent.jsp" class="nav-link active"><i uk-icon="icon: close"></i>
                                    Remove Student</a>
                            </li>
                            <li class="nav-item">
                                <a href="" class="nav-link"><i class="fe fe-file"></i> View Report</a>
                            </li>
                            <li class="nav-item">
                                <a href="wardenEditProfile.jsp" class="nav-link"><i class="fe fe-user"></i> Edit
                                    Profile</a>
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
                <div class="col-sm col-md col-lg" style="margin-top: 1%; padding-left: 10%; width: 100%;">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">

                                <div class="card" style="margin: 0.05rem;  padding-top: 0.75rem; height: 75vh; width: 61vw; position: inherit;">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-outline table-vcenter table-hcenter card-table">
                                            <thead>
                                                <tr>
                                                    <th>Role</th>
                                                    <th>Name</th>
                                                    <th>Enrollment No</th>
                                                    <th>Contact</th>
                                                    <th>Email</th>
                                                    <th>Branch</th>
                                                    <th></th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Student</td>
                                                    <td>A. A. Patel</td>
                                                    <td>160170116100</td>
                                                    <td>8888888888</td>
                                                    <td>aapatel@email.com</td>
                                                    <td>Information Technology</td>
                                                    <td style="padding: 0px; margin: 1px;">
                                                        <ul class="uk-iconnav">
                                                            <li>
                                                                <div uk-lightbox>
                                                                    <a href="viewButtonStudent.jsp" uk-icon="icon: push"></a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>

                                                    <td style="padding: 0px;">
                                                        <ul class="uk-iconnav">
                                                            <li><a href="#" uk-icon="icon: close"></a></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 			</div>
							</div>
						</div>
					</div>

				</div> -->
    </div>
    </div>
    </div>
</body>

</html>