import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('vehicle_categories_form')) {
  var app = new Vue({
    el: '#vehicle_categories_form',
    data: {
      hourlyRateValue: document.getElementById('vehicle_categories_form').getAttribute('data-hourly-rate'),
      licenceTypeValue: document.getElementById('vehicle_categories_form').getAttribute('data-licence-type-id'),
      vehicleTypeValue: document.getElementById('vehicle_categories_form').getAttribute('data-vehicle-type'),
      teachers: null,
    },
    validations: {
      hourlyRateValue: {
        required
      },
      licenceTypeValue: {
        required
      },      
      vehicleTypeValue: {
        required,
      },
    },
    methods: {
      fieldClass(element, invalid){
        var HtmlClass = 'form-control';
        if(invalid){
          HtmlClass = 'form-control is-invalid';
        }
        document.getElementById(element).className = HtmlClass;
      }
    } 
  })
}})
