module Formulas
  class Search < Formula
    SEARCH_BOX        = { id: 'gbqfq'     }
    SEARCH_BOX_SUBMIT = { id: 'gbqfb'     }
    TOP_SEARCH_RESULT = { css: '#rso .g'  }

    def initialize(driver)
      super
      visit
      verify_page
    end

    def for(search_term)
      type SEARCH_BOX, search_term
      click_on SEARCH_BOX_SUBMIT
    end

    def result_present?(search_result)
      wait_for { displayed?(TOP_SEARCH_RESULT) }
      text_of(TOP_SEARCH_RESULT).include? search_result
    end

    private

      def verify_page
        title.include?('Google').should == true
      end

  end # Search
end # Formulas
