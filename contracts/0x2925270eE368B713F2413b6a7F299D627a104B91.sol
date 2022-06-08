contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 sub_5745aaa6;
mapping of uint256 userEthBalances;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address beneficiaryAddress;
mapping of address gParent;

function name() {
    return name[0 len name.length]
}

function airDropList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_5745aaa6(?) {
    require calldata.size - 4 >= 32
    return sub_5745aaa6[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function userEthBalances(address arg1) {
    require calldata.size - 4 >= 32
    return userEthBalances[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function gParent(address arg1) {
    require calldata.size - 4 >= 32
    return gParent[arg1]
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setBlack(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == beneficiaryAddress
    stor8[address(arg1)] = uint8(arg2)
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if beneficiaryAddress == msg.sender:
        call arg1 with:
           value 10^18 * arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function close(address arg1) {
    require calldata.size - 4 >= 32
    if beneficiaryAddress == msg.sender:
        stor0 = 1
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    if arg2 == 100:
        if not gParent[address(msg.sender)]:
            gParent[address(msg.sender)] = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    if arg3 == 100:
        if not gParent[address(arg1)]:
            gParent[address(arg1)] = arg2
    return 1
}



}
