contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = 0x209c4784ab1e8183cf58ca33cb740efbf3fc18ef
    stor1 = 0xb42b20ddbeabdc2a288be7ff847ff94fb48d2579
    return code.data[200 len 1150]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function sub_66117276(?) {
    require msg.sender == stor1
    stor1 = arg1
}

function sub_82c90ac0(?) {
    require msg.sender == stor1
    stor0 = arg1
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit e(this.address);
}

function sub_b76ea962(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == stor1
    if arg2.length:
        mem[ceil32(arg2.length) + 128] = mem[128]
        mem[ceil32(arg2.length) + 160 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
}



}
