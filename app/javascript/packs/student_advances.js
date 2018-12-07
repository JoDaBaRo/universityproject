import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('student_advances_form')) {

 new Vue({
    el: '#student_advances_form',
    data: {
      advanceDateValue: document.getElementById('student_advances_form').getAttribute('data-advance-date'),
      descriptionValue: document.getElementById('student_advances_form').getAttribute('data-description'),
      advanceValueValue: document.getElementById('student_advances_form').getAttribute('data-advance-value'),
    },
    validations: {
      advanceDateValue: {
        required
      },
      descriptionValue: {
        required
      },
      advanceValueValue: {
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
}
})
