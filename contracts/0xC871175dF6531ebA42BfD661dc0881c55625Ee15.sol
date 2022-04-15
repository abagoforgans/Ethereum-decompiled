contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x7d3a3e983aaf5df2ec27a6238b5c958bde63a3b2
    require not msg.value
    return code.data[115 len 1912]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw_eth(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function purchase(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_a09b7035(?) {
    require msg.sender == owner
    if block.number >= arg3:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34710 wei
        require ext_call.success
}

function sub_f970365f(?) {
    require msg.sender == owner
    if block.timestamp >= arg3:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34710 wei
        require ext_call.success
}

function sub_3681639d(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_e8de39cb(?) {
    require msg.sender == owner
    if block.timestamp >= arg3:
        if block.number >= arg4:
            call arg1 with:
               value arg2 wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
}



}
