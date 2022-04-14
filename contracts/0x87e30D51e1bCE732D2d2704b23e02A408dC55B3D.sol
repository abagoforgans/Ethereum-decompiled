contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor5 = 418013 * 3600
    stor6 = 1506052799
    stor7 = 1000
    stor8 = 2747 * 10^18
    return code.data[151 len 5327]
}



// =====================  Runtime code  =====================


const name = 'IzibitsPreICOToken'

const decimals = 18

const symbol = 'pIZI'

const partner = 0xe93c551ac306f3a62049234b6ba0bf8cd543db52


address owner;
address newOwner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 STARTDATE;
uint256 ENDDATE;
uint256 BUYPRICE;
uint256 CAP;
uint256 totalEthers;

function totalEthers() {
    return totalEthers
}

function totalSupply() {
    return totalSupply
}

function ENDDATE() {
    return ENDDATE
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function BUYPRICE() {
    return BUYPRICE
}

function STARTDATE() {
    return STARTDATE
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function CAP() {
    return CAP
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= ENDDATE:
        require totalEthers == CAP
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= ENDDATE:
        require totalEthers == CAP
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp >= STARTDATE
    require block.timestamp <= ENDDATE
    require msg.value > 5 * 10^17
    require totalEthers + msg.value >= totalEthers
    require totalEthers + msg.value >= msg.value
    totalEthers += msg.value
    require totalEthers <= CAP
    if msg.value:
        require msg.value
        require msg.value * BUYPRICE / msg.value == BUYPRICE
    require msg.value * BUYPRICE > 0
    require totalSupply + (msg.value * BUYPRICE) >= totalSupply
    require totalSupply + (msg.value * BUYPRICE) >= msg.value * BUYPRICE
    totalSupply += msg.value * BUYPRICE
    require balanceOf[address(msg.sender)] + (msg.value * BUYPRICE) >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + (msg.value * BUYPRICE) >= msg.value * BUYPRICE
    balanceOf[address(msg.sender)] += msg.value * BUYPRICE
    emit Transfer((msg.value * BUYPRICE), 0, msg.sender);
    if msg.value:
        require msg.value
        require 88 * msg.value / msg.value == 88
    call owner with:
       value 88 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xe93c551ac306f3a62049234b6ba0bf8cd543db52 with:
       value msg.value - (88 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
}



}
