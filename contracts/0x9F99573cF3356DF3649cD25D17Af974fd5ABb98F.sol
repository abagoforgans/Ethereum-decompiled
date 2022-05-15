contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;
uint8 stor7;
uint256 currentTotalSupply;
uint256 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function currentTotalSupply() {
    return currentTotalSupply
}

function openAirDrop() {
    return bool(stor7)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function switchAirDrop(bool arg1) {
    require msg.sender == owner
    stor7 = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balances[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balances[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return balances[address(arg1)]
    if stor10[address(arg1)]:
        return balances[address(arg1)]
    if not stor7:
        return balances[address(arg1)]
    if arg1 == owner:
        return balances[address(arg1)]
    require balances[address(arg1)] + stor9 >= balances[address(arg1)]
    return (balances[address(arg1)] + stor9)
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    if stor7:
        if not stor10[address(msg.sender)]:
            if currentTotalSupply < totalSupply:
                if owner != msg.sender:
                    require balances[address(msg.sender)] + stor9 >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += stor9
                    stor10[address(msg.sender)] = 1
                    require currentTotalSupply + stor9 >= currentTotalSupply
                    currentTotalSupply += stor9
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    if stor7:
        if not stor10[address(msg.sender)]:
            if currentTotalSupply < totalSupply:
                if owner != msg.sender:
                    require balances[address(msg.sender)] + stor9 >= balances[address(msg.sender)]
                    balances[address(msg.sender)] += stor9
                    stor10[address(msg.sender)] = 1
                    require currentTotalSupply + stor9 >= currentTotalSupply
                    currentTotalSupply += stor9
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
