import { useEffect, useState } from "react";
import OutletCard from "../components/OutletCard";
import "../css/Dashboard.css";
import axios from "axios";
import background from "../images/bg-instagram.png";

const Dashboard = () => {
  const baseUrl = "http://localhost:3001/";

  const [outlet, setOutlet] = useState([]);

  useEffect(() => {
    axios.get(baseUrl).then((response) => {
      setOutlet(response.data[0].payload);
    });
  }, []);

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
              <button
                onClick={() => {
                  window.open("https://wa.me/+6281133332323");
                }}
                type="button"
                className="btn btn button-sosmed whatsapp Pop-SemiBold mx-auto mb-4 py-2 shadow"
              >
                <img
                  className="button-icon"
                  src={require("../images/icons-whatsapp.png")}
                  alt="whatsapp--v1"
                />
                <p className="wa-text mb-0">Admin Jaya Group</p>
              </button>
              <button
                onClick={() => {
                  window.open("https://www.instagram.com/tokokopijaya/");
                }}
                type="button"
                className="btn btn button-sosmed instagram Pop-SemiBold mx-auto mb-5 py-2 shadow"
                style={{ backgroundImage: `url(${background})` }}
              >
                <img
                  className="button-icon"
                  src={require("../images/icons-instagram.png")}
                  alt="whatsapp--v1"
                />
                <p className="wa-text mb-0">Admin Jaya Group</p>
              </button>
              <div className="footer my-5">
                <p>©copyright @tokokopijaya</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Dashboard;
