import '../css/Home.css'

const OutletBox = (props) => {
    return (
        <div className='OutletBoxFrame'>
            <a className='ButtonOpenMenu'><h1 className='TextOpenMenu'>OPEN MENU</h1></a>
            <div className='Transparan'></div>
            <div className='ImageOutlet'></div>
            <h1 className='TittleCompany'>Toko Kopi Jaya</h1>
            <h1 className='TittleOutlet'>{props.NamaOutlet}</h1>
        </div>
    )
}

export default OutletBox;