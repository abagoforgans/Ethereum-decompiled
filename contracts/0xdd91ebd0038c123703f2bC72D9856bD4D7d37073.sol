contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function wallet() {
    return stor0, stor1, stor2, stor3
}

function requestWithdraw() {
    require ext_code.size(0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca)
    delegate 0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca.0x3be5e49f with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function performUserWithdraw(address arg1) {
    require ext_code.size(0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca)
    delegate 0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca.0xb2d07945 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUserWithdrawalAccount(address arg1) {
    require ext_code.size(0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca)
    delegate 0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca.0x2eb9e5d7 with:
         gas gas_remaining wei
        args 0, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferToUserWithdrawalAccount(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require ext_code.size(0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca)
    delegate 0x4a3cc40b9c78ca394e288e0f645907a8a8fcefca.0x1557a52f with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}



}
