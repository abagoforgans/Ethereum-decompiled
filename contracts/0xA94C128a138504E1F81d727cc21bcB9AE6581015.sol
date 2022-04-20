contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
uint8 stor5;
uint8 stor7;
uint256 stor7; offset 8

function _fallback() payable {
    stor3 = 0x963cb5e7190fa77435afe61fbb8c2ddb073e42c2
    stor5 = 1
    Mask(248, 0, stor7.field_8) = 0
    require not msg.value
    stor1[stor3] = 350000000 * 10^18
    stor1[address(this.address)] = 650000000 * 10^18
    uint8(stor7.field_0) = 0
    return code.data[399 len 5948]
}



// =====================  Runtime code  =====================


const name = 'Freedom Token'

const totalSupply = 1000000000 * 10^18

const decimals = 18

const totalsupply = 1000000000 * 10^18

const symbol = 'FDM'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint8 stage;
uint8 stor7; offset 8
uint256 stor7; offset 8

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stage() {
    require stage <= 4
    return stage
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pauseICOs() {
    require msg.sender == stor3
    stage = 3
    stor5 = 1
}

function end_ICOs() {
    require msg.sender == stor3
    Mask(248, 0, stor7.field_8) = 1
    stage = 4
}

function Start_Resume_ICO() {
    require msg.sender == stor3
    stage = 2
    stor5 = 0
    stor4 = 10000
}

function Start_Resume_PreICO() {
    require msg.sender == stor3
    stage = 1
    stor5 = 0
    stor4 = 12000
}

function drain() {
    require msg.sender == stor3
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drainToken() {
    require msg.sender == stor3
    require uint8(stor7.field_8)
    require balanceOf[stor3] + balanceOf[address(this.address)] >= balanceOf[stor3]
    balanceOf[stor3] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, stor3);
    balanceOf[address(this.address)] = 0
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    require not stor5
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require msg.value * stor4 / msg.value == stor4
    stor6 = msg.value * stor4
    require balanceOf[address(this.address)] >= stor6
    require stor6 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= stor6
    require balanceOf[address(msg.sender)] + stor6 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor6
    emit Transfer(stor6, this.address, msg.sender);
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
