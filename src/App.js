import './App.css';

const Welcome = (props) => {
  return (
    <div>
      <h2>{props.nama}</h2>
      <h2>{props.sekolah}</h2>
    </div>
  )
}

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Coming Soon</h1>
      </header>
    </div>
  );
}

export default App;
