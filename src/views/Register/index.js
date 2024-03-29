import * as React from "react";
import Button from "@mui/material/Button";
import TextField from "@mui/material/TextField";
import FormControlLabel from "@mui/material/FormControlLabel";
import Checkbox from "@mui/material/Checkbox";
import Grid from "@mui/material/Grid";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import icon from "../../assets/img/icon.svg"
import {useTheme} from "@mui/material";
import {StyledNavLink} from "../../components/atoms/StyledNavLink";

export default function Register() {
    const theme = useTheme()

    const handleSubmit = (event) => {
        event.preventDefault();
        const data = new FormData(event.currentTarget);
        console.log({
            email: data.get("email"),
            password: data.get("password")
        });
    };

    return (
        <Container component="main" maxWidth="xs">
            <Box
                sx={{
                    marginTop: 8,
                    display: "flex",
                    flexDirection: "column",
                    alignItems: "center"
                }}
            >
                <Box sx={{ m: 1 }}>
                    <img src={icon} width={75} style={{padding: "1rem"}}/>
                </Box>
                <Typography component="h1" variant="h5">
                    Sign up
                </Typography>
                <Box
                    component="form"
                    onSubmit={handleSubmit}
                    noValidate
                    sx={{ mt: 1 }}
                >
                    <TextField
                        margin="normal"
                        required
                        fullWidth
                        id="email"
                        label="Email Address"
                        name="email"
                        autoComplete="email"
                        autoFocus
                    />
                    <TextField
                        floatingLabelFocusStyle={{color: theme.palette.secondary.main}}
                        margin="normal"
                        required
                        fullWidth
                        name="password"
                        label="Password"
                        type="password"
                        id="password"
                        autoComplete="current-password"
                    />
                    <TextField
                        floatingLabelFocusStyle={{color: theme.palette.secondary.main}}
                        margin="normal"
                        required
                        fullWidth
                        name="Confirm password"
                        label="Confirm password"
                        type="password"
                        id="password"
                        autoComplete="current-password"
                    />
                    <Button
                        type="submit"
                        fullWidth
                        variant="cta"
                        sx={{ mt: 3, mb: 2 }}
                    >
                        Sign Up
                    </Button>
                    <Grid container>
                        <Grid item>
                            <StyledNavLink to={"/login"}>
                                {"Already have an account? Sign in"}
                            </StyledNavLink>
                        </Grid>
                    </Grid>
                </Box>
            </Box>
        </Container>
    );
}
