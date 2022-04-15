contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint128 stor4; offset 160
address stor4;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    stor1 = 100 * 10^6
    stor2 = 100000
    stor3 = 10^11
    address(stor4.field_0) = 0xd94f659d6c084252207eedb1b1ab061df810ae4d
    Mask(96, 0, stor4.field_160) = 0
    mem[96] = 101
    mem[128] = 103
    mem[160] = 105
    mem[192] = 106
    mem[224] = 107
    mem[256] = 108
    mem[288] = 109
    mem[320] = 112
    s = 5
    idx = 96
    while 352 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor13 = 419304 * 24 * 3600
    stor14 = 1511913540
    stor15 = 418416 * 24 * 3600
    stor16 = 1507593540
    require not msg.value
    stor0 = msg.sender
    return code.data[483 len 2832]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
uint256 price;
uint256 totalSupply;
uint8 stor4; offset 160
uint128 stor4; offset 160
address multisigAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 startTime;
uint256 sub_fadeaf76;
uint256 sub_176d5738;
uint256 sub_f8447e97;

function sub_176d5738(?) {
    return sub_176d5738
}

function getSaleState() {
    return bool(uint8(stor4.field_160))
}

function getMultisig() {
    return multisigAddress
}

function getPreSaleLimit() {
    return stor1.length
}

function getPrice() {
    return price
}

function getTotalSupply() {
    return totalSupply
}

function getStartTime() {
    return startTime
}

function sub_f8447e97(?) {
    return sub_f8447e97
}

function sub_fadeaf76(?) {
    return sub_fadeaf76
}

function _fallback() payable {
    revert
}

function sub_7007ce77(?) {
    require msg.sender == stor0
    sub_f8447e97 = arg1
}

function sub_91a62b48(?) {
    require msg.sender == stor0
    sub_176d5738 = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == stor0
    price = arg1
}

function setStartTime(uint256 arg1) {
    require msg.sender == stor0
    startTime = arg1
}

function setCloseTime(uint256 arg1) {
    require msg.sender == stor0
    sub_fadeaf76 = arg1
}

function setTotalSupply(uint256 arg1) {
    require msg.sender == stor0
    totalSupply = arg1
}

function setMultisig(address arg1) {
    require msg.sender == stor0
    multisigAddress = arg1
}

function setPreSaleLimit(uint256 arg1) {
    require msg.sender == stor0
    stor1.length = arg1
}

function setSaleState(bool arg1) {
    require msg.sender == stor0
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function sub_70d5e6cf(?) {
    require msg.sender == stor0
    stor5 = arg1
    stor6 = arg2
    stor7 = arg3
    stor8 = arg4
    stor9 = arg5
    stor10 = arg6
    stor11 = arg7
    stor12 = arg8
}

function getPercents() {
    idx = 352
    s = 5
    while 608 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor5, mem[384 len 224]
}



}
