import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('general_costs_form')) {
  var app = new Vue({
    el: '#general_costs_form',
    data: {
      descriptionValue: document.getElementById('general_costs_form').getAttribute('data-description'),
      valueValue: document.getElementById('general_costs_form').getAttribute('data-value'),
    },
    validations: {
      descriptionValue: {
        required
      },
      valueValue: {
        required
      }
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
