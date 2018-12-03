import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('tests_form')) {
  var app = new Vue({
    el: '#tests_form',
    data: {
      testTypeValue: document.getElementById('tests_form').getAttribute('data-test-type'),
      testLengthValue: document.getElementById('tests_form').getAttribute('data-test-length'),
      testvalueValue: document.getElementById('tests_form').getAttribute('data-test-value'),
    },
    validations: {
      testTypeValue: {
        required
      },
      testLengthValue: {
        required
      },
      testvalueValue: {
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
