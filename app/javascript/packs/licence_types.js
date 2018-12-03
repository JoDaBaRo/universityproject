import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('licence_types_form')) {
  var app = new Vue({
    el: '#licence_types_form',
    data: {
      categoryValue: document.getElementById('licence_types_form').getAttribute('data-category'),
      allowedVehiclesValue: document.getElementById('licence_types_form').getAttribute('data-allowed-vehicles'),
      practicalHoursValue: document.getElementById('licence_types_form').getAttribute('data-practical-hours'),
      serviceTypeValue: document.getElementById('licence_types_form').getAttribute('data-service-type'),
      licenceCostValue: document.getElementById('licence_types_form').getAttribute('data-licence-cost')
    },
    validations: {
      categoryValue: {
        required
      },
      allowedVehiclesValue: {
        required
      },      
      practicalHoursValue: {
        required,
      },
      serviceTypeValue: {
        required,
      },
      licenceCostValue: {
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
