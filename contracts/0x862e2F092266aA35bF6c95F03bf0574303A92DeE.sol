contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 890]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash):
        require not msg.value
        return owner
    if unknown_0xa6f9dae1(?????) == uint32(call.func_hash):
        require not msg.value
        require msg.sender == owner
        owner = arg1
    require unknown_0xd9caed12(?????) == uint32(call.func_hash)
    require not msg.value
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
