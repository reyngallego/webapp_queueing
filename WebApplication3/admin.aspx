﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication3.admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"/>

    <link rel="stylesheet" type="text/css" href="styles/admin.css" />
  <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- Popper.js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/videos.js"></script>
    <script type="text/javascript" src="/js/purpose.js"></script>
    <script type="text/javascript" src="/js/admin.js"></script>


</head>

<body>
 
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Pup Paranaque Campus Queue Management System</a>
        </nav>

        <div class="container mt-4">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#employees">Employees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#reports">Reports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#purpose">Purpose</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="tab" href="#videos">Videos</a>
                </li>
                 <li class="nav-item">
                     <a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
                </li>
            </ul>

            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="logoutModalLabel">Logout Confirmation</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to log out of your session?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="confirmLogoutBtn">Logout</button>
            </div>
        </div>
    </div>
</div>

            <div class="tab-content mt-2">
               <div id="employees" class="tab-pane fade show active">
               <h2>Employee Management</h2>
                  <button type="button" id="add-employee-button" class="btn btn-primary" data-toggle="modal" data-target="#addEmployeeModal">Add Employee</button>

                   <div class="modal fade" id="addEmployeeModal" tabindex="-1" role="dialog" aria-labelledby="addEmployeeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addEmployeeModalLabel">Add Employee</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
               <!-- Add form fields for adding a new employee -->
          <div class="form-group">
    <label for="add-username-input">Username:</label>
    <input type="text" class="form-control" id="add-username-input" />
</div>
          <div class="form-group">
    <label for="add-password-input">Password:</label>
    <input type="password" class="form-control" id="add-password-input" />
</div>
          <div class="form-group">
    <label for="add-confirm-password-input">Confirm Password:</label>
    <input type="password" class="form-control" id="add-confirm-password-input" />
</div>
           <div class="form-group">
    <label for="add-firstname-input">First Name:</label>
    <input type="text" class="form-control" id="add-firstname-input" />
</div>
<div class="form-group">
    <label for="add-lastname-input">Last Name:</label>
    <input type="text" class="form-control" id="add-lastname-input" />
</div>
<div class="form-group">
    <label for="add-department-input">Department:</label>
    <select class="form-control" id="add-department-input">
        <option value="director">Director</option>
        <option value="studentaffairsandservices">Student Affairs and Services</option>
        <option value="registrar">Registrar</option>
        <option value="cashier">Cashier</option>
    </select>
</div>
<div class="form-group">
  <!-- incase have a profile -->
</div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="add-save-button">Add Employee</button>
            </div>
        </div>
    </div>
</div>
                   <!-- Edit Employee Modal -->
                   <div class="modal fade" id="editEmployeeModal" tabindex="-1" role="dialog" aria-labelledby="editEmployeeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editEmployeeModalLabel">Edit Employee</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Edit form fields go here -->
                <div class="form-group">
                    <label for="edit-username-input">Username:</label>
                    <input type="text" class="form-control" id="edit-username-input"/>
                </div>
                <div class="form-group">
            
        </div>
        <div class="form-group">
            <label for="edit-new-password-input">New Password:</label>
            <input type="password" class="form-control" id="edit-new-password-input" />
        </div>
        <div class="form-group">
            <label for="edit-confirm-password-input">Confirm Password:</label>
            <input type="password" class="form-control" id="edit-confirm-password-input" />
        </div>
                <div class="form-group">
                    <label for="edit-firstname-input">First Name:</label>
                    <input type="text" class="form-control" id="edit-firstname-input"/>
                </div>
                <div class="form-group">
                    <label for="edit-lastname-input">Last Name:</label>
                    <input type="text" class="form-control" id="edit-lastname-input"/>
                </div>
                <div class="form-group">
               <label for="edit-department-input">Department:</label>
                <select class="form-control" id="edit-department-input">
                <option value="director">Director</option>
                <option value="student_affairs">Student Affairs and Services</option>
                <option value="registrar">Registrar</option>
                <option value="cashier">Cashier</option>
                </select>
                </div>
                <div class="form-group">
                    
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" id="edit-save-button">Save Changes</button>
            </div>
        </div>
    </div>
</div>
                   <!-- Delete Employee Modal -->
   <div class="modal fade" id="deleteEmployeeModal" tabindex="-1" role="dialog" aria-labelledby="deleteEmployeeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteEmployeeModalLabel">Delete Employee</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p>Are you sure you want to delete this employee?</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-danger" id="confirm-delete-button">Delete</button>
            </div>
        </div>
    </div>
</div>
               <table class="table table-bordered">
             <thead>
              <tr>
                <th>ID</th>
                <th>Username</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Department</th>
                <th>Image</th>
                <th>Actions</th>

              </tr>
           </thead>
           <tbody id="employee-list">
            <!-- Employee data will be displayed here -->
        </tbody>
    </table>
</div>
                <div id="reports" class="tab-pane fade">
                    <!-- Implement your reports here -->
                </div>
                <div id="purpose" class="tab-pane fade">
                   <h2>Purpose Management</h2>
    
    <!-- Table to display purpose data -->
    <table class="table table-bordered" id="purpose-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Purpose</th>
            </tr>
        </thead>
        <tbody id="purpose-list">
            <!-- Purpose data will be displayed here -->
        </tbody>
    </table>
                </div>
           <div id="videos" class="tab-pane fade">
    <h2>Video Management</h2>

    <button type="button" id="upload-video-button" class="btn btn-primary" data-toggle="modal" data-target="#uploadVideoModal">Upload Video</button>

    <!-- Video Upload Modal -->
    <div class="modal fade" id="uploadVideoModal" tabindex="-1" role="dialog" aria-labelledby="uploadVideoModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="uploadVideoModalLabel">Upload Video</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="uploadVideoForm">
                        <div class="form-group">
                            <label for="videoNameInput">Video Name:</label>
                            <input type="text" class="form-control" id="videoNameInput"required />
                        </div>
                        <div class="form-group">
                            <label for="videoDescriptionInput">Description:</label>
                            <textarea class="form-control" id="videoDescriptionInput" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="videoFileInput">Select Video:</label>
                            <input type="file" class="form-control-file" id="videoFileInput" accept="video/*" required />
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                 <button type="button" class="btn btn-primary" id="submitVideoButton">Upload Video</button>
                </div>
            </div>
        </div>
    </div>
               <!-- Loading Modal -->
<div class="modal fade" id="loadingModal" tabindex="-1" role="dialog" aria-labelledby="loadingModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loadingModalLabel">Uploading Video</h5>
            </div>
            <div class="modal-body">
                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
                </div>
            </div>
        </div>
    </div>
</div>

               <div class="modal fade" id="videoPlayerModal" tabindex="-1" role="dialog" aria-labelledby="videoPlayerModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="videoPlayerModalLabel">Video Player</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Video player goes here -->
                <video id="videoPlayer" controls style="width: 100%;">
                    Your browser does not support the video tag.
                </video>
            </div>
        </div>
    </div>
</div>
    <!-- Video Table -->
    <table class="table table-bordered mt-3" id="video-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Video Name</th>
                <th>Description</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody id="video-list">
            <!-- Video data will be displayed here -->
        </tbody>
    </table>
</div>
            </div>
        </div>
    </form>
</body>
</html>