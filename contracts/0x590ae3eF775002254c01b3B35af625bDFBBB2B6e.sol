contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor4;

function _fallback() payable {
    stor4 = 1
    require not msg.value
    stor0 = msg.sender
    return code.data[121 len 2515]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_2fbc92a8;
uint256 membersCount;
array of address members;
uint8 stor4;
mapping of uint8 stor5;

function sub_041db26f(?) {
    return bool(stor4)
}

function membersCount() {
    return membersCount
}

function sub_2fbc92a8(?) {
    require arg1
    return sub_2fbc92a8[address(arg1)].field_512
}

function whiteList(address arg1) {
    return sub_2fbc92a8[arg1].field_0, bool(sub_2fbc92a8[arg1].field_256), sub_2fbc92a8[arg1].field_512
}

function sub_5070bd1f(?) {
    return bool(stor5[arg1])
}

function members(uint256 arg1) {
    require arg1 < members.length
    return address(members[arg1])
}

function owner() {
    return owner
}

function sub_b93c2456(?) {
    require arg1
    return sub_2fbc92a8[address(arg1)].field_0
}

function sub_c5c36b30(?) {
    require arg1
    return bool(sub_2fbc92a8[address(arg1)].field_256)
}

function _fallback() payable {
    revert
}

function sub_f5696165(?) {
    require msg.sender == owner
    stor4 = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_fda53e4c(?) {
    require stor4
    require msg.sender == owner
    require arg1
    members.length++
    if not members.length <= members.length + 1:
        idx = members.length + 1
        while members.length > idx:
            uint256(members[idx]) = 0
            idx = idx + 1
            continue 
    address(members[members.length]) = arg1
    sub_2fbc92a8[address(arg1)].field_0 = arg3
    sub_2fbc92a8[address(arg1)].field_256 = uint8(arg2)
    sub_2fbc92a8[address(arg1)].field_512 = arg4
    membersCount = members.length
}



}
