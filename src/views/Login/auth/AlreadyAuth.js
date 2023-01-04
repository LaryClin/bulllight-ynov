import { useLocation, Navigate, Outlet } from "react-router"
import { useSelector } from "react-redux"
import { selectCurrentToken } from "./authSlice"

const AlreadyAuth = () => {
    const token = useSelector(selectCurrentToken)
    const location = useLocation()

    return (
        token
            ? <Navigate to="/welcome" state={{ from: location }} replace />
            : <Outlet/>
    )
}
export default AlreadyAuth