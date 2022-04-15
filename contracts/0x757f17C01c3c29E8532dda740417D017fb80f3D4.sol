contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'ZBCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'ZBC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 3
    require not msg.value
    stor6 = msg.sender
    stor1[address(this.address)] += 3 * 10^11
    stor0 += 3 * 10^11
    return code.data[543 len 4330]
}



// =====================  Runtime code  =====================


const MAX_SUPPLY = 3 * 10^11


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor6; offset 160
uint128 stor6; offset 160
address ownerAddress;
mapping of uint256 issuedTokens;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ownerAddress() {
    return ownerAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function issuedTokens(address arg1) {
    return issuedTokens[arg1]
}

function halted() {
    return bool(uint8(stor6.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function toggleHalt(bool arg1) {
    require msg.sender == ownerAddress
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function issueToken(address arg1, uint256 arg2) {
    require msg.sender == ownerAddress
    require not uint8(stor6.field_160)
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit Issue(arg2, arg1);
    issuedTokens[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_160)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
