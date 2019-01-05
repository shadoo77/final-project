import React, { Component } from 'react';
import {inject, observer} from 'mobx-react';

@inject('HousesStore')
@observer
class Select extends Component {
    constructor(props) {
        super(props);
        this.state = {
            selectCity: localStorage.getItem("selectCity") || 'default',
        };
    }

    handleChange = e => {
        this.props.HousesStore.resetLimit();
        this.setState({[e.target.name]: e.target.value});
        localStorage.setItem("selectCity", e.target.value);
        if(e.target.value === 'default') {
            this.props.HousesStore.retrieveData();
        }else {
            this.props.HousesStore.retrieveDataOfOneCity(e.target.value);
        }
        this.props.HousesStore.changeCurrCity(e.target.value)
        //history.push(e.target.value !== 'default' ? `/list?city=${e.target.value}`: '/list');
    }

    extractOptions() {
        const {HousesStore} = this.props;
        
        return HousesStore.cities.map((el, index) =>
                            <option key={'option' + index} value={el.location_city}>
                                {el.location_city + ' (' + el.Count + ')'}
                            </option>
                        );
    }

    render() { 
        const totalNumber = this.props.HousesStore.totalNumber;
        return ( 
            <select name={this.props.name} 
                value={this.state.selectCity} 
                onChange={this.handleChange}
            >
                <option value='default'>All cities ({totalNumber})</option>
                {this.extractOptions()}
            </select>
         );
    }
}
 
export default Select;