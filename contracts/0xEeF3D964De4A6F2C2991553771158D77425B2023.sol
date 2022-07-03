contract main {




// =====================  Runtime code  =====================


#
#  - join(address arg1)
#
address sub_801f1c7fAddress;
address stor1;
array of struct sub_939fcd03;
mapping of address inviter;
uint8 sub_98e7c138;
uint256 joinFee;
uint8 stor6;

function closed() payable {
    return bool(stor6)
}

function sub_801f1c7f(?) payable {
    return sub_801f1c7fAddress
}

function sub_939fcd03(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_939fcd03[arg1].field_0
    return sub_939fcd03[arg1][arg2].field_0
}

function sub_98e7c138(?) payable {
    return sub_98e7c138
}

function inviter(address arg1) payable {
    require calldata.size - 4 >= 32
    return inviter[arg1]
}

function joinFee() payable {
    return joinFee
}

function _fallback() payable {
    revert
}

function setJoinFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    joinFee = arg1
    return 1
}

function setClosed(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    stor6 = uint8(arg1)
    return 1
}

function sub_fea43dd9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require arg1 <= 100
    sub_98e7c138 = arg1
    return 1
}

function sub_1aa77f2f(?) payable {
    require calldata.size - 4 >= 32
    if not sub_939fcd03[address(arg1)].field_0:
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 160] = sub_939fcd03[address(arg1)].field_0
        mem[(32 * sub_939fcd03[address(arg1)].field_0) + 192 len floor32(sub_939fcd03[address(arg1)].field_0)] = mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)]
        return memory
          from (32 * sub_939fcd03[address(arg1)].field_0) + 128
           len (96 * sub_939fcd03[address(arg1)].field_0) + 64
    mem[128] = sub_939fcd03[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_939fcd03[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_939fcd03[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_939fcd03[address(arg1)].field_0) + 192 len floor32(sub_939fcd03[address(arg1)].field_0)] = mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)]
    return Array(len=sub_939fcd03[address(arg1)].field_0, data=mem[128 len floor32(sub_939fcd03[address(arg1)].field_0)], mem[(32 * sub_939fcd03[address(arg1)].field_0) + floor32(sub_939fcd03[address(arg1)].field_0) + 192 len (32 * sub_939fcd03[address(arg1)].field_0) - floor32(sub_939fcd03[address(arg1)].field_0)]), 
}



}
