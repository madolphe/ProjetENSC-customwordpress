<form action="" method="post" enctype="multipart/form-data" id="application-form">
    <div class="card mb-3 p-3" id="form-part-1">
      <div class="card-block">
        <div class="form-group row">

          <div class="col-sm-8 col-sm-offset-2">
            <div class="field">
              <label class="field-label" for="a-first-name">First Name</label>
              <input class="field-input" type="text" placeholder="" id="first-name" name="a-first-name">
            </div>
          </div>

          <div class="col-sm-8 col-sm-offset-2">
            <div class="field">
              <label class="field-label" for="a-last-name">Last Name</label>
              <input class="field-input" type="text" placeholder="" id="last-name" name="a-last-name">
            </div>
          </div>

          <div class="col-sm-8 col-sm-offset-2">
            <div class="field">
              <label class="field-label" for="a-email">Email</label>
              <input class="field-input" type="text" placeholder="" id="email" name="a-email">
            </div>
          </div>
          <div class="col-sm-8 col-sm-offset-2">
            <br/><br/>
            <textarea class="field-input-area" placeholder="Subject" id="describe-text" name="a-describe-text" rows="4"></textarea>
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

<script>
  jQuery(function($){
    $('.field-input').focus(function(){
        $(this).parent().addClass('is-focused has-label');
    })

    $('.field-input').blur(function(){
        if($(this).val() == ''){
            $(this).parent().removeClass('has-label');
        }
        $(this).parent().removeClass('is-focused');
    })
})
</script>