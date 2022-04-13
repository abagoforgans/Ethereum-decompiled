contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor8;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[192 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 1
    stor2.length.field_8 = 'b' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor4 = 0
    stor10 = block.timestamp / 12 * 3600
    stor11 = 100
    require not msg.value
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'MAVRO' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'MLM' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor8 = msg.sender
    return code.data[824 len 7019]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 sub_f01cfd0e;
mapping of uint256 allowance;
address owner;
address newOwner;
uint256 stor10;
uint256 stor11;

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

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f01cfd0e(?) {
    return sub_f01cfd0e[arg1]
}

function scam() {
    require msg.sender == owner
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function getMoney(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getCurrentRate() {
    require block.timestamp / 12 * 3600 >= stor10
    require stor11 + (block.timestamp / 12 * 3600) - stor10 >= stor11
    if not stor11 + (block.timestamp / 12 * 3600) - stor10:
        return ((10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10))
    require stor11 + (block.timestamp / 12 * 3600) - stor10
    require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10) / stor11 + (block.timestamp / 12 * 3600) - stor10 == 10^12
    return ((10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10))
}

function withdraw(uint256 arg1) {
    require sub_f01cfd0e[address(msg.sender)] + (72 * 24 * 3600) < block.timestamp
    require block.timestamp / 12 * 3600 >= stor10
    require stor11 + (block.timestamp / 12 * 3600) - stor10 >= stor11
    if stor11 + (block.timestamp / 12 * 3600) - stor10:
        require stor11 + (block.timestamp / 12 * 3600) - stor10
        require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10) / stor11 + (block.timestamp / 12 * 3600) - stor10 == 10^12
    if arg1:
        require arg1
        require (10^12 * stor11 * arg1) + (10^12 * block.timestamp / 12 * 3600 * arg1) - (10^12 * stor10 * arg1) / arg1 == (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
    totalSupply -= arg1
    call msg.sender with:
       value (10^12 * stor11 * arg1) + (10^12 * block.timestamp / 12 * 3600 * arg1) - (10^12 * stor10 * arg1) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    emit Destruction(arg1);
}

function deposit() payable {
    require block.timestamp / 12 * 3600 >= stor10
    require stor11 + (block.timestamp / 12 * 3600) - stor10 >= stor11
    if stor11 + (block.timestamp / 12 * 3600) - stor10:
        require stor11 + (block.timestamp / 12 * 3600) - stor10
        require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10) / stor11 + (block.timestamp / 12 * 3600) - stor10 == 10^12
    require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
    require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
    require balanceOf[address(msg.sender)] + (msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
    sub_f01cfd0e[address(msg.sender)] = block.timestamp
    require totalSupply + (msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)) >= totalSupply
    totalSupply += msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
    emit Issuance((msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)));
    emit Transfer((msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)), this.address, msg.sender);
}

function _fallback() payable {
    if msg.value != 0:
        require block.timestamp / 12 * 3600 >= stor10
        require stor11 + (block.timestamp / 12 * 3600) - stor10 >= stor11
        if stor11 + (block.timestamp / 12 * 3600) - stor10:
            require stor11 + (block.timestamp / 12 * 3600) - stor10
            require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10) / stor11 + (block.timestamp / 12 * 3600) - stor10 == 10^12
        require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
        require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
        require balanceOf[address(msg.sender)] + (msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
        sub_f01cfd0e[address(msg.sender)] = block.timestamp
        require totalSupply + (msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)) >= totalSupply
        totalSupply += msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
        emit Issuance((msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)));
        emit Transfer((msg.value / (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)), this.address, msg.sender);
    else:
        require sub_f01cfd0e[address(msg.sender)] + (72 * 24 * 3600) < block.timestamp
        require block.timestamp / 12 * 3600 >= stor10
        require stor11 + (block.timestamp / 12 * 3600) - stor10 >= stor11
        if stor11 + (block.timestamp / 12 * 3600) - stor10:
            require stor11 + (block.timestamp / 12 * 3600) - stor10
            require (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10) / stor11 + (block.timestamp / 12 * 3600) - stor10 == 10^12
        if balanceOf[address(msg.sender)]:
            require balanceOf[address(msg.sender)]
            require (10^12 * stor11 * balanceOf[address(msg.sender)]) + (10^12 * block.timestamp / 12 * 3600 * balanceOf[address(msg.sender)]) - (10^12 * stor10 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == (10^12 * stor11) + (10^12 * block.timestamp / 12 * 3600) - (10^12 * stor10)
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require totalSupply >= balanceOf[address(msg.sender)]
        totalSupply -= balanceOf[address(msg.sender)]
        call msg.sender with:
           value (10^12 * stor11 * balanceOf[address(msg.sender)]) + (10^12 * block.timestamp / 12 * 3600 * balanceOf[address(msg.sender)]) - (10^12 * stor10 * balanceOf[address(msg.sender)]) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, this.address);
        emit Destruction(balanceOf[address(msg.sender)]);
}



}
