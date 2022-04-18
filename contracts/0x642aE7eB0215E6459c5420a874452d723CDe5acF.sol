contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 927]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function distribute(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function distributeToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
