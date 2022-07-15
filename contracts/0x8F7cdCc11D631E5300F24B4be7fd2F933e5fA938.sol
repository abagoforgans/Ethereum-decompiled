contract main {




// =====================  Runtime code  =====================


uint256 _totalSupply;
array of uint256 name;
array of uint256 symbol;
uint32 decimals;
address stor3;
address owner; offset 32
uint256 sub_7f4255e6;
uint256 no_of_tokens;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function no_of_tokens() {
    return no_of_tokens
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7f4255e6(?) {
    return sub_7f4255e6
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
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
    require calldata.size - 4 >= 96
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

function sub_7c174d37(?) payable {
    require sub_7f4255e6
    no_of_tokens = msg.value / sub_7f4255e6
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if balanceOf[stor3] >= no_of_tokens:
        if allowance[stor3][address(msg.sender)] >= no_of_tokens:
            if no_of_tokens > 0:
                balanceOf[address(msg.sender)] += no_of_tokens
                balanceOf[stor3] -= no_of_tokens
                allowance[stor3][address(msg.sender)] -= no_of_tokens
                emit Transfer(no_of_tokens, owner, msg.sender);
    return no_of_tokens
}



}
