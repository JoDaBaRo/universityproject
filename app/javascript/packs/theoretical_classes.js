import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('theoretical_classes_form')) {
  var app = new Vue({
    el: '#theoretical_classes_form',
    data: {
      descriptionValue: document.getElementById('theoretical_classes_form').getAttribute('data-description'),
      classLengthValue: document.getElementById('theoretical_classes_form').getAttribute('data-class-length'),
    },
    validations: {
      descriptionValue: {
        required
      },
      classLengthValue: {
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
