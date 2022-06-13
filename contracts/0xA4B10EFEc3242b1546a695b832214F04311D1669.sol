contract main {




// =====================  Runtime code  =====================


address sub_6621ebfbAddress;
address sub_aad3e5ccAddress;
address daiAddress;
address wethAddress;
address owner;

function weth() {
    return wethAddress
}

function sub_6621ebfb(?) {
    return sub_6621ebfbAddress
}

function owner() {
    return owner
}

function sub_aad3e5cc(?) {
    return sub_aad3e5ccAddress
}

function dai() {
    return daiAddress
}

function _fallback() payable {
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
