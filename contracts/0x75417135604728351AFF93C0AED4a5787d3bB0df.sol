contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 928]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require owner == msg.sender
    require ext_code.size(0x1b22c32cd936cb97c28c5690a0695a82abf688e6)
    call 0x1b22c32cd936cb97c28c5690a0695a82abf688e6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(0x1b22c32cd936cb97c28c5690a0695a82abf688e6)
    call 0x1b22c32cd936cb97c28c5690a0695a82abf688e6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
}

function send(address[] arg1, uint256[] arg2) {
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(0x1b22c32cd936cb97c28c5690a0695a82abf688e6)
        call 0x1b22c32cd936cb97c28c5690a0695a82abf688e6.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
