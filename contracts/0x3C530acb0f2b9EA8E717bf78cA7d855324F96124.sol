contract main {




// =====================  Runtime code  =====================


#
#  - sub_30fa048d(?)
#
const getBalance = eth.balance(this.address)


address fomo3dAddress;
uint256 nonce;
address adminAddress;

function fomo3d() {
    return fomo3dAddress
}

function nonce() {
    return nonce
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_a1042e2f(?) {
    require msg.sender == adminAddress
    require ext_code.size(fomo3dAddress)
    call fomo3dAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5781aa86(?) {
    require msg.sender == adminAddress
    require arg1 <= eth.balance(this.address)
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
