/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import VueRouter from 'vue-router';

window.Vue.use(VueRouter);

import NewsIndex from './components/news/NewsIndex.vue';
import NewsCreate from './components/news/NewsCreate.vue';
import NewsEdit from './components/news/NewsEdit.vue';

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('example-component', require('./components/ExampleComponent.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
const routes = [
    {path: '/', components: {newsIndex: NewsIndex}},
    {path: '/admin/news/create', component: NewsCreate, name: 'createNews'},
    {path: '/admin/news/edit/:id', component: NewsEdit, name: 'editNews'},
]

const router = new VueRouter({ routes })

const adminApp = new Vue({ router }).$mount('#adminApp')
// const adminApp = new Vue({
//     el: '#adminApp',
// });
