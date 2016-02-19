import mobservable from "mobservable"

let store = mobservable.observable({
  boxes: [],
  arrows: [],
  selection: null,
})

store.addBox = function(box){
  box = mobservable.observable(box)
  this.boxes.push(box);
}
store.addBox(2)


export default store
