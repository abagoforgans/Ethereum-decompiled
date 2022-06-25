contract main {




// =====================  Runtime code  =====================


uint256 minBid;
uint256 numMembers;
array of uint256 name;
mapping of uint256 sub_de99ca87;
mapping of uint256 stor5;
array of struct stor6;
array of struct stor7;

function name() {
    return name[0 len name.length]
}

function minBid() {
    return minBid
}

function numMembers() {
    return numMembers
}

function sub_de99ca87(?) {
    return sub_de99ca87[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9dcd976e(?) {
    idx = 256
    s = 0
    while 416 > idx + 32:
        mem[idx + 32] = stor6[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor6[address(arg1)].field_0, mem[288 len 128]
}

function sub_69d3ea1f(?) {
    if not stor7[address(arg1)].field_0:
        mem[(32 * stor7[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor7[address(arg1)].field_0) + 160] = stor7[address(arg1)].field_0
        mem[(32 * stor7[address(arg1)].field_0) + 192 len floor32(stor7[address(arg1)].field_0)] = mem[128 len floor32(stor7[address(arg1)].field_0)]
        return memory
          from (32 * stor7[address(arg1)].field_0) + 128
           len (96 * stor7[address(arg1)].field_0) + 64
    mem[128] = stor7[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor7[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor7[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7[address(arg1)].field_0) + 192 len floor32(stor7[address(arg1)].field_0)] = mem[128 len floor32(stor7[address(arg1)].field_0)]
    return Array(len=stor7[address(arg1)].field_0, data=mem[128 len floor32(stor7[address(arg1)].field_0)], mem[(32 * stor7[address(arg1)].field_0) + floor32(stor7[address(arg1)].field_0) + 192 len (32 * stor7[address(arg1)].field_0) - floor32(stor7[address(arg1)].field_0)]), 
}

function sub_e8e2fe88(?) payable {
    require msg.value >= minBid
    if numMembers >= 8000:
        require sub_de99ca87[address(arg1)] < 7
    else:
        require sub_de99ca87[address(arg1)] < 8
    require arg1 != msg.sender
    require arg1
    require arg1 != this.address
    require not stor5[address(msg.sender)]
    numMembers++
    stor7[address(arg1)].field_0++
    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = msg.sender
    sub_de99ca87[address(arg1)]++
    stor5[address(msg.sender)]++
    s = 0
    idx = 0
    while idx < 5:
        require idx < 5
        call stor6[address(arg1)][idx].field_0 with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 6
        s = msg.value / 5
        idx = idx + 1
        continue 
    idx = 1
    while idx < 5:
        require idx - 1 < 5
        stor6[address(msg.sender)][idx].field_0 = stor6[address(arg1)][idx].field_0
        mem[0] = arg1
        mem[32] = 6
        idx = idx + 1
        continue 
    stor6[address(msg.sender)].field_1024 = msg.sender
    emit 0x45fdc265: msg.value, msg.sender, arg1
    return msg.value
}



}
