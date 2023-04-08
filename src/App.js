import { Component } from 'react';
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';
import './App.css';

// function TittlePage() {
//   return <h2>TOKO KOPI JAYA</h2>
// }

// class Timer extends Component {

//   constructor(props){
//     super(props)
//     this.state = {
//       time: props.start
//     }
//   }

//   componentDidMount(){
//     this.addInterval = setInterval(()=>this.increase(),1000);
//   }

//   componentWillUnmount(){
//     clearInterval(this.addInterval)
//   }

//   increase(){
//     this.setState((state,props)=>({
//       time: parseInt(state.time)+1
//     }))
//   }

//   render(){
//     return(
//       <div><h1>{this.state.time}</h1></div>
//     )
//   }
// }

// class Toggle extends Component {
//   constructor(props) {
//     super(props)
//     this.state = {
//       toggleStatus: true
//     }

//     this.handleClick = this.handleClick.bind(this)
//   }

//   handleClick() {
//     this.setState(state => ({
//       toggleStatus: !state.toggleStatus
//     }))
//   }

//   render() {
//     return (
//       <button onClick={this.handleClick}>{this.state.toggleStatus ? "ON" : "OFF"}
//         <p>{this.state.toggleStatus ? "Menyala" : "Mati"}</p>
//       </button>
//     )
//   }

// }

// class App extends Component {

//   constructor(props){
//     super(props)
//     this.state={
//       toDo: '',
//       items: []    
//     }
//   }

//   handleSubmit = (event) => {
//     event.preventDefault()
//     this.setState({
//       items : [...this.state.items,this.state.toDo],
//       toDo: ''
//     })

//   }

//   handleChange = (event) =>{
//     this.setState({
//       toDo: event.target.value
//     })
//   }

//   render() {
//     return (
//       <div className="App">
//         <TittlePage />
//         {/* <Timer start="0"/> */}
//         {/* <Toggle /> */}

//         <form onSubmit={this.handleSubmit}>
//           <input value={this.state.toDo} onChange={this.handleChange}/>
//           <button>Add</button>
//         </form>
//         <ul>
//           {this.state.items.map((item,index)=><li key={index}>{item}</li>)}
//         </ul>
//       </div>
//     )
//   }
// }

import Home from './pages/Home'
import About from './pages/About'
import NotFound from './pages/NotFound'

const App = () => {
  return(
    <Router>
      <Routes>
        <Route path="/" element={<Home/>}/>
        <Route path="/about" element={<About/>}/>
        <Route path="*" element={<NotFound/>}/>
      </Routes>
    </Router>
  )
}

export default App;
