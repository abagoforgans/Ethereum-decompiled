contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    stor1 = msg.sender
    return code.data[179 len 1627]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function killit() {
    require msg.sender == stor1
    selfdestruct(msg.sender)
}

function put() payable {
    require msg.sender == stor1
    call stor0.deposit() with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function _fallback() payable {
    if msg.value > 0:
        call stor1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_cf29e97c(?) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor1
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call stor0.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 128] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        call stor0.mem[ceil32(arg1.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + 132 len floor32(arg1.length) + 28]
    require ext_call.success
}

function sub_267a722b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == stor1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        call stor0.mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg1.length - 4]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 160] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 192 len arg1.length % 32]
        call stor0.mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(arg1.length) + 28]
    require ext_call.success
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call stor0.mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + 160] = mem[floor32(arg2.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        call stor0.mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(arg2.length) + 28]
    require ext_call.success
}



}
