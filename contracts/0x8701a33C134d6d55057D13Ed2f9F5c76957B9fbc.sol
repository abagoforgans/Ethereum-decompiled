contract main {


// =======================  Init code  ======================


uint256 stor6;

function _fallback() payable {
    stor6 = code.data[1617 len 32]
    return code.data[55 len 1562]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
address stor6;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
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
    require ext_code.size(stor6)
    call stor6.getOrModifyBlocked(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
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
    require ext_code.size(stor6)
    call stor6.getOrModifyBlocked(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor6)
    call stor6.getOrModifyBlocked(address rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
