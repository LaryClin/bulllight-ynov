import "../App.css"

import {useState} from "react";

import {useNavigate} from "react-router-dom";
import Navbar from "../components/Navbar";

export default function Details() {
  return (
    <div className="w-100 h-100">
      <Navbar/>

      <div className="mt--30p">
        <div className="card details">
          <div style={{minHeight: '30%'}}></div>
          <div className="card-content">
            <h2 className="text-center">Ma formation MetaMask</h2>
            <p className="text-justify">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet massa ex. Nunc in ante velit. Praesent eu mollis nisi. Aenean sollicitudin diam non viverra tempus. Vivamus varius lacinia blandit. Morbi imperdiet, leo at rutrum tristique, mi neque consequat purus, at faucibus nulla enim sed dolor. Duis a turpis tortor. Phasellus purus lacus, egestas in dui et, tincidunt dignissim arcu. Sed fringilla ex nisi, egestas vestibulum lacus maximus vitae. Donec tellus lorem, auctor nec suscipit a, varius sit amet sapien. Pellentesque vestibulum orci est, et pretium quam sodales in. Vestibulum non odio mauris. Quisque eu tellus posuere, porttitor velit id, cursus elit.
            </p>
            <h2 className="text-center hr">SOMMAIRE</h2>
          </div>
        </div>
      </div>
    </div>
  )
}
