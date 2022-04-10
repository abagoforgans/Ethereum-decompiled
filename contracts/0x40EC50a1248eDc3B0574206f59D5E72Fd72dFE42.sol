contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
    require not msg.value
    return code.data[71 len 932]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getPriceProxy() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0, 64, 200000, 3, 'URL'
    require ext_call.success
    return ext_call.return_data[0]
}

function oneCentOfWei() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0, 64, 200000, 3, 'URL'
    require ext_call.success
    return (ext_call.return_data[0] - (200000 * block.gasprice))
}

function WEI() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0, 64, 200000, 3, 'URL'
    require ext_call.success
    return ((100 * ext_call.return_data[0]) - (20 * 10^6 * block.gasprice))
}

function USD() {
    require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 0, 64, 200000, 3, 'URL'
    require ext_call.success
    require ext_call.return_data[0] - (200000 * block.gasprice)
    return (10^18 / ext_call.return_data[0] - (200000 * block.gasprice))
}



}
