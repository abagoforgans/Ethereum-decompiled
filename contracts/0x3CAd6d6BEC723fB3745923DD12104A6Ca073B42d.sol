contract main {


// =======================  Init code  ======================


address stor3;

function _fallback() payable {
    stor3 = msg.sender
    return code.data[87 len 4421]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address fundraiserAddress;
array of struct fundraiserCallData;

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

function fundraiserCallData() {
    return fundraiserCallData[0 len fundraiserCallData.length].field_0
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

function sub_9996affb(?) {
    require msg.sender == owner
    fundraiserCallData[].field_0 = Array(len=arg1.length, data=arg1[all])
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

function _fallback() payable {
    call owner with:
       value msg.value - (98 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[96] = uint256(fundraiserCallData.field_0)
    idx = 96
    s = 0
    while fundraiserCallData.length + 96 > idx + 32:
        mem[idx + 32] = fundraiserCallData[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call fundraiserAddress.mem[96 len 4] with:
       value 98 * msg.value / 100 wei
         gas gas_remaining - 34710 wei
        args mem[100 len fundraiserCallData.length + (floor32(fundraiserCallData.length - 1) + -fundraiserCallData.length + 32 % 32) - 4]
    require ext_call.success
    totalSupply += 98 * msg.value / 100
    balanceOf[address(msg.sender)] += 98 * msg.value / 100
}



}
