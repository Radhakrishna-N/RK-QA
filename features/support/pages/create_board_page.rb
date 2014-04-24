class CreateBoardPage
  include PageObject
  link(:click_on_create_board, :href => '/create_board/view')
  text_field(:board_name, :class => 'board-name')
  text_field(:board_mention, :class => 'mention')
  text_field(:board_desc, :class => 'desc')
  button(:board_save, :class => 'btn-save')

=begin
def login_page(data = {})
 populate_page_with data_for(:login_page, data)
end
=end

  def wait_for_page_load
    Watir::Wait.until{ @browser.url.include? '/create_board/view' }
  end


  def wait_for_load_hamburger_items
    sleep(10)
    #Watir::Wait.until {@browser.select(:text, "Create New Board")}
    #Watir::Wait.until {@browser.link(:href =>"/create_board/view")}
    #Watir::Wait.until{@browser.link(:text => 'Create New Board') }
    #Watir::Wait.until {@browser.p(:xpath => 'html/body/div[4]/div/nav[2]/ul/li[15]/a/div/i')}.wait_until_present
  end

  def enter_board_details (name,mention,desc)
    self.board_name = name
    self.board_mention = mention
    self.board_desc = desc
  end

  def scroll_up_page
    @browser.send_keys(:home)
  end

end