import {Routes, Route} from "react-router-dom";

import Login from "./pages/Login";
import Register from "./pages/Register";
import Home from "./pages/Home";
import Details from "./pages/Details";

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Home />}/>
        <Route path="/details/:id" element={<Details />}/>
        <Route path="/register" element={<Register />}/>

        <Route path="*" element={<Login />}/>
      </Routes>
    </div>
  );
}

export default App;
