import "../App.css"

import {useState} from "react";

import {useNavigate} from "react-router-dom";
import Navbar from "../components/Navbar";
import Card from "../components/Card";

export default function Home() {
  const [title, setTitle] = useState("TEST")
  const [description, setDescription] = useState("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet massa ex. Nunc in ante velit. Praesent eu mollis nisi. Aenean sollicitudin diam non viverra tempus. Vivamus varius lacinia blandit.")

  return (
    <div className="w-100 h-100">
      <Navbar/>

      <div className="mt--30p">
        <Card title={title} description={description}/>
        <Card title={title} description={description}/>
        <Card title={title} description={description}/>
        <Card title={title} description={description}/>
        <Card title={title} description={description}/>
        <Card title={title} description={description}/>
      </div>
    </div>
  )
}
