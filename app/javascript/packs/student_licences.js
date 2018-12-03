import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
Vue.use(VueAxios, axios)
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('student_licences_form')) {
  var app = new Vue({
    el: '#student_licences_form',
    data: {
      expirationDateValue: document.getElementById('student_licences_form').getAttribute('data-expiration-date'),
      licenceTypeValue: document.getElementById('student_licences_form').getAttribute('data-licence-type'),
      expeditionDateValue: document.getElementById('student_licences_form').getAttribute('data-expedition-date'),
    },
    validations: {
      expirationDateValue: {
        required
      },
      licenceTypeValue: {
        required
      },      
      expeditionDateValue: {
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
