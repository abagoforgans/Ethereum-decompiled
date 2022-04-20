contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    require not msg.value
    stor0 = msg.sender
    stor2 = stor1
    return code.data[278 len 1905]
}



// =====================  Runtime code  =====================


address owner;
address sub_4275b6bfAddress;
address sub_7940a3efAddress;

function sub_4275b6bf(?) {
    return sub_4275b6bfAddress
}

function sub_7940a3ef(?) {
    return sub_7940a3efAddress
}

function owner() {
    return owner
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sendTokens() {
    if msg.sender == owner:
        require ext_code.size(sub_7940a3efAddress)
        call sub_7940a3efAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(sub_7940a3efAddress)
        call sub_7940a3efAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function sub_4171044b(?) {
    if msg.sender == owner:
        if not arg2:
            idx = 0
            while idx < arg1:
                mem[128] = 0
                require ext_code.size(sub_7940a3efAddress)
                call sub_7940a3efAddress.Mine() with:
                     gas gas_remaining - 710 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                if not ext_call.return_data[0]:
                    require idx >= arg1 / 2
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < arg1:
                mem[128] = 0
                require ext_code.size(sub_7940a3efAddress)
                call sub_7940a3efAddress.Mine() with:
                     gas gas_remaining - 710 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
                idx = idx + 1
                continue 
}



}
