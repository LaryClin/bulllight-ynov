import { createTheme } from '@mui/material/styles';


const primaryDark = "#211F24"
const secondaryDark = "#FFFFFF"
const tertiary = "#fee98b"
const tertiarySecond = "#e4cc60"
export const theme = createTheme({
    palette: {
        primary: {
            main: primaryDark,
            contrastText: secondaryDark
        },
        secondary: {
            main: secondaryDark,
            contrastText: primaryDark
        },
        tertiary: {
            main: tertiary,
            secondary: tertiarySecond
        }
    },
    a:{
        textDecoration: "none"
    },
    components: {
        MuiPaper: {
            styleOverrides: {
                root:{
                    padding: "1rem"
                }
            }
        },
        MuiTypography: {
            styleOverrides: {
                root:{
                    color: secondaryDark
                }
            }
        },
        MuiFormLabel: {
            styleOverrides: {
                root:{
                    variants: [
                        {
                            props: { variant: 'outlined' },
                            style: {
                                color: secondaryDark,
                            },
                        },
                    ],
                    color: secondaryDark
                }
            }
        },
        MuiInputLabel:{
            styleOverrides:{
                outlined: {
                    color: secondaryDark,
                    '&.MuiInputLabel-shrink': {
                        color: secondaryDark
                    },
                },
            }
        },
        MuiFormControlLabel:{
            styleOverrides:{
                root:{
                    color: tertiary,
                    ":focus":{
                        color: tertiary
                    }
                }
            }
        },
        MuiInputBase: {
            styleOverrides: {
                root:{
                    variants: [
                        {
                            props: { variant: 'outlined' },
                            style: {
                                color: secondaryDark
                            },
                        },
                    ],
                    color: secondaryDark,
                    borderColor: tertiary,
                }
            }
        },
        MuiOutlinedInput:{
            styleOverrides: {
                focused:{
                    color: secondaryDark
                },
                notchedOutline:{
                    borderColor: tertiary,
                    transition: "all 0.3s ease-in",
                }
            }
        },
        MuiButton:{
            variants:[
                {
                    props: { variant: 'cta' },
                    style: {
                        backgroundColor: tertiary,
                        ":active": {
                            backgroundColor: tertiary,
                        },
                        ":hover": {
                            backgroundColor: tertiarySecond
                        }
                    }
                }
            ],
        },
        MuiLink:{
            variants:[
                {
                    props:{ variant: 'body2'},
                    style:{
                        color: secondaryDark
                    }
                }
            ],
        }
    }

});