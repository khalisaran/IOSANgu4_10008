import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs/Rx';
import { SharedService } from '../shared/shared.service';
import { IMobileAnd } from './mobileand';

@Injectable()
export class MobileAndService {
    constructor(private _http : Http, private shared_service: SharedService){}

    private handleError(error : Response) {
        console.error(error);
        return Observable.throw(error.json().error || 'Server error');
    }

    create_MobileAnd(mobileand: IMobileAnd): Observable<IMobileAnd>{
        return this._http.post(`${this.shared_service.baseUrl}/MobileAnd_Default_Activity/create_MobileAnd`,mobileand)
            .map((response : Response) => <IMobileAnd> response.json())
            .do(data => console.log('All: ' + JSON.stringify(data)))
            .catch(this.handleError);
    }
    update_MobileAnd(mobileand: IMobileAnd): Observable<IMobileAnd>{
        return this._http.put(`${this.shared_service.baseUrl}/MobileAnd_Default_Activity/update_MobileAnd`,mobileand)
            .map((response : Response) => <IMobileAnd> response.json())
            .do(data => console.log('All: ' + JSON.stringify(data)))
            .catch(this.handleError);
    }
    search_for_update_MobileAnd(mobileand_id: number): Observable<IMobileAnd>{
        return this._http.get(`${this.shared_service.baseUrl}/MobileAnd_Default_Activity/search_for_update_MobileAnd/${mobileand_id}`)
            .map((response : Response) => <IMobileAnd> response.json())
            .do(data => console.log('All: ' + JSON.stringify(data)))
            .catch(this.handleError);
    }
    delete_MobileAnd(mobileand: IMobileAnd): Observable<IMobileAnd>{
        return this._http.delete(`${this.shared_service.baseUrl}/MobileAnd_Default_Activity/delete_MobileAnd/${mobileand.id}`)
            .map((response : Response) => <IMobileAnd> response.json())
            .do(data => console.log('All: ' + JSON.stringify(data)))
            .catch(this.handleError);
    }
    get_all_MobileAnd(): Observable<IMobileAnd[]>{
        return this._http.get(`${this.shared_service.baseUrl}/MobileAnd_Default_Activity/get_all_MobileAnd`)
            .map((response : Response) => <IMobileAnd[]> response.json())
            .do(data => console.log('All: ' + JSON.stringify(data)))
            .catch(this.handleError);
    }
}