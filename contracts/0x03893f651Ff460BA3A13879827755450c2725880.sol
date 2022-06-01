contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Only owner.'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Amount larger than balance.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_620e0b3d(?) {
    if owner != msg.sender:
        revert with 0, 'Only owner.'
    if ('cd', 4).length <= 0:
        revert with 0, 'Invalid parameters.'
    if ('cd', 36).length <= 0:
        revert with 0, 'Invalid parameters.'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'Invalid parameters.'
    idx = 0
    s = 0
    while ('cd', 36).length > uint8(idx):
        require uint8(idx) < ('cd', 36).length
        idx = idx + 1
        s = s + cd[((32 * uint8(idx)) + cd[36] + 36)]
        continue 
    if s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total amount larger than balance.'
    idx = 0
    while ('cd', 4).length > uint8(idx):
        require uint8(idx) < ('cd', 4).length
        require uint8(idx) < ('cd', 36).length
        call address(cd[((32 * uint8(idx)) + cd[4] + 36)]) with:
           value cd[((32 * uint8(idx)) + cd[36] + 36)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
