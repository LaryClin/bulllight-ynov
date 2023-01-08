import {Routes, Route} from "react-router-dom";

import Login from "./pages/Login";
import Register from "./pages/Register";
import Home from "./pages/Home";

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path="/register" element={<Register />}/>

        <Route path="*" element={<Login />}/>
      </Routes>
    </div>
  );
}

export default App;
