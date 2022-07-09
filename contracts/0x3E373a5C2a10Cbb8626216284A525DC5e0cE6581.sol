contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 32
uint32 sub_1214f436;
address sub_89977cdfAddress; offset 40

function sub_1214f436(?) {
    return Mask(32, 224, sub_1214f436)
}

function sub_89977cdf(?) {
    return sub_89977cdfAddress
}

function sub_eb5c3a36(?) {
    return bool(stor0)
}

function _fallback() payable {
    if 1 == bool(stor0):
        stor0 = 0
        call msg.sender with:
             gas gas_remaining wei
            args 1
}

function sub_92f4ba65(?) payable {
    require msg.sender == sub_89977cdfAddress
    if Mask(32, 224, arg3):
        sub_1214f436 = arg3
    stor0 = 1
    call arg1 with:
         gas gas_remaining wei
        args arg2
    call arg1 with:
         gas gas_remaining wei
        args eth.balance(arg1)
    require eth.balance(this.address) < eth.balance(this.address)
}

function sub_4b906714(?) payable {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == sub_89977cdfAddress
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}



}
