import "../css/Dashboard.css";

const Dashboard = () => {
  return (
    <>
      <div className="backgroundColor">
        <div className="container">
          <div className="row justify-content-center">
            <div className="col-lg-4 backgroundColor shadow">
              <h3 className="p-4 m-0 Pop-SemiBold text-light">
                Toko Kopi Jaya
              </h3>
              <div className="card shadow mx-4 mb-1 border-0 rd-16">
                <img
                  src={require("../images/Outlet/Ijen.jpg")}
                  className="card-img rd-16"
                  alt="..."
                />
                <div className="Transparan rd-16"></div>
                <div className="card-img-overlay">
                  <p className="card-title Pop-ExtraLight text-light m-0">
                    Toko Kopi Jaya
                  </p>
                  <h5 className="card-text text-light">IJEN</h5>
                  <button
                    type="button"
                    className="btn btn-sm open-menu Pop-SemiBold"
                  >
                    Open Menu
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};

export default Dashboard;
