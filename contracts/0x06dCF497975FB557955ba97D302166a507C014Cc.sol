contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 932]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function withdraw(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require stor0 == msg.sender
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    emit 0x884edad9: address(arg1), arg2
}



}
