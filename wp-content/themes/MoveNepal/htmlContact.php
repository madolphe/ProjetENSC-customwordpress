<form action="" method="post" enctype="multipart/form-data" id="application-form">
    <div class="card mb-3 p-3" id="form-part-1">
      <h2 class="card-title">Information about who you are</h2>
      <div class="card-block">
        <div class="form-group row">
          <div class="col-6">
            <label class="form-control-label" for="first-name">First Name</label>
            <input class="form-control" type="text" placeholder="Enter your first name" id="first-name" name="a-first-name">
          </div>
          <div class="col-6">
            <label class="form-control-label" for="last-name">Last Name</label>
            <input class="form-control" type="text" placeholder="Enter your last name" id="last-name" name="a-last-name">
          </div>
        </div>
        
        <div class="form-group row">
          <div class="col-6">
            <label class="form-control-label" for="gender">Gender</label>
            <select class="custom-select" id="gender" name="a-gender">
              <option value="" disabled selected>Select your gender</option>
              <option>Male</option>
              <option>Female</option>
              <option>Other</option>
            </select>
          </div>
          <div class="col-6">
            <label class="form-control-label" for="dob">Date of Birth</label>
            <input class="form-control" type="date" id="dob" name="a-dob">
          </div>
        </div>
      </div>
      </div>
      <br>
      <input type="submit" name="submit" value="submit" class="btn btn-primary" onclick="return validateApplicationForm()">  
      <br>
    </div>
  </form>