import { useEffect, useState } from "react";
import OutletCard from "../components/OutletCard";
import "../css/Dashboard.css";
import axios from "axios";

const Dashboard = () => {
  const baseUrl = "http://localhost:3001/";

  const [outlet, setOutlet] = useState([]);

  useEffect(() => {
    axios.get(baseUrl).then((response) => {
      setOutlet(response.data[0].payload);
    });
  }, []);

  const press = () => {
    console.log(outlet);
  };

  return (
    <>
      <div className="backgroundColor">
        <div className="container">
          <div className="row justify-content-center">
            <div className="col-lg-4 backgroundColor shadow">
              <h2 className="my-4 me-4 Pop-SemiBold text-light">
                TOKO KOPI JAYA
              </h2>
              {outlet.map((item, index) => (
                <OutletCard
                  key={index}
                  tipe={item.TIPE}
                  nama={item.NAMA_OUTLET}
                  gambar={item.GAMBAR}
                />
              ))}
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Dashboard;
