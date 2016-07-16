feature 'posts' do
  context 'no pictures' do
    scenario 'should display a prompt to add pictures' do
      visit '/posts'
      expect(page).to have_content 'No pictures yet'
      expect(page).to have_link 'Add a picture'
    end
  end
end
