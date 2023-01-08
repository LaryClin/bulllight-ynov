import "../App.css"
import {Button} from "@mui/material";

export default function Card({title, description}) {
  return (
    <div className="card element">
      <div className="card-content">
        <div className="h-50">
          <h2>{title}</h2>
          <p>{description}</p>
        </div>
        <div className="h-50 d-flex flex-row-reverse">
          <Button variant="contained" size={"small"} className="bg-primary text-black text-transform-initial">Buy with MetaMask</Button>
        </div>
      </div>
    </div>
  )
}
