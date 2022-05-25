contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6;
uint256 maxTokenSupply;
uint256 tokenPrice;
uint256 sub_9975faa2;
uint256 fundsRaised;
address stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function maxTokenSupply() {
    return maxTokenSupply
}

function fundsRaised() {
    return fundsRaised
}

function sub_6b575a80(?) {
    return bool(stor6)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenPrice() {
    return tokenPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9975faa2(?) {
    return sub_9975faa2
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_de1415cb(?) {
    if stor11 != msg.sender:
        revert with 0, 'insufficient privileges'
    stor6 = uint8(arg1)
}

function transferOwnership(address arg1) {
    if stor11 != msg.sender:
        revert with 0, 'insufficient privileges'
    stor11 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPrice(uint256 arg1, uint256 arg2) {
    if stor11 != msg.sender:
        revert with 0, 'insufficient privileges'
    tokenPrice = arg1
    sub_9975faa2 = arg2
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'insufficient balance'
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawFunds(address arg1, uint256 arg2) {
    if stor11 != msg.sender:
        revert with 0, 'insufficient privileges'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not stor6:
        revert with 0, 'tokens cannot be purchased'
    fundsRaised += msg.value
    require tokenPrice
    if totalSupply + (msg.value * sub_9975faa2 / tokenPrice) >= maxTokenSupply:
        revert with 0, 'hard cap limit reached'
    balanceOf[address(msg.sender)] += msg.value * sub_9975faa2 / tokenPrice
    totalSupply += msg.value * sub_9975faa2 / tokenPrice
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'insufficient balance or allowance'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'insufficient balance or allowance'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
