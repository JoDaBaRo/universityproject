import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('practical_licence_classes_form')) {
  var app = new Vue({
    el: '#practical_licence_classes_form',
    data: {
      licenceTypeValue: document.getElementById('practical_licence_classes_form').getAttribute('data-licence-type'),
    },
    validations: {
      licenceTypeValue: {
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
