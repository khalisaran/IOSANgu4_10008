import { NgModule } from '@angular/core';
import { RouterModule } from '@angular/router';
import { Ng2Bs3ModalModule } from 'ng2-bs3-modal/ng2-bs3-modal';
import { Screen_44150_deskengComponent } from './screen_44150_deskeng.component';
import { FormsModule } from '@angular/forms';
import { MobileAndService } from './mobileand.service';

@NgModule({
    declarations: [
        Screen_44150_deskengComponent
    ],
    imports: [
        FormsModule,
        RouterModule.forChild([
            { path: 'Screen_44150_deskeng', component: Screen_44150_deskengComponent}
        ]),
        Ng2Bs3ModalModule
    ],
    providers:[
        MobileAndService
    ]
})

export class MobileAndModule {

}