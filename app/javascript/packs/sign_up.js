import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required, email, minLength, sameAs } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('sign_up_form')) {
  var app = new Vue({
    el: '#sign_up_form',
    data: {
      emailValue: '',
      nameValue: '',
      passwordValue: '',
      passwordConfirmationValue: ''
    },
    validations: {
      emailValue: {
        required,
        email
      },
      nameValue: {
        required
      },
      passwordValue: {
        required,
        minLength: minLength(8)
      },
      passwordConfirmationValue: {
        sameAsPassword: sameAs('passwordValue')
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
