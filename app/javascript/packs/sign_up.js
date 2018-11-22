import Vue from 'vue/dist/vue.esm'
import Vuelidate from 'vuelidate';
import { required, email } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: '#sign_up_form',
    data: {
      emailValue: ''
    },
    validations: {
      emailValue: {
        required,
        email
      }
    },
    methods: {
      fieldClass(element){
        var HtmlClass = 'form-control';
        if(this.$v.emailValue.$invalid){
          HtmlClass = 'form-control is-invalid';
        }
        document.getElementById(element).className = HtmlClass;
      }
    } 
  })
})

