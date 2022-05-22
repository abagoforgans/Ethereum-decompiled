contract main {




// =====================  Runtime code  =====================


const name = 'EOS Rich Club'

const decimals = 18

const symbol = 32, 22, 0x5269636820436c7562efbc8900000000000000000000


address owner;
uint256 totalSupply;
uint256 currentTotalSupply;
uint256 airdrop;
uint256 startBalance;
uint256 buyPrice;
mapping of uint8 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
mapping of uint8 stor9;

function totalSupply() {
    return totalSupply
}

function startBalance() {
    return startBalance
}

function airdrop() {
    return airdrop
}

function currentTotalSupply() {
    return currentTotalSupply
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function selfdestructs() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function setPrices(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function modifyairdrop(uint256 arg1) {
    require msg.sender == owner
    startBalance = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function getEth(uint256 arg1) payable {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require arg1 <= stor7[address(msg.sender)]
    require arg1 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return stor7[address(arg1)]
    if stor6[address(arg1)]:
        return stor7[address(arg1)]
    require stor7[address(arg1)] + startBalance >= stor7[address(arg1)]
    return (stor7[address(arg1)] + startBalance)
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
    stor7[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function _fallback() payable {
    require stor7[address(msg.sender)] + (msg.value * buyPrice) >= stor7[address(msg.sender)]
    stor7[address(msg.sender)] += msg.value * buyPrice
    require msg.value * buyPrice <= stor7[stor0]
    stor7[stor0] += -1 * msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), owner, msg.sender);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if not stor6[address(msg.sender)]:
        if currentTotalSupply < totalSupply:
            if currentTotalSupply < airdrop:
                require stor7[address(msg.sender)] + startBalance >= stor7[address(msg.sender)]
                stor7[address(msg.sender)] += startBalance
                stor6[address(msg.sender)] = 1
                require currentTotalSupply + startBalance >= currentTotalSupply
                currentTotalSupply += startBalance
    require not stor9[address(msg.sender)]
    require arg2 <= stor7[address(msg.sender)]
    require arg2 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg2
    require stor7[address(arg1)] + arg2 >= stor7[address(arg1)]
    stor7[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= stor7[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor9[address(arg1)]
    if not stor6[address(arg1)]:
        if currentTotalSupply < totalSupply:
            if currentTotalSupply < airdrop:
                stor6[address(arg1)] = 1
                require stor7[address(arg1)] + startBalance >= stor7[address(arg1)]
                stor7[address(arg1)] += startBalance
                require currentTotalSupply + startBalance >= currentTotalSupply
                currentTotalSupply += startBalance
    require arg3 <= stor7[address(arg1)]
    stor7[address(arg1)] -= arg3
    require stor7[address(arg2)] + arg3 >= stor7[address(arg2)]
    stor7[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
