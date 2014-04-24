class WallPage

  include PageObject
  link(:proceed_to_add_school, :href => '/wizards/schools/search')

  def wait_for_load
    Watir::Wait.until { @browser.ul(:class => 'wall').exists? }
  end
  
end