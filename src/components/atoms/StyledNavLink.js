import styled from "@emotion/styled";
import {NavLink} from "react-router-dom";

export const StyledNavLink = styled(NavLink)(({ theme }) => ({
    textDecoration: "none",
    color: theme.palette.secondary.main
}));