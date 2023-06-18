import '../css/Dashboard.css'

const Dashboard = () => {

    return (
        <div class="backgroundColor">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 backgroundColor shadow">
                        <h3 class="p-4 m-0 Pop-SemiBold text-light">Toko Kopi Jaya</h3>
                        <div class="card shadow mx-4 mb-1 border-0 rd-16">
                            <img src={require('../images/Outlet/Ijen.jpg')} class="card-img rd-16" alt="..." />
                            <div className='Transparan rd-16'></div>
                            <div class="card-img-overlay">
                                <p class="card-title Pop-ExtraLight text-light m-0">Toko Kopi Jaya</p>
                                <h5 class="card-text text-light">IJEN</h5>
                                <button type="button" class="btn btn-sm open-menu Pop-SemiBold">Open Menu</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Dashboard;