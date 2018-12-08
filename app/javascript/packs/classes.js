import Vue from 'vue/dist/vue.esm';
import Vuelidate from 'vuelidate';
import axios from 'axios';
import VueAxios from 'vue-axios';
import { required } from 'vuelidate/lib/validators';
Vue.use(Vuelidate);
Vue.use(VueAxios, axios)
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('classes_form')) {

 new Vue({
    el: '#classes_form',
    data: {
      classTypeValue: document.getElementById('classes_form').getAttribute('data-class-type'),
      theorethicalTopicValue: '',
      classDateValue: '',
      practicalTopicValue: '',
      licenceTypeValue: '',
      practicalTeacherValue: '',
      studentValue: '',
      students: [],
      teachers: [],
      topics: [],
    },
    validations: {

    },
    methods: {
      fieldClass(element, invalid){
        var HtmlClass = 'form-control';
        if(invalid){
          HtmlClass = 'form-control is-invalid';
        }
        document.getElementById(element).className = HtmlClass;
      },

      fetchTopics() {
        this.topics =[]
        this.axios.get('/api/classes/' + this.classTypeValue).then(response => (this.topics = response.data));
        window.selectpickerRefresh();
      },
      fetchTeachers() {
        this.axios.get('/api/teachers/' + this.licenceTypeValue).then(response => (this.teachers = response.data));
        window.selectpickerRefresh();
      },
      fetchStudents() {
        this.axios.get('/api/students/' + this.practicalTeacherValue).then(response => (this.students = response.data));
        window.selectpickerRefresh();
      }
    }
  })
}
})
