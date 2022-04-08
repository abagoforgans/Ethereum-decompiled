contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[86 len 2285]
}



// =====================  Runtime code  =====================


const sub_901e982f(?) = block.timestamp


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct sub_7300fd81;
mapping of uint8 stor2;

function sub_7300fd81(?) {
    return sub_7300fd81[address(msg.sender)].field_512
}

function sub_74a28b99(?) {
    require msg.sender == arg1
    return sub_7300fd81[address(arg1)].field_256
}

function sub_77c3ef3d(?) {
    return sub_7300fd81[address(msg.sender)].field_0
}

function sub_84f5a87a(?) {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function getProxy(address arg1) {
    require msg.sender == arg1
    return sub_7300fd81[address(arg1)].field_512
}

function sub_cfb7994a(?) {
    return sub_7300fd81[address(msg.sender)].field_256
}

function getBalance(address arg1) {
    require msg.sender == arg1
    return sub_7300fd81[address(arg1)].field_0
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function sub_2098bc0f(?) {
    require owner == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function sub_0b9c8fe8(?) {
    if uint8(stor0.field_160):
        require owner == msg.sender
    sub_7300fd81[address(msg.sender)].field_0 = 0
    sub_7300fd81[address(msg.sender)].field_256 = 0
    call msg.sender with:
       value sub_7300fd81[address(msg.sender)].field_0 wei
         gas gas_remaining - 34710 wei
    require not ext_call.success
}

function sub_08bea870(?) payable {
    if uint8(stor0.field_160):
        require owner == msg.sender
    if not sub_7300fd81[address(msg.sender)].field_0:
        sub_7300fd81[address(msg.sender)].field_0 = msg.value
    else:
        require msg.value + sub_7300fd81[address(msg.sender)].field_0 >= sub_7300fd81[address(msg.sender)].field_0
        require msg.value + sub_7300fd81[address(msg.sender)].field_0 >= msg.value
        sub_7300fd81[address(msg.sender)].field_0 += msg.value
    sub_7300fd81[address(msg.sender)].field_512 = arg1
    require arg2 + block.timestamp >= block.timestamp
    require arg2 + block.timestamp >= arg2
    sub_7300fd81[address(msg.sender)].field_256 = arg2 + block.timestamp
}

function sub_ea5ae4d4(?) {
    if stor2[address(msg.sender)]:
        require owner == msg.sender
    stor2[address(msg.sender)] = 1
    if uint8(stor0.field_160):
        require owner == msg.sender
    if sub_7300fd81[address(arg1)].field_512 != msg.sender:
        require owner == msg.sender
    if block.timestamp > sub_7300fd81[address(arg1)].field_256:
        require owner == msg.sender
    require sub_7300fd81[address(arg1)].field_0 >= arg3
    require arg3 <= sub_7300fd81[address(arg1)].field_0
    sub_7300fd81[address(arg1)].field_0 -= arg3
    call arg2 with:
       funct arg4
       value 10^18 * arg3 wei
         gas gas_remaining - 34710 wei
        args Mask(224, 0, arg4)
    require ext_call.success
    stor2[address(msg.sender)] = 0
}



}
