import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('control_tests_form')) {
  var app = new Vue({
    el: '#control_tests_form',
    data: {
      descriptionValue: document.getElementById('control_tests_form').getAttribute('data-description'),
      testLengthValue: document.getElementById('control_tests_form').getAttribute('data-test-length'),
    },
    validations: {
      descriptionValue: {
        required
      },
      testLengthValue: {
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
