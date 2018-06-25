<form action="" method="post" enctype="multipart/form-data" id="application-form">
    <div class="card mb-3 p-3" id="form-part-1">
      <div class="card-block">
        <div class="form-group row">
          <div class="col-sm-8 col-sm-offset-2">
            <label class="form-control-label" for="first-name">First Name</label>
            <input class="form-control" type="text" placeholder="Enter your first name" id="first-name" name="a-first-name">
          </div>
          <div class="col-sm-8 col-sm-offset-2">
            <label class="form-control-label" for="last-name">Last Name</label>
            <input class="form-control" type="text" placeholder="Enter your last name" id="last-name" name="a-last-name">
          </div>
        </div>
        
        <div class="form-group row">
          <div class="col-sm-8 col-sm-offset-2">
            <label class="form-control-label" for="email">Email</label>
            <input class="form-control" type="text" placeholder="Enter your email" id="email" name="a-email">
          </div>
          <div class="col-sm-8 col-sm-offset-2">
            <label class="form-control-label" for="dob">Subject</label>
            <textarea class="form-control" placeholder="Subject" id="describe-text" name="a-describe-text" rows="4"></textarea>
          </div>
        </div>
      </div>
    </div>
    <br>
    <div class="col-sm-6 col-sm-offset-5">
      <input type="submit" name="submit" value="submit" class="btn btn-info" onclick="return validateApplicationForm()">  
    </div>
    <br>
</form>