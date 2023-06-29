import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import NotFound from "./pages/NotFound";
import Dashboard from "./pages/Dashboard";
import CobaGetApi from "./pages/CobaGetApi";
import Outlet from "./pages/Outlet";

const App = () => {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Dashboard />} />
        <Route path="/outlet" element={<Outlet />} />
        <Route path="*" element={<NotFound />} />
        <Route path="/coba" element={<CobaGetApi />} />
      </Routes>
    </Router>
  );
};

export default App;
