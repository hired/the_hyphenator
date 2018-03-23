require 'rails_helper'

RSpec.describe ApplicationController, type: :routing do
  it { expect(get('/')).to route_to('application#index') }

  it { expect(get('/my-route')).to route_to('application#index') }
  it { expect(put('/my-route')).to route_to('application#index') }
  it { expect(post('/my-route')).to route_to('application#index') }
  it { expect(patch('/my-route')).to route_to('application#index') }
  it { expect(delete('/my-route')).to route_to('application#index') }

  it { expect(test_route_path).to eq('/my-route-2') }

  # resources

  it { expect(get('/phish-songs')).to route_to('phish_songs#index') }

  # URL helpers
  it { expect(phish_songs_path).to eq('/phish-songs') }
  it { expect(new_phish_song_path).to eq('/phish-songs/new') }
  it { expect(edit_phish_song_path(1)).to eq('/phish-songs/1/edit') }
  it { expect(phish_song_path(1)).to eq('/phish-songs/1') }

  # with underscored params
  it { expect(get('/phish-covers/1')).to route_to('phish_songs#show', phish_song_id: '1') }
  it { expect(get('/phish-covers/1?year_id=1')).to route_to('phish_songs#show', phish_song_id: '1', year_id: '1') }
  it { expect(has_param_path(1)).to eq('/phish-covers/1?year_id=1') }

  # namespaced
  it { expect(jam_bands_phish_songs_path).to eq('/jam-bands/phish-songs') }
end