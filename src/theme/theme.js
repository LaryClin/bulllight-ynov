import { createTheme } from '@mui/material/styles';


const primaryDark = "#211F24"
const secondaryDark = "#FFFFFF"
export const theme = createTheme({
    palette: {
        primary: {
            main: primaryDark,
            contrastText: secondaryDark
        },
        secondary: {
            main: secondaryDark,
            contrastText: primaryDark
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
        MuiInputBase: {
            styleOverrides: {
                root:{
                    variants: [
                        {
                            props: { variant: 'outlined' },
                            style: {
                                textTransform: 'none'
                            },
                        },
                    ],
                    color: secondaryDark
                }
            }
        },
        MuiTextField: {
            styleOverrides: {
                root:{
                    color: secondaryDark
                }

            }
        },
    },

});