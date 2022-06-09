contract main {




// =====================  Runtime code  =====================


const name = 'MIG'

const decimals = 18

const initialSupply = 850000000 * 10^18

const symbol = 'MIG'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 price;
address stor5;
uint256 weiRaised;
uint8 stor7;

function totalSupply() {
    return totalSupply
}

function started() {
    return bool(stor7)
}

function weiRaised() {
    return weiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function stopSale() {
    require msg.sender == owner
    stor7 = 0
}

function startSale() {
    require msg.sender == owner
    stor7 = 1
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
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

function _fallback() payable {
    require msg.sender
    require stor7
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require stor7
    require msg.value
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenPurchase(msg.value, msg.value * price, msg.sender, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
