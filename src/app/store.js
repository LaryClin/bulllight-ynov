import { configureStore } from "@reduxjs/toolkit"
import authReducer from "../views/Login/auth/authSlice"
import { apiSlice } from "./api/apiSlice"

export const store = configureStore({
    reducer: {
        [apiSlice.reducerPath]: apiSlice.reducer,
        auth: authReducer
    },
    middleware: getDefaultMiddleware =>
        getDefaultMiddleware().concat(apiSlice.middleware),
    devTools: true
})