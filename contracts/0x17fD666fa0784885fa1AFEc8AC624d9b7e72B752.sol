contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
mapping of uint256 stor9;
uint256 stor11;

function _fallback() payable {
    mem[128] = 'FLiK 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 8
    stor1.length.field_8 = 'FLiK 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 14
    stor11 = 1
    require not msg.value
    mem[160 len -3633] = code.data[4267 len -3633]
    stor0 = msg.sender
    stor5 = mem[160]
    stor9[address(this.address)] = 90 * mem[160] / 100
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor9[address(msg.sender)] = 10 * stor5 / 100
    emit Transfer((10 * stor5 / 100), this.address, msg.sender);
    if mem[256]:
        stor7 = mem[256]
        stor8 = mem[288]
    else:
        if mem[288]:
            stor7 = mem[256]
            stor8 = mem[288]
        else:
            stor7 = 417552 * 24 * 3600
            stor8 = 418296 * 24 * 3600
    return code.data[634 len 3633]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor6;
uint256 icoSince;
uint256 icoTill;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 buyPrice;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function icoTill() {
    return icoTill
}

function decimals() {
    return decimals
}

function icoSince() {
    return icoSince
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(stor6)
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function setLocked(bool arg1) {
    require owner == msg.sender
    stor6 = uint8(arg1)
}

function setBuyPrice(uint256 arg1) {
    require owner == msg.sender
    buyPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferEthers() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function icoFinished() {
    require owner == msg.sender
    if block.timestamp > icoTill:
        balanceOf[stor0] += balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        emit Transfer(balanceOf[address(this.address)], this.address, owner);
        emit IcoFinished()
}

function transfer(address arg1, uint256 arg2) {
    require not stor6
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function _fallback() payable {
    require not stor6
    require block.timestamp >= icoSince
    require block.timestamp <= icoTill
    require msg.value > 0
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[this.address] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor6
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
