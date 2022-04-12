contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor1 = 0
    stor2 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    return code.data[133 len 4721]
}



// =====================  Runtime code  =====================


const name = 'Cybery Token'

const decimals = 18

const symbol = 'CYB'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 totalContribution;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function purchasingAllowed() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function getStats() {
    return totalContribution, totalSupply, bool(uint8(stor0.field_160))
}

function enablePurchasing() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 1
}

function disablePurchasing() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    require uint8(stor0.field_160)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalContribution + msg.value >= totalContribution
    totalContribution += msg.value
    require totalSupply + (100 * msg.value) >= totalSupply
    totalSupply += 100 * msg.value
    require balances[address(msg.sender)] + (100 * msg.value) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += 100 * msg.value
    require balances[address(stor0.field_0)] + (100 * msg.value) >= balances[address(stor0.field_0)]
    balances[address(stor0.field_0)] += 100 * msg.value
    emit Transfer((100 * msg.value), this.address, msg.sender);
}



}
