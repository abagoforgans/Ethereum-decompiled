contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of struct sub_2de34e0f;
array of struct sub_aca49018;
uint256 sub_9f9f45fb;

function sub_2de34e0f(?) {
    return sub_2de34e0f[address(arg1)][0 len sub_2de34e0f[address(arg1)].length].field_0
}

function sub_9f9f45fb(?) {
    return sub_9f9f45fb
}

function sub_aca49018(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_aca49018.length
    return sub_aca49018[arg1].field_0
}

function sub_e31a1f4a(?) {
    require calldata.size - 4 >= 32
    return sub_2de34e0f[address(arg1)].field_256
}

function killContract() {
    require msg.sender == stor0
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function donate(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require msg.value > 0
    sub_2de34e0f[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_2de34e0f[address(msg.sender)].field_256 += msg.value
    sub_9f9f45fb += msg.value
    sub_aca49018.length++
    sub_aca49018[sub_aca49018.length].field_0 = msg.sender
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9a1ef8b5(?) {
    if not sub_aca49018.length:
        mem[(32 * sub_aca49018.length) + 128] = 32
        mem[(32 * sub_aca49018.length) + 160] = sub_aca49018.length
        mem[(32 * sub_aca49018.length) + 192 len floor32(sub_aca49018.length)] = mem[128 len floor32(sub_aca49018.length)]
        return memory
          from (32 * sub_aca49018.length) + 128
           len (96 * sub_aca49018.length) + 64
    mem[128] = address(sub_aca49018.field_0)
    idx = 128
    s = 0
    while (32 * sub_aca49018.length) + 96 > idx:
        mem[idx + 32] = sub_aca49018[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_aca49018.length) + 192 len floor32(sub_aca49018.length)] = mem[128 len floor32(sub_aca49018.length)]
    return Array(len=sub_aca49018.length, data=mem[128 len floor32(sub_aca49018.length)], mem[(32 * sub_aca49018.length) + floor32(sub_aca49018.length) + 192 len (32 * sub_aca49018.length) - floor32(sub_aca49018.length)]), 
}



}
