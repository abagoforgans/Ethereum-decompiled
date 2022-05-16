contract main {




// =====================  Runtime code  =====================


const name = 'Basic Integration Token'

const decimals = 18

const initialSupply = 10^9

const version = '1.0'

const symbol = 'BINTO'


address ownerAccount;
uint256 totalSupply;
uint256 purchaseRate;
uint8 stor3;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function purchaseRate() {
    return purchaseRate
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function ownerAccount() {
    return ownerAccount
}

function isSaleEnded() {
    return bool(stor3)
}

function endSale() {
    require msg.sender == ownerAccount
    stor3 = 1
}

function setPurchaseRate(uint256 arg1) {
    require msg.sender == ownerAccount
    require purchaseRate != arg1
    purchaseRate = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) {
    require msg.sender == ownerAccount
    require arg1 > 0
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 > 0
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not stor3
    require msg.value > 0
    require purchaseRate
    require purchaseRate
    require purchaseRate * msg.value / purchaseRate == msg.value
    require purchaseRate * msg.value > 0
    require allowed[stor0][address(msg.sender)] + (purchaseRate * msg.value) >= allowed[stor0][address(msg.sender)]
    allowed[stor0][address(msg.sender)] += purchaseRate * msg.value
    require purchaseRate * msg.value > 0
    require balances[stor0] >= purchaseRate * msg.value
    require allowed[stor0][address(msg.sender)] >= purchaseRate * msg.value
    require purchaseRate * msg.value <= allowed[stor0][address(msg.sender)]
    allowed[stor0][address(msg.sender)] += -1 * purchaseRate * msg.value
    require balances[address(msg.sender)] + (purchaseRate * msg.value) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += purchaseRate * msg.value
    require purchaseRate * msg.value <= balances[stor0]
    balances[stor0] += -1 * purchaseRate * msg.value
    emit Transfer((purchaseRate * msg.value), ownerAccount, msg.sender);
    call ownerAccount with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendEtherToOwner() payable {
    require not stor3
    require msg.value > 0
    require purchaseRate
    require purchaseRate
    require purchaseRate * msg.value / purchaseRate == msg.value
    require purchaseRate * msg.value > 0
    require allowed[stor0][address(msg.sender)] + (purchaseRate * msg.value) >= allowed[stor0][address(msg.sender)]
    allowed[stor0][address(msg.sender)] += purchaseRate * msg.value
    require purchaseRate * msg.value > 0
    require balances[stor0] >= purchaseRate * msg.value
    require allowed[stor0][address(msg.sender)] >= purchaseRate * msg.value
    require purchaseRate * msg.value <= allowed[stor0][address(msg.sender)]
    allowed[stor0][address(msg.sender)] += -1 * purchaseRate * msg.value
    require balances[address(msg.sender)] + (purchaseRate * msg.value) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += purchaseRate * msg.value
    require purchaseRate * msg.value <= balances[stor0]
    balances[stor0] += -1 * purchaseRate * msg.value
    emit Transfer((purchaseRate * msg.value), ownerAccount, msg.sender);
    call ownerAccount with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
