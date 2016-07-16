feature 'posts' do
  context 'no pictures' do
    scenario 'should display a prompt to add pictures' do
      visit '/posts'
      expect(page).to have_content 'No pictures yet'
      expect(page).to have_link 'Add a picture'
    end
  end
  context 'some pictures' do
    scenario 'user should be able to add pictures' do
      visit '/posts'
      click_link 'Add a picture'
      expect(page).to have_content 'Image'
    end
  end
end
