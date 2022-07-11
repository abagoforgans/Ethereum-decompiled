contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address sub_ed63fe75Address;
uint256 sub_93841f0c;
mapping of struct members;

function members(address arg1) {
    require calldata.size - 4 >= 32
    mem[128] = members[arg1][2].field_0
    idx = 128
    s = 0
    while members[arg1][2].length + 96 > idx:
        mem[idx + 32] = members[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return members[arg1].field_0, 
           members[arg1].field_256,
           Array(len=members[arg1][2].length, data=mem[128 len members[arg1][2].length])
}

function GetRole(address arg1) {
    require calldata.size - 4 >= 32
    return members[address(arg1)].field_0
}

function sub_93841f0c(?) {
    return sub_93841f0c
}

function _owner() {
    return sub_ed63fe75Address
}

function sub_d0ca0c25(?) {
    return bool(uint8(stor0.field_160))
}

function sub_ed63fe75(?) {
    return sub_ed63fe75Address
}

function _fallback() payable {
    revert
}

function sub_40c8e996(?) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ed63fe75Address
    sub_93841f0c = arg1
}

function sub_6bfc453d(?) {
    require msg.sender == sub_ed63fe75Address
    if uint8(stor0.field_160):
        Mask(96, 0, stor0.field_160) = 0
    else:
        Mask(96, 0, stor0.field_160) = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == sub_ed63fe75Address
    require arg1
    emit OwnershipTransferred(sub_ed63fe75Address, arg1);
    sub_ed63fe75Address = arg1
}

function sub_4e68e45a(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == sub_ed63fe75Address
    members[address(arg1)].field_0 = arg2
    members[address(arg1)].field_256 = block.timestamp
    members[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    emit 0x9b36d1d4: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32]
}

function sub_0947d6ee(?) payable {
    if members[address(msg.sender)].field_0:
        revert with 0, 'user has to be new'
    members[address(msg.sender)].field_0 = 1
    members[address(msg.sender)].field_256 = block.timestamp
    members[address(msg.sender)].field_512 = 0
    members[address(msg.sender)].field_513 = 10
    members[address(msg.sender)].field_520 = 'new member' / 256
    idx = 0
    while members[address(msg.sender)][2].length + 31 / 32 > idx:
        members[address(msg.sender)][idx + 2].field_0 = 0
        idx = idx + 1
        continue 
    call sub_ed63fe75Address with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9b36d1d4: msg.sender, 1
}



}
