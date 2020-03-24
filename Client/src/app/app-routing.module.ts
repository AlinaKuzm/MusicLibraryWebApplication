import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {TableTracksComponent} from './table-tracks/table-tracks.component';
import {TableArtistComponent} from './table-artist/table-artist.component';
import {TableGenreComponent} from './table-genre/table-genre.component';
import {AddArtistComponent} from "./add-artist/add-artist.component";
import {AddTrackComponent} from "./add-track/add-track.component";
import {AddGenreComponent} from "./add-genre/add-genre.component";


// const itemRoutes: Routes = [
//   { path: 'add_artist', component:  AddArtistComponent}
//
// ];

const routes: Routes = [
  {path: 'track', component: TableTracksComponent  },
  {path: 'artist', component: TableArtistComponent},
  {path: 'genre', component: TableGenreComponent},
  {path: 'add_artist', component:  AddArtistComponent},
  {path: 'add_track', component: AddTrackComponent},
  {path: 'add_genre', component: AddGenreComponent},
  { path: 'add_artist', component:  AddArtistComponent},
  {path: '', redirectTo: 'login', pathMatch: 'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
