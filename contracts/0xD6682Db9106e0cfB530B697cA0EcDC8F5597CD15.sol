contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
mapping of uint8 stor5;

function _fallback() payable {
    stor3 = this.address
    require not msg.value
    stor5[address(msg.sender)] = 1
    stor0 = 96000000 * 10^18
    stor1[stor3] = stor0
    return code.data[304 len 7315]
}



// =====================  Runtime code  =====================


const name = 'RxEAL'

const decimals = 18

const symbol = 'RXL'

const INITIAL_SUPPLY = 96000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address vaultAddress;
address salesAgentAddress;
mapping of uint8 stor5;

function owners(address arg1) {
    return bool(stor5[arg1])
}

function salesAgent() {
    return salesAgentAddress
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function removeSalesAgent() {
    require bool(stor5[address(msg.sender)]) == 1
    emit SalesAgentRemoved(salesAgentAddress);
    salesAgentAddress = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function grantOwnership(address arg1) {
    require bool(stor5[address(msg.sender)]) == 1
    require arg1
    stor5[address(arg1)] = 1
    emit OwnershipGranted(msg.sender, arg1);
}

function revokeOwnership(address arg1) {
    require bool(stor5[address(msg.sender)]) == 1
    require arg1 != msg.sender
    stor5[address(arg1)] = 0
    emit OwnershipRevoked(msg.sender, arg1);
}

function transferSalesAgentPermissions(address arg1) {
    require bool(stor5[address(msg.sender)]) == 1
    emit SalesAgentPermissionsTransferred(salesAgentAddress, arg1);
    salesAgentAddress = arg1
}

function burn(uint256 arg1) {
    require bool(stor5[address(msg.sender)]) == 1
    require arg1 > 0
    require arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferTokensFromVault(address arg1, address arg2, uint256 arg3) {
    require salesAgentAddress == msg.sender
    require arg3 <= balanceOf[stor3]
    balanceOf[stor3] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
