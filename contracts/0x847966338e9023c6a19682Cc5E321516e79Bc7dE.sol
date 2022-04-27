contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
uint256 stor3;
uint8 stor5;
uint8 stor8;

function _fallback() payable {
    stor0 = 292038000000 * 10^18
    stor3 = 10^6
    stor5 = 0
    require not msg.value
    stor2 = msg.sender
    stor8 = 0
    return code.data[182 len 5649]
}



// =====================  Runtime code  =====================


const name = 'GetRidOfThatBitch'

const decimals = 18

const symbol = 'FOt'


uint256 maxsupply;
uint256 totalsupply;
address owner;
uint256 _price_tokn;
uint256 stor4;
uint8 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage;

function totalSupply() {
    return totalsupply
}

function _price_tokn() {
    return _price_tokn
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function Totalsupply() {
    return totalsupply
}

function Maxsupply() {
    return maxsupply
}

function stage() {
    require stage <= 2
    return stage
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function StopICO() {
    require msg.sender == owner
    require stage <= 2
    require not stage
    stage = 1
    stor5 = 1
}

function releaseICO() {
    require msg.sender == owner
    require stage <= 2
    require stage == 1
    stage = 0
    stor5 = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintTokens(uint256 arg1) {
    require msg.sender == owner
    require stage <= 2
    require not stage
    require maxsupply >= totalsupply + arg1
    require arg1 > 0
    require balanceOf[stor2] + arg1 >= balanceOf[stor2]
    balanceOf[stor2] += arg1
    require totalsupply + arg1 >= totalsupply
    totalsupply += arg1
    emit Transfer(arg1, this.address, owner);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 >= 0
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
    require stage <= 2
    require not stage
    require not stor5
    require owner != msg.sender
    if not msg.value:
        stor4 = 0
    else:
        require msg.value
        require msg.value * _price_tokn / msg.value == _price_tokn
        stor4 = msg.value * _price_tokn
    require msg.sender
    require maxsupply >= totalsupply + stor4
    require stor4 > 0
    require balanceOf[address(msg.sender)] + stor4 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += stor4
    require totalsupply + stor4 >= totalsupply
    totalsupply += stor4
    emit Transfer(stor4, this.address, msg.sender);
}



}
