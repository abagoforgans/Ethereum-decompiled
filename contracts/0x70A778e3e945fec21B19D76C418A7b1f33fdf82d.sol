contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2644 len 20]
    stor2 = code.data[2676 len 20]
    uint8(stor3.length) = 6
    stor3.length.field_8 = 'QNT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = code.data[2696 len 32]
    stor6 = code.data[2696 len 32]
    return code.data[405 len 2227]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address redeemerAddress;
address stor2;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
uint256 sub_0808ac3b;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function sub_0808ac3b(?) {
    return sub_0808ac3b
}

function totalSupply() {
    return totalSupply
}

function redeemer() {
    return redeemerAddress
}

function decimals() {
    return decimals
}

function sub_389b6e4a(?) {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() {
    revert
}

function sub_0568a08f(?) {
    require owner == msg.sender
    stor2 = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeRedeemer(address arg1) {
    require owner == msg.sender
    redeemerAddress = arg1
}

function toggleRedeemActive() {
    require owner == msg.sender
    Mask(96, 0, stor1.field_160) = Mask(96, 0, not uint8(stor1.field_160))
}

function refund(address arg1) {
    require owner == msg.sender
    if balanceOf[address(arg1)] <= 0:
        return 0
    balanceOf[address(arg1)] = 0
    emit Refund(balanceOf[address(arg1)], arg1);
    return 1
}

function burnToken(address arg1) {
    require stor2 == msg.sender
    if balanceOf[address(arg1)] <= 0:
        return 0
    balanceOf[address(arg1)] = 0
    emit BurnToken(balanceOf[address(arg1)], arg1);
    return 1
}

function revokeToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    if balanceOf[address(arg1)] < arg2:
        return 0
    if sub_0808ac3b + arg2 < sub_0808ac3b:
        return 0
    balanceOf[address(arg1)] -= arg2
    sub_0808ac3b += arg2
    emit RevokeToken(arg2, arg1);
    return 1
}

function redeem(address arg1, uint256 arg2) {
    require uint8(stor1.field_160)
    require redeemerAddress == msg.sender
    if sub_0808ac3b < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    sub_0808ac3b -= arg2
    balanceOf[address(arg1)] += arg2
    emit Redeem(arg2, msg.sender, arg1);
    return 1
}



}
