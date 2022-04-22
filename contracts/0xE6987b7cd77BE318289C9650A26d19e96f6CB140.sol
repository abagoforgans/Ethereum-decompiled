contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint32 stor0; offset 168
address stor0;
uint8 stor4; offset 176
uint16 stor4; offset 160
address stor4;

function _fallback() {
    address(stor0.field_0) = msg.sender
    require code.data[2150 len 2] <= 1000
    address(stor4.field_0) = code.data[2100 len 20]
    uint16(stor4.field_160) = code.data[2150 len 2]
    uint8(stor4.field_176) = 1
    uint8(stor0.field_160) = 1
    stor0.field_168 % 16777216 = 0
    return code.data[244 len 1844]
}



// =====================  Runtime code  =====================


uint32 version; offset 160
address owner;
mapping of uint8 stor1;
array of address sub_28804b7c;
mapping of uint8 stor3;
uint8 stor4; offset 176
uint16 sub_a94dd032; offset 160
uint128 stor4; offset 176
address providerAddress;

function active() {
    return bool(uint8(stor4.field_176))
}

function provider() {
    return providerAddress
}

function sub_28804b7c(?) {
    require arg2 < uint256(sub_28804b7c[arg1])
    return address(sub_28804b7c[arg1][arg2])
}

function sub_28be392b(?) {
    return bool(stor1[arg1])
}

function version() {
    return version
}

function owner() {
    return owner
}

function sub_a94dd032(?) {
    return sub_a94dd032
}

function sub_b3d7f38f(?) {
    return bool(stor3[arg1])
}

function sub_fef89f55(?) {
    return uint256(sub_28804b7c[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_04d1a26b(?) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function sub_71013c10(?) {
    require owner == msg.sender
    stor3[address(arg1)] = uint8(arg2)
}

function setActive(bool arg1) {
    require owner == msg.sender
    Mask(80, 0, stor4.field_176) = Mask(80, 0, arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function sub_11264a97(?) {
    require owner == msg.sender
    require arg2 <= 1000
    providerAddress = arg1
    sub_a94dd032 = arg2
}

function sub_1b88f091(?) {
    require stor3[address(msg.sender)]
    uint256(sub_28804b7c[address(arg1)])++
    if not uint256(sub_28804b7c[address(arg1)]) <= uint256(sub_28804b7c[address(arg1)]) + 1:
        idx = uint256(sub_28804b7c[address(arg1)]) + 1
        while uint256(sub_28804b7c[address(arg1)]) > idx:
            uint256(sub_28804b7c[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    address(sub_28804b7c[address(arg1)][uint256(sub_28804b7c[address(arg1)])]) = arg2
    stor1[address(arg2)] = 1
    emit 0xdda93b3a: arg1, arg2
}



}
