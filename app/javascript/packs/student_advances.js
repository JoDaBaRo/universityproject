import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import { required, between } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('student_advances_form')) {

 var a = new Vue({
    el: '#student_advances_form',
    data: {
      advanceDateValue: document.getElementById('student_advances_form').getAttribute('data-advance-date'),
      descriptionValue: document.getElementById('student_advances_form').getAttribute('data-description'),
      advanceValueValue: parseInt(document.getElementById('student_advances_form').getAttribute('data-advance-value')),
      costValue: document.getElementById('student_advances_form').getAttribute('data-total-cost'),
      debtValue: document.getElementById('student_advances_form').getAttribute('data-total-debt'),
    },
    validations: {
      advanceDateValue: {
        required
      },
      descriptionValue: {
        required
      },
      advanceValueValue: {
        required
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
    },
    computed: {
      boolComputed: function(){
        return parseInt(this.debtValue) >= parseInt(this.advanceValueValue)
      }
    }
  })
}
})
