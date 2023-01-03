import './App.css';
import {CircularProgress, Container, Divider} from "@mui/material";
import React, { Suspense } from 'react'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
import Home from "./views/Home";
import Login from "./views/Login";
import Header from "./includes/Header";
import Register from "./views/Register";

function App() {
  return (
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
  );
}

export default App;
