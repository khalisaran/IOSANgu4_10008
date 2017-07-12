import { Component } from '@angular/core';
import { NavController, LoadingController,NavParams,AlertController } from 'ionic-angular';
import { MobileAnd_Default_ActivityService } from '../../shared/shared';
@Component({
    templateUrl: 'screen_44200_android.page.html'
})
export class Screen_44200_androidPage{
    MobileAnd: any = {};

    constructor(private nav: NavController,public navParams: NavParams, private loadingController : LoadingController, public alertCtrl: AlertController, private mobileand_default_activityservice: MobileAnd_Default_ActivityService) { }

    ionViewDidLoad() {
    }

    createMobileAnd() {
        let loader = this.loadingController.create({
          content: 'Getting data...'
        });
        loader.present().then(() => {
          this.mobileand_default_activityservice.createMobileAnd(this.MobileAnd).subscribe(data => {
            console.log('data', data);
            loader.dismiss();
          },
          err => {
            console.log('error', err);
            loader.dismiss();
          });
        });
    }


}