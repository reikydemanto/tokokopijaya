import "../css/Dashboard.css";
const OutletCard = (props) => {
  return (
    <>
      <div className="card shadow mx-4 mb-4 mb-1 border-0 rd-16">
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
          <button type="button" className="btn btn-sm open-menu Pop-SemiBold">
            Open Menu
          </button>
        </div>
      </div>
    </>
  );
};

export default OutletCard;
