import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('person_form')) {
  var app = new Vue({
    el: '#person_form',
    data: {
      nameValue: document.getElementById('person_form').getAttribute('data-name'),
      lastNameValue: document.getElementById('person_form').getAttribute('data-last-name'),
      idNumberValue: document.getElementById('person_form').getAttribute('data-id-number'),
      addressValue: document.getElementById('person_form').getAttribute('data-address'),
      roleValue: document.getElementById('person_form').getAttribute('data-address')
    },
    validations: {
      nameValue: {
        required
      },
      lastNameValue: {
        required
      },      
      idNumberValue: {
        required,
      },
      addressValue: {
        required,
      },
      roleValue: {
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
