import "../App.css"
import IconYellow from "../assets/icon-yellow.png";

export default function Navbar() {
  return (
    <div className="card navbar">
      <img src={IconYellow} className="navbar-img" alt="..."/>
      <h1 className="navbar-title">
        BullLight
      </h1>
    </div>
  )
}
