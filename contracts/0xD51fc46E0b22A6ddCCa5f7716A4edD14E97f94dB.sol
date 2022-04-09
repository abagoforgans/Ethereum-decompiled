contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() payable {
    stor3 = msg.sender
    return code.data[87 len 3615]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address fundraiserAddress;

function totalSupply() {
    return totalSupply
}

function fundraiserAddress() {
    return fundraiserAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function requestRedeem(uint256 arg1) {
    emit requestedRedeem(arg1, msg.sender);
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    emit redeemed(msg.sender, arg1);
}

function setFundraiserAddress(address arg1) {
    require msg.sender == owner
    fundraiserAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call fundraiserAddress with:
       value 90 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call owner with:
       value msg.value - (90 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    totalSupply += 90 * msg.value / 100
    balanceOf[address(msg.sender)] += 90 * msg.value / 100
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
