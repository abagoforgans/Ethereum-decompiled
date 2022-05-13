contract main {




// =====================  Runtime code  =====================


address owner;
uint256 feesA;
uint256 feesB;
uint256 feesC;
uint256 feesD;
address addressA;
address addressB;
address addressC;
address addressD;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function feesA() {
    return feesA
}

function totalSupply() {
    return totalSupply
}

function feesB() {
    return feesB
}

function decimals() {
    return decimals
}

function feesD() {
    return feesD
}

function addressB() {
    return addressB
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feesC() {
    return feesC
}

function addressC() {
    return addressC
}

function addressD() {
    return addressD
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function addressA() {
    return addressA
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function change_owner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit Changeownerlog(arg1);
}

function Reissue(uint256 arg1) {
    require owner == msg.sender
    balanceOf[address(msg.sender)] += arg1
    totalSupply += arg1
    emit Reissuelog(arg1);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function setaddress(address arg1, address arg2, address arg3, address arg4) {
    require owner == msg.sender
    addressA = arg1
    addressB = arg2
    addressC = arg3
    addressD = arg4
    emit Setfeeaddrlog(address(arg1), address(arg2), address(arg3), arg4);
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

function setfees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    if arg1 > 0:
        if arg2 > 0:
            if arg3 > 0:
                if arg4 > 0:
                    feesA = arg1
                    feesB = arg2
                    feesC = arg3
                    feesD = arg4
                    emit Setfeeslog(arg1, arg2, arg3, arg4);
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)
    require balanceOf[address(arg1)] + arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000) > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (feesA * arg2 / 10000) + (feesB * arg2 / 10000) + (feesC * arg2 / 10000) + (feesD * arg2 / 10000)
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    emit Transfer((arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)), msg.sender, arg1);
    require addressA
    require balanceOf[address(msg.sender)] >= feesA * arg2 / 10000
    require balanceOf[stor5] + (feesA * arg2 / 10000) > balanceOf[stor5]
    balanceOf[address(msg.sender)] -= feesA * arg2 / 10000
    balanceOf[stor5] += feesA * arg2 / 10000
    require balanceOf[address(msg.sender)] + balanceOf[stor5] == balanceOf[address(msg.sender)] + balanceOf[stor5]
    emit Fee1((arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)), msg.sender, arg1);
    require addressB
    require balanceOf[address(msg.sender)] >= feesB * arg2 / 10000
    require balanceOf[stor6] + (feesB * arg2 / 10000) > balanceOf[stor6]
    balanceOf[address(msg.sender)] -= feesB * arg2 / 10000
    balanceOf[stor6] += feesB * arg2 / 10000
    require balanceOf[address(msg.sender)] + balanceOf[stor6] == balanceOf[address(msg.sender)] + balanceOf[stor6]
    emit Fee2((arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)), msg.sender, arg1);
    require addressC
    require balanceOf[address(msg.sender)] >= feesC * arg2 / 10000
    require balanceOf[stor7] + (feesC * arg2 / 10000) > balanceOf[stor7]
    balanceOf[address(msg.sender)] -= feesC * arg2 / 10000
    balanceOf[stor7] += feesC * arg2 / 10000
    require balanceOf[address(msg.sender)] + balanceOf[stor7] == balanceOf[address(msg.sender)] + balanceOf[stor7]
    emit Fee3((arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)), msg.sender, arg1);
    require addressD
    require balanceOf[address(msg.sender)] >= feesD * arg2 / 10000
    require balanceOf[stor8] + (feesD * arg2 / 10000) > balanceOf[stor8]
    balanceOf[address(msg.sender)] -= feesD * arg2 / 10000
    balanceOf[stor8] += feesD * arg2 / 10000
    require balanceOf[address(msg.sender)] + balanceOf[stor8] == balanceOf[address(msg.sender)] + balanceOf[stor8]
    emit Fee4((arg2 - (feesA * arg2 / 10000) - (feesB * arg2 / 10000) - (feesC * arg2 / 10000) - (feesD * arg2 / 10000)), msg.sender, arg1);
}



}
