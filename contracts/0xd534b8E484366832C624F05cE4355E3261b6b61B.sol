contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalAirDrop;
uint256 eachAirDropAmount;
uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
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

function airdropFinished() {
    return bool(stor6)
}

function airDropBlacklist(address arg1) {
    return bool(stor7[arg1])
}

function transferBlacklist(address arg1) {
    return bool(stor8[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function eachAirDropAmount() {
    return eachAirDropAmount
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function totalAirDrop() {
    return totalAirDrop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    require not stor6
    require not stor7[address(msg.sender)]
    require eachAirDropAmount <= totalAirDrop
    require not stor6
    require eachAirDropAmount <= totalAirDrop
    totalAirDrop -= eachAirDropAmount
    require balanceOf[address(msg.sender)] + eachAirDropAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += eachAirDropAmount
    emit Transfer(eachAirDropAmount, 0, msg.sender);
    if eachAirDropAmount > 0:
        stor7[address(msg.sender)] = 1
    if not totalAirDrop:
        stor6 = 1
    require 10^16 <= eachAirDropAmount
    eachAirDropAmount -= 10^16
}

function getAirDropTokens() payable {
    require not stor6
    require not stor7[address(msg.sender)]
    require eachAirDropAmount <= totalAirDrop
    require not stor6
    require eachAirDropAmount <= totalAirDrop
    totalAirDrop -= eachAirDropAmount
    require balanceOf[address(msg.sender)] + eachAirDropAmount >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += eachAirDropAmount
    emit Transfer(eachAirDropAmount, 0, msg.sender);
    if eachAirDropAmount > 0:
        stor7[address(msg.sender)] = 1
    if not totalAirDrop:
        stor6 = 1
    require 10^16 <= eachAirDropAmount
    eachAirDropAmount -= 10^16
}

function getInspireTokens(address arg1, address arg2, uint256 arg3) payable {
    if 50 * eachAirDropAmount / 100 <= totalAirDrop:
        if arg3 > 0:
            if not stor8[address(arg1)]:
                stor8[address(arg1)] = 1
                if not stor6:
                    require 50 * eachAirDropAmount / 100 <= totalAirDrop
                    totalAirDrop -= 50 * eachAirDropAmount / 100
                    require balanceOf[address(arg1)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 50 * eachAirDropAmount / 100
                    emit Transfer((50 * eachAirDropAmount / 100), 0, arg1);
            if arg3 > 0:
                if not stor8[address(arg2)]:
                    if not stor6:
                        require 50 * eachAirDropAmount / 100 <= totalAirDrop
                        totalAirDrop -= 50 * eachAirDropAmount / 100
                        require balanceOf[address(arg2)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += 50 * eachAirDropAmount / 100
                        emit Transfer((50 * eachAirDropAmount / 100), 0, arg2);
    else:
        if arg3 > 0:
            if not stor8[address(arg1)]:
                stor8[address(arg1)] = 1
                if not stor6:
                    require totalAirDrop <= totalAirDrop
                    totalAirDrop = 0
                    require balanceOf[address(arg1)] + totalAirDrop >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += totalAirDrop
                    emit Transfer(totalAirDrop, 0, arg1);
            if arg3 > 0:
                if not stor8[address(arg2)]:
                    if not stor6:
                        require totalAirDrop <= totalAirDrop
                        totalAirDrop = 0
                        require balanceOf[address(arg2)] + totalAirDrop >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += totalAirDrop
                        emit Transfer(totalAirDrop, 0, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    if 50 * eachAirDropAmount / 100 <= totalAirDrop:
        if arg2 > 0:
            if not stor8[address(msg.sender)]:
                stor8[address(msg.sender)] = 1
                if not stor6:
                    require 50 * eachAirDropAmount / 100 <= totalAirDrop
                    totalAirDrop -= 50 * eachAirDropAmount / 100
                    require balanceOf[address(msg.sender)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 50 * eachAirDropAmount / 100
                    emit Transfer((50 * eachAirDropAmount / 100), 0, msg.sender);
            if arg2 > 0:
                if not stor8[address(arg1)]:
                    if not stor6:
                        require 50 * eachAirDropAmount / 100 <= totalAirDrop
                        totalAirDrop -= 50 * eachAirDropAmount / 100
                        require balanceOf[address(arg1)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 50 * eachAirDropAmount / 100
                        emit Transfer((50 * eachAirDropAmount / 100), 0, arg1);
    else:
        if arg2 > 0:
            if not stor8[address(msg.sender)]:
                stor8[address(msg.sender)] = 1
                if not stor6:
                    require totalAirDrop <= totalAirDrop
                    totalAirDrop = 0
                    require balanceOf[address(msg.sender)] + totalAirDrop >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += totalAirDrop
                    emit Transfer(totalAirDrop, 0, msg.sender);
            if arg2 > 0:
                if not stor8[address(arg1)]:
                    if not stor6:
                        require totalAirDrop <= totalAirDrop
                        totalAirDrop = 0
                        require balanceOf[address(arg1)] + totalAirDrop >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += totalAirDrop
                        emit Transfer(totalAirDrop, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    if 50 * eachAirDropAmount / 100 <= totalAirDrop:
        if arg3 > 0:
            if not stor8[address(arg1)]:
                stor8[address(arg1)] = 1
                if not stor6:
                    require 50 * eachAirDropAmount / 100 <= totalAirDrop
                    totalAirDrop -= 50 * eachAirDropAmount / 100
                    require balanceOf[address(arg1)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 50 * eachAirDropAmount / 100
                    emit Transfer((50 * eachAirDropAmount / 100), 0, arg1);
            if arg3 > 0:
                if not stor8[address(arg2)]:
                    if not stor6:
                        require 50 * eachAirDropAmount / 100 <= totalAirDrop
                        totalAirDrop -= 50 * eachAirDropAmount / 100
                        require balanceOf[address(arg2)] + (50 * eachAirDropAmount / 100) >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += 50 * eachAirDropAmount / 100
                        emit Transfer((50 * eachAirDropAmount / 100), 0, arg2);
    else:
        if arg3 > 0:
            if not stor8[address(arg1)]:
                stor8[address(arg1)] = 1
                if not stor6:
                    require totalAirDrop <= totalAirDrop
                    totalAirDrop = 0
                    require balanceOf[address(arg1)] + totalAirDrop >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += totalAirDrop
                    emit Transfer(totalAirDrop, 0, arg1);
            if arg3 > 0:
                if not stor8[address(arg2)]:
                    if not stor6:
                        require totalAirDrop <= totalAirDrop
                        totalAirDrop = 0
                        require balanceOf[address(arg2)] + totalAirDrop >= balanceOf[address(arg2)]
                        balanceOf[address(arg2)] += totalAirDrop
                        emit Transfer(totalAirDrop, 0, arg2);
    return 1
}



}
