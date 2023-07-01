import "../css/Dashboard.css";
import { useNavigate } from "react-router-dom";
const OutletCard = (props) => {
  const navigate = useNavigate();

  const masukOutlet = () => {
    navigate("/outlet", {
      state: {
        nama: `${props.nama}`,
        tipe: `${props.tipe}`,
        gambar: `${props.gambar}`,
        shopee: `${props.shopee}`,
        grab: `${props.grab}`,
        gojek: `${props.gojek}`,
        gmaps: `${props.gmaps}`,
      },
    });
  };
  return (
    <>
      <div className="card shadow mx-4 mb-4 mb-1 border-0 rd-16 indexs">
        <img
          src={require(`../images/Outlet/${props.gambar}`)}
          className="card-img rd-16"
          alt={props.tipe + " " + props.gambar}
        />
        <div className="Transparan rd-16"></div>
        <div className="card-img-overlay">
          <p className="card-title Pop-ExtraLight text-light m-0">
            {props.tipe}
          </p>
          <h5 className="card-text text-light">{props.nama}</h5>
          <button
            onClick={masukOutlet}
            type="button"
            className="btn btn-sm open-menu Pop-SemiBold"
          >
            Open Menu
          </button>
        </div>
      </div>
    </>
  );
};

export default OutletCard;
