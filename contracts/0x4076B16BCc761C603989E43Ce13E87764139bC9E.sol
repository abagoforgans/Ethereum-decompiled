contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 825]
}



// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_de35f282(?) {
    require adminAddress == msg.sender
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
}

function batch(address arg1, address[] arg2, uint256[] arg3) {
    require adminAddress == msg.sender
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        mem[100] = address(cd[((32 * idx) + arg2 + 36)])
        mem[132] = cd[((32 * idx) + arg3 + 36)]
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
