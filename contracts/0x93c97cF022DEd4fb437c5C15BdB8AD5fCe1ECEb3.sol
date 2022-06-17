contract main {




// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function isContract(address arg1) {
    return (ext_code.size(arg1) > 0)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        return 0
    if arg2 > balanceOf[msg.sender]:
        return 0
    if ext_code.size(arg1) > 0:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if 0 >= allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if arg2 <= 0:
        return 0
    if arg2 > balanceOf[msg.sender]:
        return 0
    if ext_code.size(arg1) <= 0:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    require ext_code.size(arg1)
    call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1, sha3(arg3[all]));
    return 1
}



}
