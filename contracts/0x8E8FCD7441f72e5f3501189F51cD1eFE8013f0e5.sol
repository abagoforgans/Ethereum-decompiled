contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor6;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 10^18 * code.data[9409 len 32]
    stor6[address(msg.sender)] = stor1
    return code.data[217 len 9192]
}



// =====================  Runtime code  =====================


const name = 'ETH5'

const decimals = 18

const symbol = 'ETH.freedom'


address owner;
uint256 totalSupply;
uint256 currentTotalSupply;
uint256 startBalance;
uint256 buyPrice;
mapping of uint8 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;

function totalSupply() {
    return totalSupply
}

function startBalance() {
    return startBalance
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
    return bool(stor8[arg1])
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
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function getEth(uint256 arg1) payable {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require arg1 <= stor6[address(msg.sender)]
    require arg1 <= stor6[address(msg.sender)]
    stor6[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function balanceOf(address arg1) {
    if currentTotalSupply >= totalSupply:
        return stor6[address(arg1)]
    if stor5[address(arg1)]:
        return stor6[address(arg1)]
    require stor6[address(arg1)] + startBalance >= stor6[address(arg1)]
    return (stor6[address(arg1)] + startBalance)
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
    stor6[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function _fallback() payable {
    require stor6[address(msg.sender)] + (msg.value * buyPrice) >= stor6[address(msg.sender)]
    stor6[address(msg.sender)] += msg.value * buyPrice
    require msg.value * buyPrice <= stor6[stor0]
    stor6[stor0] += -1 * msg.value * buyPrice
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
    if not stor5[address(msg.sender)]:
        if currentTotalSupply < totalSupply:
            require stor6[address(msg.sender)] + startBalance >= stor6[address(msg.sender)]
            stor6[address(msg.sender)] += startBalance
            stor5[address(msg.sender)] = 1
            require currentTotalSupply + startBalance >= currentTotalSupply
            currentTotalSupply += startBalance
    require not stor8[address(msg.sender)]
    require arg2 <= stor6[address(msg.sender)]
    require arg2 <= stor6[address(msg.sender)]
    stor6[address(msg.sender)] -= arg2
    require stor6[address(arg1)] + arg2 >= stor6[address(arg1)]
    stor6[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= stor6[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor8[address(arg1)]
    if not stor5[address(arg1)]:
        if currentTotalSupply < totalSupply:
            stor5[address(arg1)] = 1
            require stor6[address(arg1)] + startBalance >= stor6[address(arg1)]
            stor6[address(arg1)] += startBalance
            require currentTotalSupply + startBalance >= currentTotalSupply
            currentTotalSupply += startBalance
    require arg3 <= stor6[address(arg1)]
    stor6[address(arg1)] -= arg3
    require stor6[address(arg2)] + arg3 >= stor6[address(arg2)]
    stor6[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
