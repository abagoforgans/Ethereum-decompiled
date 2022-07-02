contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function sub_52ca29eb(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == arg1
    stor0[address(arg1)].field_0++
    stor0[address(arg1)][stor0[address(arg1)].field_0].field_0 = arg2
}

function getCrowdsales() {
    if not stor0[address(msg.sender)].field_0:
        mem[(32 * stor0[address(msg.sender)].field_0) + 128] = 32
        mem[(32 * stor0[address(msg.sender)].field_0) + 160] = stor0[address(msg.sender)].field_0
        mem[(32 * stor0[address(msg.sender)].field_0) + 192 len floor32(stor0[address(msg.sender)].field_0)] = mem[128 len floor32(stor0[address(msg.sender)].field_0)]
        return memory
          from (32 * stor0[address(msg.sender)].field_0) + 128
           len (96 * stor0[address(msg.sender)].field_0) + 64
    mem[128] = stor0[address(msg.sender)].field_0
    idx = 128
    s = 0
    while (32 * stor0[address(msg.sender)].field_0) + 96 > idx:
        mem[idx + 32] = stor0[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[address(msg.sender)].field_0) + 192 len floor32(stor0[address(msg.sender)].field_0)] = mem[128 len floor32(stor0[address(msg.sender)].field_0)]
    return Array(len=stor0[address(msg.sender)].field_0, data=mem[128 len floor32(stor0[address(msg.sender)].field_0)], mem[(32 * stor0[address(msg.sender)].field_0) + floor32(stor0[address(msg.sender)].field_0) + 192 len (32 * stor0[address(msg.sender)].field_0) - floor32(stor0[address(msg.sender)].field_0)]), 
}



}
