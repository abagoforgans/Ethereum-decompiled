contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor4; offset 8
mapping of uint256 stor5;

function _fallback() payable {
    stor0 = 10000000 * 10^18
    stor2 = 50
    stor3 = 15
    uint8(stor4.field_0) = 0
    Mask(248, 0, stor4.field_8) = 0
    require not msg.value
    stor1 = msg.sender
    stor5[stor1] = stor0
    return code.data[278 len 7160]
}



// =====================  Runtime code  =====================


const name = 'Boleno'

const decimals = 18

const symbol = 'BLN'


uint256 totalSupply;
address supplierAddress;
uint256 blnpereth;
uint256 bounty;
uint8 stor4;
uint8 stor4; offset 8
mapping of uint256 balances;
mapping of uint256 allowance;

function referral() {
    return bool(uint8(stor4.field_8))
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function blnpereth() {
    return blnpereth
}

function supplier() {
    return supplierAddress
}

function sale() {
    return bool(uint8(stor4.field_0))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function bounty() {
    return bounty
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setbounty(uint256 arg1) {
    require msg.sender == supplierAddress
    bounty = arg1
}

function setblnpereth(uint256 arg1) {
    require msg.sender == supplierAddress
    blnpereth = arg1
}

function triggerSale(bool arg1) {
    require msg.sender == supplierAddress
    uint8(stor4.field_0) = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function claimSale() {
    call 0xe6237a036366b8003aed725e8001bd91890be03f with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferSupply(address arg1) {
    require msg.sender == supplierAddress
    require balances[address(arg1)] + balances[stor1] >= balances[address(arg1)]
    balances[address(arg1)] += balances[stor1]
    balances[stor1] = 0
    emit Transfer(balances[stor1], supplierAddress, arg1);
    supplierAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp < 417432 * 24 * 3600:
        require msg.sender == supplierAddress
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require bool(uint8(stor4.field_0)) == 1
    require balances[stor1] >= msg.value * blnpereth
    require balances[address(msg.sender)] + (msg.value * blnpereth) >= balances[address(msg.sender)]
    balances[stor1] += -1 * msg.value * blnpereth
    balances[address(msg.sender)] += msg.value * blnpereth
    emit Transfer((msg.value * blnpereth), supplierAddress, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp < 417432 * 24 * 3600:
        require arg1 == supplierAddress
    require balances[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function referral(address arg1) payable {
    require bool(uint8(stor4.field_0)) == 1
    require bool(uint8(stor4.field_8)) == 1
    require balances[address(arg1)] >= 1000000000000000000 * 10^18
    require balances[stor1] >= (100 * msg.value * blnpereth / 100) + (bounty * msg.value * blnpereth / 100)
    require balances[address(msg.sender)] + (100 * msg.value * blnpereth / 100) + (bounty * msg.value * blnpereth / 100) >= balances[address(msg.sender)]
    balances[stor1] = balances[stor1] - (100 * msg.value * blnpereth / 100) - (bounty * msg.value * blnpereth / 100)
    balances[address(msg.sender)] = balances[address(msg.sender)] + (100 * msg.value * blnpereth / 100) + (bounty * msg.value * blnpereth / 100)
    emit Transfer(((100 * msg.value * blnpereth / 100) + (bounty * msg.value * blnpereth / 100)), supplierAddress, msg.sender);
    require balances[stor1] >= msg.value * blnpereth / 100 * bounty
    require balances[address(arg1)] + (msg.value * blnpereth / 100 * bounty) >= balances[address(arg1)]
    balances[stor1] += -1 * msg.value * blnpereth / 100 * bounty
    balances[address(arg1)] += msg.value * blnpereth / 100 * bounty
    emit Transfer((msg.value * blnpereth / 100 * bounty), supplierAddress, arg1);
}



}
