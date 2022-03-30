contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 2073]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint256 balances;
mapping of address stor99;

function balances(address arg1) {
    return balances[arg1]
}

function _fallback() {
    revert
}

function sub_2de761ba(?) {
    if stor1 == msg.sender:
        stor0 = arg1
}

function sub_050612b2(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 3
    stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = arg1
}

function sub_0a3dafdd(?) {
    mem[128 len arg1.length] = arg1[all]
    if stor1 == msg.sender:
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = 0
}

function sub_600bb9d9(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    mem[ceil32(arg1.length) + 128] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_7eca4a82(?) {
    mem[128 len arg1.length] = arg1[all]
    if stor1 == msg.sender:
        if arg1.length < 32:
            mem[ceil32(arg1.length) + 128] = 256^(-arg1.length + 32) - 1 and mem[ceil32(arg1.length) + 128] or mem[128] and !(256^(-arg1.length + 32) - 1)
        else:
            mem[ceil32(arg1.length) + 128] = mem[128]
            mem[ceil32(arg1.length) + 160 len floor32(arg1.length - 32)] = mem[160 len floor32(arg1.length - 32)]
            mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] = 256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] or mem[floor32(arg1.length - 32) + 160] and !(256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1)
        mem[ceil32(arg1.length) + arg1.length + 128] = 2
        stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])] = arg2
}

function sub_9fa3447d(?) {
    mem[128 len arg1.length] = arg1[all]
    if arg1.length < 32:
        mem[ceil32(arg1.length) + 128] = 256^(-arg1.length + 32) - 1 and mem[ceil32(arg1.length) + 128] or mem[128] and !(256^(-arg1.length + 32) - 1)
    else:
        mem[ceil32(arg1.length) + 128] = mem[128]
        mem[ceil32(arg1.length) + 160 len floor32(arg1.length - 32)] = mem[160 len floor32(arg1.length - 32)]
        mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] = 256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length - 32) + 160] or mem[floor32(arg1.length - 32) + 160] and !(256^(-arg1.length + floor32(arg1.length - 32) + 64) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 3
    mem[ceil32(arg1.length) + 128] = stor[sha3(mem[ceil32(arg1.length) + 128 len arg1.length + 32])]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_42714d0c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_40046a1d(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    require ext_code.size(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])
    call stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]].0x23b872dd with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
