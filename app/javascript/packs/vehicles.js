import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('vehicles_form')) {
  var app = new Vue({
    el: '#vehicles_form',
    data: {
      nameValue: document.getElementById('vehicles_form').getAttribute('data-name'),
      plateValue: document.getElementById('vehicles_form').getAttribute('data-plate'),
      displacementValue: document.getElementById('vehicles_form').getAttribute('data-displacement'),
      vehicleCategotyValue: document.getElementById('vehicles_form').getAttribute('data-vehicle-category-id'),
      modelYearValue: document.getElementById('vehicles_form').getAttribute('data-model-year'),
      brandValue: document.getElementById('vehicles_form').getAttribute('data-brand'),
    },
    validations: {
      plateValue: {
        required
      },
      displacementValue: {
        required
      },      
      vehicleCategotyValue: {
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
