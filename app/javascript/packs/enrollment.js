import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios'
import VueAxios from 'vue-axios'
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
Vue.use(VueAxios, axios)
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('enrollment_form')) {
  var app = new Vue({
    el: '#enrollment_form',
    data: {
      enrollDateValue: document.getElementById('enrollment_form').getAttribute('data-name'),
      licenceTypeValue: document.getElementById('enrollment_form').getAttribute('data-last-name'),
      categoryTeacherValue: document.getElementById('enrollment_form').getAttribute('data-id-number'),
      teachers: null,
    },
    validations: {
      enrollDateValue: {
        required
      },
      licenceTypeValue: {
        required
      },      
      categoryTeacherValue: {
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
      },

      fetchTeachers() {
        this.axios.get('/api/teachers/' + this.licenceTypeValue).then(response => (this.teachers = response.data))
      }
    } 
  })
}})
