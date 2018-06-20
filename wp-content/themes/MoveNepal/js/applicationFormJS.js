function goToByScroll(id){
      // Remove "link" from the ID
    id = id.replace("link", "");
      // Scroll
    jQuery('html,body').animate({
        scrollTop: jQuery("#"+id).offset().top},
        'slow');
}

function validateApplicationForm(){
  var formValid = true;

  var partElements = [
    ["#first-name",'#last-name','#gender','#dob','#nationality','#phone-number','#email'],
    ["#start-date", "#end-date"],
    ["#inspiration-text", "#skills-text", "#ideas-text", "#describe-text"],
    ['#emergency1-first-name', '#emergency1-last-name', '#emergency1-phone-number', '#emergency1-email', '#emergency2-first-name', '#emergency2-last-name', '#emergency2-phone-number', '#emergency2-email'],
    ['#heard-about-us', '#terms-conditions']
  ]; // need to fix learn-nepali and dob and radios and englishlevel
  // volunteering and disability text not mandatory and more-info
  //photo?

  var partTitle = [
    "Info",
    "Projects",
    "Description",
    "Contacts",
    "Done!"
  ];

  jQuery('.form-page').each(function(el){
    var id = jQuery(this).children(':first').attr('name');
    var num = id[id.length - 1];

    var valid = true;
    // on vérifie pas la dob parce que la saisie sera bonne d'office vu le type de saisie
    partElements[num - 1].forEach(function(e){

        
      if (!jQuery(e).hasClass('form-control-success')){
        console.log(e);
        fieldWarning(e, false);
        valid = false;
        formValid = false;
      }
    });

    if (valid){
      jQuery('a[name=link-form-part-' + num).html('<i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;' + partTitle[num - 1]);
    } else {
      jQuery('a[name=link-form-part-' + num).html('<i class="fa fa-exclamation" aria-hidden="true"></i>&nbsp;' + partTitle[num - 1]);
    }

  });

  if (!formValid){
    goToByScroll('application-form');
  }

  return formValid; //true for testing
}

function validateApplicationFormVisited(){
  var formValid = true;

  var partElements = [
    ["#first-name",'#last-name','#gender','#dob','#nationality','#phone-number','#email'],
    ["#start-date", "#end-date"],
    ["#inspiration-text", "#skills-text", "#ideas-text", "#describe-text"],
    ['#emergency1-first-name', '#emergency1-last-name', '#emergency1-phone-number', '#emergency1-email', '#emergency2-first-name', '#emergency2-last-name', '#emergency2-phone-number', '#emergency2-email'],
    ['#heard-about-us', '#terms-conditions']
  ]; // need to fix learn-nepali and dob and radios and englishlevel
  // volunteering and disability text not mandatory and more-info

  var partTitle = [
    "Info",
    "Projects",
    "Description",
    "Contacts",
    "Done!"
  ];

  // #f0ad4e

  jQuery('.visited:not(.current)').each(function(el){
    var id = jQuery(this).children(':first').attr('name');
    var num = id[id.length - 1];

    var valid = true;
    // on vérifie pas la dob parce que la saisie sera bonne d'office vu le type de saisie
    partElements[num - 1].forEach(function(e){
      if (!jQuery(e).hasClass('form-control-success')){
        fieldWarning(e, false);
        valid = false;
        formValid = false;
      }
    });
      if (valid){
        jQuery('a[name=link-form-part-' + num).html('<i class="fa fa-check-square-o" aria-hidden="true"></i>&nbsp;' + partTitle[num - 1]);
      } else {
        jQuery('a[name=link-form-part-' + num).html('<i class="fa fa-exclamation" aria-hidden="true"></i>&nbsp;' + partTitle[num - 1]);
      }

  });

  return formValid;
}

function checkText(element){
  jQuery(element).change(function(e){
    if (this.value == ""){
      fieldWarning(element, false);
    } else {
      fieldSuccess(element, false);
    }
  });
}

function checkDate(element){
  jQuery(element).change(function(e){
    if (Date.parse(jQuery(element).val())){
      fieldSuccess(element, false);
    } else {
      fieldWarning(element, false);
    }
  });
}

function checkPhoneNumber(element){
  jQuery(element).change(function(e){
    var emailRegex = /\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*\d\W*(\d{1,2})$/;
    if (emailRegex.test(this.value)){
      fieldSuccess(element, false);
    } else {
      fieldWarning(element, false);
    }
  });
}

function checkEmail(element){
  jQuery(element).change(function(e){
    var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if (emailRegex.test(this.value)){
      fieldSuccess(element, false);
    } else {
      fieldWarning(element, false);
    }
  });
}

function checkRadio(element){
  jQuery(element).change(function(e){
    if (this.value == ""){
      fieldWarning(element, true);
    } else {
      fieldSuccess(element, true);
    }
  });
}

function checkCheck(element){
  jQuery(element).change(function(e){
    if (!this.checked){
    jQuery(element).removeClass('form-control-success');
    jQuery(element).addClass('form-control-warning');
    jQuery(element).parent().parent().removeClass('has-success');
    jQuery(element).parent().parent().addClass('has-warning'); 
    } else {
    jQuery(element).removeClass('form-control-warning');
    jQuery(element).addClass('form-control-success');
    jQuery(element).parent().parent().removeClass('has-warning');
    jQuery(element).parent().parent().addClass('has-success');
    }
  });
}

function fieldWarning(element, isRadio){
  jQuery(element).removeClass('form-control-success');
  jQuery(element).addClass('form-control-warning');
  if (isRadio){  
    jQuery(element).parent().parent().parent().removeClass('has-success');
    jQuery(element).parent().parent().parent().addClass('has-warning'); 
  } else{
    jQuery(element).parent().removeClass('has-success');
    jQuery(element).parent().addClass('has-warning');
  }
}

function fieldSuccess(element, isRadio){
  jQuery(element).removeClass('form-control-warning');
  jQuery(element).addClass('form-control-success');
  if (isRadio){
    jQuery(element).parent().parent().parent().removeClass('has-warning');
    jQuery(element).parent().parent().parent().addClass('has-success');
  } else{
    jQuery(element).parent().removeClass('has-warning');
    jQuery(element).parent().addClass('has-success');
  }
}



jQuery(document).ready(function() {

// APPLICATION FORM

  // application form pagination
  var activePart = 1;
  var visited = 1;

  for(var i = 1; i <= 5; i++){
    jQuery("[name='link-form-part-" + i + "']").click(function(e){
      var num = jQuery(this).attr('name')[jQuery(this).attr('name').length - 1];

      jQuery("li [name='link-form-part-" + activePart + "']").parent().removeClass('current');
      jQuery("li [name='link-form-part-" + num + "']").parent().addClass('current visited');

      jQuery('#form-part-' + activePart).attr('hidden', true);
      jQuery('#form-part-' + num).removeAttr('hidden');
      activePart = num;

      e.preventDefault();
      if (this.tagName == 'BUTTON'){
        goToByScroll('page-title');
      }

      // validatePart1();
      validateApplicationFormVisited();
    });
  }


// application form radio -> text
  var disabilityRadio = jQuery('input[name=a-disability-radio]');
  var disabilityText = jQuery('#disability-div');
  disabilityRadio.change(function(){
    if (this.value=='yes'){
      disabilityText.removeClass('hidden-xs-up');
    } else{
      disabilityText.addClass('hidden-xs-up');
    }
  });

  var volunteeringRadio = jQuery('input[name=a-volunteering-radio]');
  var volunteeringText = jQuery('#volunteering-div');

  volunteeringRadio.change(function(){
    if (this.value=='yes'){
      volunteeringText.removeClass('hidden-xs-up');
    } else{
      volunteeringText.addClass('hidden-xs-up');
    }
  });


// check fields onchange

  // PAGE 1
    checkText('#first-name');
    checkText('#last-name');
    checkText('#gender');
    checkDate('#dob');
    checkText('#nationality');
    checkPhoneNumber('#phone-number');
    checkEmail('#email');

  // PAGE 2
    // How to validate checkbox?

        // <label style="color:#f0ad4e">Select the project(s) you are interested in&nbsp;<i class="fa fa-exclamation-triangle" aria-hidden="true"></i></label>
    // jQuery('[name="a-select-project[]"]').change(function(e){
    //   console.log(this);
    //   if (this.checked){
    //     jQuery(this).parent().parent().addClass('has-success');
    //   } else {
    //     jQuery(this).parent().parent().removeClass('has-success');
    //   }
    // });

    // var checkboxValid = false;
    // var options = document.getElementsByName("a-select-project[]");
    // options.forEach(function(e){
    //   if (e.checked){
    //     checkboxValid = true;
    //   }
    // });
    // if (checkboxValid){

    // } else {

    // }
    checkDate('#start-date');
    checkDate('#end-date');

  // PAGE 3
    checkText('#inspiration-text');
    checkText('#skills-text');
    checkText('#ideas-text');
    checkText('#describe-text');
    // How to validate engish level ?
    checkRadio('[name=a-learn-nepali]');
    checkRadio('[name=a-disability-radio]');
    // checkText('#disability-text'); ?
    checkRadio('[name=a-religion-living-radio]');
    checkRadio('[name=a-vegetarian-radio]');
    checkRadio('[name=a-volunteering-radio]');
    // checkText('#volunteering-text'); ?

  // PAGE 4
    checkText('#emergency1-first-name');
    checkText('#emergency1-last-name');
    checkPhoneNumber('#emergency1-phone-number');
    checkEmail('#emergency1-email');
    checkText('#emergency2-first-name');
    checkText('#emergency2-last-name');
    checkPhoneNumber('#emergency2-phone-number');
    checkEmail('#emergency2-email');

  // PAGE 5
    checkText('#heard-about-us');
    // How to validate photo ?
    // No need to validate last text because not mandatory
    checkCheck('#terms-conditions');

});
