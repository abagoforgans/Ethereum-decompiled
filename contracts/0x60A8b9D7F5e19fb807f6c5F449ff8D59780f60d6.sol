contract main {


// =======================  Init code  ======================


address sub_7940a3efAddress;
address owner;

function sub_7940a3ef(?) {
    return sub_7940a3efAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function send(uint256 arg1) {
    require ext_code.size(sub_7940a3efAddress)
    call sub_7940a3efAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
}

function mine() {
    idx = 0
    while idx < 15:
        mem[128] = 0
        require ext_code.size(sub_7940a3efAddress)
        call sub_7940a3efAddress.Mine() with:
             gas gas_remaining - 710 wei
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



// =====================  Runtime code  =====================




}
