import { createSlice } from "@reduxjs/toolkit"

const authSlice = createSlice({
    name: 'auth',
    initialState: { user: null, token: null },
    reducers: {
        setCredentials: (state, action) => {
            const { data, email } = action.payload
            state.email = email
            state.token = data.access_token
        },
        logOut: (state, action) => {
            state.email = null
            state.token = null
        }
    },
})

export const { setCredentials, logOut } = authSlice.actions

export default authSlice.reducer

export const selectCurrentUser = (state) => state.auth.email
export const selectCurrentToken = (state) => state.auth.token