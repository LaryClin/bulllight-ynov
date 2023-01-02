import "../App.css"
import FullBackgroundImage from "../assets/logo-full-transparent.png"

/*
  MUI IMPORTS
 */
import {
  Button,
  Grid,
  TextField
} from "@mui/material";

export default function Register() {
  return (
    <div className="d-flex justify-content-center align-items-center w-100 h-100 flex-column">
      <img className="logo mx-auto" src={FullBackgroundImage} alt="..."/>

      <div className="container mt-2">
        <h2>
          Personal informations
        </h2>

        <Grid container spacing={2} columns={2}>
          <Grid item xs={1}>
            <TextField
              id="input-firstname"
              label="Firstname"
              variant="filled"
              size="Normal"
            />
          </Grid>

          <Grid item xs={1}>
            <TextField
              id="input-lastname"
              label="Lastname"
              variant="filled"
              size="Normal"
            />
          </Grid>
        </Grid>

        <TextField
          id="input-address"
          label="Address"
          variant="filled"
          size="Normal"
          className="mt-4 w-100"
        />

        <Grid container className="mt-1" spacing={2} columns={12}>
          <Grid item xs={4}>
            <TextField
              id="input-citycode"
              label="City code"
              variant="filled"
              size="Normal"
              type="number"
              className="w-100"
            />
          </Grid>

          <Grid item xs={8}>
            <TextField
              id="input-city"
              label="City"
              variant="filled"
              size="Normal"
              type="text"
              className="w-100"
            />
          </Grid>
        </Grid>

        <TextField
          id="input-username"
          label="Username"
          variant="filled"
          size="Normal"
          className="mt-4 w-100"
        />

        <TextField
          id="input-password"
          label="Password"
          variant="filled"
          size="Normal"
          className="mt-1 w-100"
          type="password"
        />

        <div className="mt-2 d-flex justify-content-end">
          <Button variant="text" className="text-primary text-transform-initial">Login</Button>
          <Button variant="contained" className="bg-primary text-black text-transform-initial">Register</Button>
        </div>
      </div>
    </div>
  )
}
