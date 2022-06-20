contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_bc07e1be(?) {
    if sha3(arg1) != 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setOverlord(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function sub_4019cd1e(?) {
    require msg.sender == stor0
    if arg2 <= 0:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if arg2 >= eth.balance(this.address):
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_92d22cdc(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == stor0
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
}

function sub_8bac6054(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    require msg.sender == stor0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + 164 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 160] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + 164 len floor32(arg2.length) + 28]
    require ext_call.success
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + 164 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + 160] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 192 len arg4.length % 32]
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + 160 len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + 164 len floor32(arg4.length) + 28]
    require ext_call.success
}

function sub_25e7d194(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg6.length
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 192 len arg6.length] = arg6[all]
    require msg.sender == stor0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg3 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len floor32(arg2.length) + 28]
    require ext_call.success
    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192] = mem[floor32(arg4.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + -(arg4.length % 32) + 224 len arg4.length % 32]
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg5 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len floor32(arg4.length) + 28]
    require ext_call.success
    mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg2.length) + ceil32(arg4.length) + arg6.length + 192 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg7 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len arg6.length - 4]
    else:
        mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192] = mem[floor32(arg6.length) + ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + -(arg6.length % 32) + 224 len arg6.length % 32]
        call arg1.mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 192 len 4] with:
           value arg7 wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg4.length) + ceil32(arg6.length) + 196 len floor32(arg6.length) + 28]
    require ext_call.success
}



}
