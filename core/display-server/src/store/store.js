import Vue from 'vue'
import Vuex from 'vuex'

// import deconstructed store objects
import getters from './getters'
import actions from './actions'
import mutations from './mutations'

// create vuex object
Vue.use(Vuex)

// export instantiated object
export const store = new Vuex.Store({
  state: {

  },
  getters: getters,
  actions: actions,
  mutations: mutations
})
