import "./App.css";
import { CircularProgress } from "@mui/material";
import React, { Suspense } from "react";
import { BrowserRouter, Route, Routes } from "react-router-dom";
import Home from "./views/Home";
import Login from "./views/Login";
import Header from "./includes/Header";
import Register from "./views/Register";
import RequireAuth from "./views/Login/auth/RequireAuth";
import Welcome from "./views/Welcome";
import AlreadyAuth from "./views/Login/auth/AlreadyAuth";

function App() {
  return (
<<<<<<< Updated upstream
        <BrowserRouter>
            <Header>
              <Suspense fallback={<CircularProgress />}>
                <Routes>
                  <Route path="/" element={<Home />} />
                    <Route path="/welcome" element={<Welcome />} />
                    <Route element={<AlreadyAuth />}>
                        <Route path="/login" element={<Login />} />
                        <Route path="/register" element={<Register />} />
                    </Route>
                    {/* protected routes */}
                    <Route element={<RequireAuth />}>
                        <Route path="/welcome" element={<Welcome />} />
                    </Route>
                </Routes>
              </Suspense>
            </Header>
        </BrowserRouter>
||||||| Stash base
        <BrowserRouter>
            <Header>
              <Suspense fallback={<CircularProgress />}>
                <Routes>
                  <Route path="/" element={<Home />} />
                  <Route path="/login" element={<Login />} />
                  <Route path="/register" element={<Register />} />
                </Routes>
              </Suspense>
            </Header>
        </BrowserRouter>
=======
    <BrowserRouter>
      <Header>
        <Suspense fallback={<CircularProgress />}>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
          </Routes>
        </Suspense>
      </Header>
    </BrowserRouter>
>>>>>>> Stashed changes
  );
}

export default App;
