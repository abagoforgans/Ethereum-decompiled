contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 11
    stor4.length.field_8 = ' Casper 0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 9
    stor5.length.field_8 = 'Casper0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor6.length) = 0
    stor6.length.field_1 = 3
    stor6.length.field_8 = 'CST' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = 0
    stor0 = msg.sender
    stor2 = 21 * 10^6
    stor3[address(this.address)] = 20 * 10^6
    stor3[stor0] = stor2 - stor3[address(this.address)]
    emit Transfer(stor3[stor0], this.address, stor0);
    return code.data[973 len 3151]
}



// =====================  Runtime code  =====================


address owner;
address candidateAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function candidate() {
    return candidateAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function addCandidate(address arg1) {
    require owner == msg.sender
    require arg1
    candidateAddress = arg1
}

function sub_f1adb317(?) {
    require candidateAddress == msg.sender
    owner = candidateAddress
    candidateAddress = 0
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require balanceOf[address(this.address)] > 0
    if 5000 * msg.value / 10^18 <= balanceOf[address(this.address)]:
        require 5000 * msg.value / 10^18 > 0
        balanceOf[address(msg.sender)] += 5000 * msg.value / 10^18
        balanceOf[address(this.address)] -= 5000 * msg.value / 10^18
        emit Transfer((5000 * msg.value / 10^18), this.address, msg.sender);
    else:
        call msg.sender with:
           value msg.value - (10^18 * balanceOf[address(this.address)] / 5000) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require balanceOf[address(this.address)] > 0
        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
