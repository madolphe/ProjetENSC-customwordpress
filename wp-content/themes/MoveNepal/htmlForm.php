 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <form action="" method="post" enctype="multipart/form-data" id="application-form">
  <nav>
    <ol class="cd-multi-steps text-center">
      <li class="visited form-page">
        <a href="#" name="link-form-part-1">Info</a>
      </li>
      <li class="form-page">
        <a href="#" name="link-form-part-2">Projects</a>
      </li>
      <li class="form-page">
        <a href="#" name="link-form-part-3">Description</a>
      </li>
      <li class="form-page">
        <a href="#" name="link-form-part-4">Contacts</a>
      </li>
      <li class="form-page">
        <a href="#" name="link-form-part-5">Done!</a>
      </li>
    </ol>
  </nav>

    <div class="card mb-3 p-3" id="form-part-1">
      <h2 class="card-title">Information about who you are</h2>
      <div class="card-block">
        <div class="form-group row">
          <div class="col-md-6">
            <label class="form-control-label" for="first-name">First Name</label>
            <input class="form-control" type="text" placeholder="Enter your first name" id="first-name" name="a-first-name">
          </div>
          <div class="col-md-6">
            <label class="form-control-label" for="last-name">Last Name</label>
            <input class="form-control" type="text" placeholder="Enter your last name" id="last-name" name="a-last-name">
          </div>
        </div>
        
        <div class="form-group row">
          <div class="col-md-6">
            <label class="form-control-label" for="gender">Gender</label>
            <select class="custom-select" id="gender" name="a-gender">
              <option value="" disabled selected>Select your gender</option>
              <option>Male</option>
              <option>Female</option>
              <option>Other</option>
            </select>
          </div>
          <div class="col-md-6">
            <label class="form-control-label" for="dob">Date of Birth</label>
            <input class="form-control" type="date" id="dob" name="a-dob">
          </div>
        </div>

        <div class="form-group row">
          <div class="col-md-12">
          <label class="form-control-label" for="nationality">Nationality</label>
          <input class="form-control" type="text" placeholder="Enter your nationality" id="nationality" name="a-nationality">
        </div>
        </div>
        
        <div class="form-group row">
          <div class="col-md-12">
          <label class="form-control-label" for="phone-number">Phone Number</label>
          <input class="form-control" type="tel" placeholder="+1-(555)-555-5555" aria-describedby="phoneHelp" id="phone-number" name="a-phone-number">
          <small id="phoneHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
        </div>
      </div>
        
        <div class="form-group row">
          <div class="col-md-12">
          <label class="form-control-label" for="email">Email address</label>
          <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Enter email" id="email" name="a-email">
          <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        </div>
      </div>

      <div class="row">
        <button type="button" class="offset-10 btn btn-primary btn-sm pull-right" name="link-form-part-2">Next</button>
      </div>
    </div>

    <div class="card mb-3 p-3" id="form-part-2" hidden>
      <h2 class="card-title">Information about the projects you like</h2>
      <div class="card-block">
        <label>Select the project(s) you are interested in</label>
        <?php
        $the_query = new WP_Query( array(
            'post_type' => 'projects'
        ) );

        if ($the_query->have_posts()):
          while($the_query->have_posts()): $the_query->the_post();
            ?>
            <div class="form-check ml-5">
              <label class="custom-control form-control-label custom-checkbox">
                <input class="custom-control-input" type="checkbox" name="a-select-project[]" value="<?php echo get_the_title(); ?>">
                <span class="custom-control-indicator"></span>
                <span class="custom-control-description"><?php echo get_the_title(); ?></span>
              </label>
            </div>
            <?php
          endwhile;
        endif;

        wp_reset_postdata();
        ?>

        <div class="form-group row">
          <div class="col-md-6">
            <label class="form-control-label" for="start-date">When would you like to start?</label>
            <input class="form-control" type="date" id="start-date" name="a-start-date">
          </div>
<!--           <div class="col-4">
            <label class="form-control-label" for="months">How many months?</label>
            <input class="form-control" type="number" value="0" id="months" name="a-months" readonly>
          </div> -->
          <div class="col-md-6">
            <label class="form-control-label" for="end-date">End date</label>
            <input class="form-control" type="date" value="" id="end-date" name="a-end-date">
          </div>
          <small class="form-text text-muted text-center">These dates are just to give us an idea! We will be in touch to finalize the dates :-)</small>
        </div>
      </div>

      <div class="row">
        <button type="button" class="offset-1 btn btn-primary btn-sm pull-left" name="link-form-part-1">Previous</button>
        <button type="button" class="offset-8 btn btn-primary btn-sm pull-right" name="link-form-part-3">Next</button>
      </div>
    </div>
    
    <div class="card mb-3 p-3" id="form-part-3" hidden>
      <h2 class="card-title">Describe yourself</h2>
      <div class="card-block">

        <div class="form-group row">
          <div class="col-md-12">
          <label class="form-control-label" for="inspiration-text">What inspires you to join us?</label>
          <textarea class="form-control" id="inspiration-text" name="a-inspiration-text" rows="2"></textarea>
        </div>
        </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label" for="skills-text">What specific skills will you bring and what do you hope to gain personally and professionally?</label>
          <textarea class="form-control" id="skills-text" name="a-skills-text" rows="2"></textarea>
        </div>
      </div>

        <div class="form-group row">
                    <div class="col-md-12">
        <label class="form-control-label" for="ideas-text">What kind of ideas can you bring to this project?</label>
          <textarea class="form-control" id="ideas-text" name="a-ideas-text" rows="2"></textarea>
        </div>
      </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label" for="describe-text">How would you describe yourself as a person? (What are your strengths and weaknesses?)</label>
          <textarea class="form-control" id="describe-text" name="a-describe-text" rows="2"></textarea>
        </div>
      </div>


        <div class="form-group row">
          <div class="col-md-6">
          <label class="form-control-label">Are you open and interested to learn Nepali?</label>
          <div class="pl-3 form-check form-check-inline">
            <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-learn-nepali" value="yes">
              <span class="custom-control-indicator"></span>  
              <span class="custom-control-description">Yes</span>
            </label>
                        <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-learn-nepali" value="no">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">No</span>
            </label>
          </div>
        </div>
        </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label">Do you have a disability?</label>
          <div class="pl-3 form-check form-check-inline">
            <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-disability-radio" id="disability-true" value="yes">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Yes</span>
            </label>
                        <label class="custom-control custom-radio" for="disability-false" id="nobold">
              <input class="custom-control-input" type="radio" name="a-disability-radio" id="disability-false" value="no">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">No</span>
            </label>
          </div>
        </div>
        </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label">Do you have any problems living in a family with a different religion?</label>
          <div class="pl-3 form-check form-check-inline" >
            <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" id="religion-living-radio-true" name="a-religion-living-radio" value="yes">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Yes</span>              
            </label>
                        <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" id="religion-living-radio-false" name="a-religion-living-radio" value="no">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">No</span>
            </label>
          </div>
        </div>
        </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label">Are you a vegetarian?</label>
          <div class="pl-3 form-check form-check-inline">
            <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-vegetarian-radio" value="yes">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Yes</span>              
            </label>
                        <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-vegetarian-radio" value="no">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">No</span>
            </label>
          </div>
          </div>
        </div>

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label">Have you done any volunteering in the past?</label>
          <div class="pl-3 form-check form-check-inline">
            <label class="custom-control custom-radio" id="nobold">
              <input class="custom-control-input" type="radio" name="a-volunteering-radio" id="volunteering-true" value="yes">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">Yes</span>              
            </label>
                          <input class="custom-control-input" type="radio" name="a-volunteering-radio" id="volunteering-false" value="no">
              <span class="custom-control-indicator"></span>
              <span class="custom-control-description">No</span>
            </label>
          </div>
        </div>
        </div>
      </div>
      <div class="row">
        <button type="button" class="offset-1 btn btn-primary btn-sm pull-left" name="link-form-part-2">Previous</button>
        <button type="button" class="offset-8 btn btn-primary btn-sm pull-right" name="link-form-part-4">Next</button>
      </div>
    </div>

    <div class="card mb-3 p-3" id="form-part-4" hidden>
      <h2 class="card-title">Emergency contacts</h2>
        <h5 class="card-title ml-3">Person 1</h5>
        <div class="card-block">
          <div class="form-group row">
            <div class="col-md-6">
              <label class="form-control-label" for="emergency1-first-name">First Name</label>
              <input class="form-control" type="text" placeholder="Enter the first name" id="emergency1-first-name" name="a-emergency1-first-name">
            </div>
            <div class="col-md-6">
              <label class="form-control-label" for="emergency1-last-name">Last Name</label>
              <input class="form-control" type="text" placeholder="Enter the last name" id="emergency1-last-name" name="a-emergency1-last-name">
            </div>
          </div>
          <div class="form-group row">
            <div class="col-md-6">
              <label class="form-control-label" for="emergency1-phone-number">Phone Number</label>
              <input class="form-control" type="tel" placeholder="+1-(555)-555-5555" id="emergency1-phone-number" name="a-emergency1-phone-number" aria-describedby="emergency1-phoneHelp">
              <small id="emergency1-phoneHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
            </div>
            <div class="col-md-6">
              <label class="form-control-label" for="emergency1-email">Email address</label>
              <input type="email" class="form-control" id="emergency1-email" name="a-emergency1-email" aria-describedby="emergency1-emailHelp" placeholder="Enter email">
              <small id="emergency1-emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
          </div>
        </div>
        <h5 class="card-title ml-3">Person 2</h5>
        <div class="card-block">
          <div class="form-group row">
            <div class="col-md-6">
              <label class="form-control-label" for="emergency2-first-name">First Name</label>
              <input class="form-control" type="text" placeholder="Enter the first name" id="emergency2-first-name" name="a-emergency2-first-name">
            </div>
            <div class="col-md-6">
              <label class="form-control-label" for="emergency2-last-name">Last Name</label>
              <input class="form-control" type="text" placeholder="Enter the last name" id="emergency2-last-name" name="a-emergency2-last-name">
            </div>
          </div>
          <div class="form-group row">
            <div class="col-md-6">
              <label class="form-control-label" for="emergency2-phone-number">Phone Number</label>
              <input class="form-control" type="tel" placeholder="+1-(555)-555-5555" id="emergency2-phone-number" name="a-emergency2-phone-number" aria-describedby="emergency2-phoneHelp">
              <small id="emergency2-phoneHelp" class="form-text text-muted">We'll never share your phone number with anyone else.</small>
            </div>
            <div class="col-md-6">
              <label class="form-control-label" for="emergency2-email">Email address</label>
              <input type="email" class="form-control" id="emergency2-email" name="a-emergency2-email" aria-describedby="emergency2-emailHelp" placeholder="Enter email">
              <small id="emergency2-emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
          </div>
        </div>
      <div class="row">
        <button type="button" class="offset-1 btn btn-primary btn-sm pull-left" name="link-form-part-3">Previous</button>
        <button type="button" class="offset-8 btn btn-primary btn-sm pull-right" name="link-form-part-5">Next</button>
      </div>
    </div>

    <div class="card mb-3 p-3" id="form-part-5" hidden>
      <h2 class="card-title">Almost done!</h2>
      <div class="card-block">

        <div class="form-group row">
                    <div class="col-md-12">
          <label class="form-control-label" for="heard-about-us">How did you hear about us?</label>
          <textarea class="form-control" id="heard-about-us" name="a-heard-about-us" rows="3"></textarea>
        </div>
      </div>

        <!-- besoin de trouver une solution qui mets le nom du fichier une fois uploadé -->
        <div class="form-group row">
          <div class="col-md-12">
          Select image to upload:
          <label class="custom-file col-md-3">
            <input type="file" name="a-photo" id="photo">
            <span class="form-controle-file"></span>
          </label>
          <small class="form-text text-muted">Please add one picture of yourself, which will help us when picking you up at the bus station in Pokhara.</small>
        </div>
      </div>

        <div class="form-group row">
          <div class="col-md-12">
          <label class="form-control-label" for="more-info">Anything else you'd like us to know?</label>
          <textarea class="form-control" id="more-info" name="a-more-info" rows="3"></textarea>
        </div>
      </div>

        <div class="form-group">
                    <div class="col-md-12">
          <label class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="terms-conditions">
            <span class="custom-control-indicator"></span>
            <span class="custom-control-description">I have read and I agree to the <a href="<?php echo get_template_directory_uri().'/doc/Program-Agreement-Terms-and-Conditions.pdf'; ?> " target="_blank">Terms and Conditions</a></span>
            <small class="form-text text-muted"></small>
          </label>
        </div>
      </div>

      </div>


      <div class="g-recaptcha" data-sitekey="6LcdDikUAAAAAHaxPLpFJvOF_NbRjzzliPXLDWSQ"></div>
      <br>
      <input type="submit" name="submit" value="submit" class="btn btn-primary pull-right" onclick="return validateApplicationForm()">  
      <br>
      <div class="row">
        <button type="button" class="offset-1 btn btn-primary btn-sm pull-left" name="link-form-part-4">Previous</button>
      </div>
    </div>
  </form>