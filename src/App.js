import {Routes, Route} from "react-router-dom";

import Login from "./pages/Login";
import Register from "./pages/Register";

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login />}/>
        <Route path="/register" element={<Register />}/>

        <Route path="*" element={<Login />}/>
      </Routes>
    </div>
  );
}

export default App;
