import React, { Component } from 'react';
import CitiesTable from './citiesTable';
import {inject, observer} from 'mobx-react';

@inject('HousesStore')
@observer

class ListOfCities extends Component {
    constructor(props) {
        super(props);
        if(!localStorage.getItem("selectCity") || localStorage.getItem("selectCity") === 'default')
        this.props.HousesStore.retrieveData();
        else this.props.HousesStore.retrieveDataOfOneCity(this.props.HousesStore.currCity);
        this.props.HousesStore.retrieveCitiesName();
    }
    
    render() {
        return ( 
            <React.Fragment>
                <div>
                    <h2>Here is the list of all cities :</h2>
                    <CitiesTable />
                </div>
            </React.Fragment>
         );
    }
}
 
export default ListOfCities;