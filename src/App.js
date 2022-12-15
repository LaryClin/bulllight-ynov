import './App.css';
import {CircularProgress, Container, Divider} from "@mui/material";
import React, { Suspense } from 'react'
import { BrowserRouter, Route, Routes } from 'react-router-dom'
import Home from "./views/Home";
import Login from "./views/Login";
import Header from "./includes/Header";

function App() {
  return (
        <BrowserRouter>
            <Header>
              <Suspense fallback={<CircularProgress />}>
                <Routes>
                  <Route path="/" element={<Home />} />
                  <Route path="/login" element={<Login />} />
                </Routes>
              </Suspense>
            </Header>
        </BrowserRouter>
  );
}

export default App;
