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
import {StyledNavLink} from "../../components/atoms/StyledNavLink";
import {useEffect, useRef, useState} from "react";
import { useNavigate } from "react-router-dom"
import {useLoginMutation} from "./auth/authApiSlice";
import {setCredentials} from "./auth/authSlice";
import { useDispatch } from 'react-redux'
import {theme} from "../../theme/theme";

export default function SignIn() {
    const emailRef = useRef()
    const errRef = useRef()
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const [errMsg, setErrMsg] = useState('')
    const navigate = useNavigate()

    const [login, { isLoading }] = useLoginMutation()
    const dispatch = useDispatch()

    useEffect(() => {
        emailRef.current.focus()


    }, [])

    useEffect(() => {
        setErrMsg('')
    }, [email, password])

    const handleSubmit = async (e) => {
        e.preventDefault()

        try {
            const userData = await login({ email, password }).unwrap()
            dispatch(setCredentials({ ...userData, email }))
            setEmail('')
            setPassword('')
            navigate('/welcome')
        } catch (err) {
            console.log(err)
            if (!err?.status) {
                // isLoading: true until timeout occurs
                setErrMsg('No Server Response');
            } else if (err.status === 400) {
                setErrMsg('Missing Email or Password');
            } else if (err.status === 401) {
                setErrMsg('Unauthorized');
            } else {
                setErrMsg('Login Failed');
            }
            errRef.current.focus();
        }
    }

    const handleEmailInput = (e) => setEmail(e.target.value)

    const handlePasswordInput = (e) => setPassword(e.target.value)

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
                    Sign in
                </Typography>
                <Box
                    component="form"
                    onSubmit={handleSubmit}
                    noValidate
                    sx={{ mt: 1 }}
                >
                    <p ref={errRef} className={errMsg ? "errmsg" : "offscreen"} aria-live="assertive">{errMsg}</p>
                    <TextField
                        margin="normal"
                        required
                        fullWidth
                        id="email"
                        ref={emailRef}
                        value={email}
                        onChange={handleEmailInput}
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
                        onChange={handlePasswordInput}
                        value={password}
                        autoComplete="current-password"
                    />
                    <FormControlLabel
                        control={<Checkbox value="remember" color="secondary" />}
                        label="Remember me"
                    />
                    <Button
                        type="submit"
                        fullWidth
                        variant="cta"
                        sx={{ mt: 3, mb: 2 }}
                    >
                        Sign In
                    </Button>
                    <Grid container>
                        <Grid item>
                            <StyledNavLink to={"/register"}>
                                {"Don't have an account? Sign Up"}
                            </StyledNavLink>
                        </Grid>
                    </Grid>
                </Box>
            </Box>
        </Container>
    );
}
