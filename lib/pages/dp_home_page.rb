class DpHomePage
include PageObject

    #page_url ENV['URL']

    page_url"https://fleetdev.modusgo.com/#/drivers"

   #DriverPortal
    text_field       :user_name,                            :xpath => ".//*[@id='root']/div/div/div[1]/div/form/div[2]/div[1]/div/input"
    text_field       :password,                             :xpath => "//input[@type='password']"
    button           :continue,                             :class => 'box-submit'
    link             :lnk_forgot,                           :class => 'small-text'
    text_field       :int_forgot_email,                     :class => 'form-control'
    div              :txt_alert_msg,                        :class => 'alert-success'

   #ManagementPortal
    text_field       :username,                            :id => 'username_id'
    text_field       :pword,                               :id => "password_id"
    button           :btn_sign_in,                         :class => 'signin-btn'

  ##def initialize_page
    #has_expected_element?
  #end

    def login_driver_portal 
      driver_valid_credentials = TestData.driver_portal_login_details
      populate_page_with driver_valid_credentials
      continue_element.click
    end

   def login_with_invalid_credential_for_dp
     driver_invalid_credentials = TestData.dp_invalid_credentials
     populate_page_with driver_invalid_credentials
   end

  def login_management_website
    management_site_credential = TestData.management_site_credentials
    populate_page_with management_site_credential
    btn_sign_in_element.click
  end

end
