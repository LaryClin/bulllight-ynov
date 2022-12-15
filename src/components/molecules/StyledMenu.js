import styled from "@emotion/styled";
import Menu from "@mui/material/Menu";

export const StyledMenu = styled(Menu)(({ theme }) => ({
    '& .MuiPaper-root': {
        backgroundColor: theme.palette.primary.main
    },
}));