contract main {




// =====================  Runtime code  =====================


#
#  - beginPwn()
#
const bal = eth.balance(this.address)


address stor1;
uint256 nonce;

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b26e642b(?) {
    if arg1 <= 127:
        return address(sha3(0, 0, this.address, uint8(arg1)))
    if arg1 <= 255:
        return address(sha3(0, 0, this.address, 0, uint8(arg1)))
    if arg1 <= 65535:
        return address(sha3(0, 0, this.address, 0, uint16(arg1)))
    if arg1 <= 16777215:
        return address(sha3(0, 0, this.address, 0, arg1 % 16777216))
    require arg1 <= test266151307()
    return address(sha3(0, 0, this.address, 0, uint32(arg1)))
}



}
