contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor9; offset 256
uint8 stor9; offset 160
uint32 stor9; offset 168
address stor9;
uint256 storF54C;

function _fallback() {
    stor3 = 200000000 * 10^18
    bool(stor0.length) = 0
    stor0.length.field_1 = 27
    stor0.length.field_8 = 'BadischeAnilinundSodaFabrik' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'BASF' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    storF54C = stor3
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  stor3,
    emit 0x0: stor3
    emit 0x8f1e8c70: stor3
    stor6 = 58 * 10^18
    stor7 = 424420 * 3600
    stor8 = 428092 * 3600
    address(stor9.field_0) = 0x6e9d989e1585defefd16b9d3a22ba8640f1ea9c7
    uint8(stor9.field_160) = 1
    stor9.field_168 % 16777216 = 0
    stor9.field_256 % 1 = 0
    return code.data[590 len 2104]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 airAmount;
uint256 airBegintime;
uint256 airEndtime;
uint32 airLimitCount; offset 160
address airSenderAddress;
mapping of uint32 airCountOf;

function name() {
    return name[0 len name.length]
}

function airAmount() {
    return airAmount
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function airSender() {
    return airSenderAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function airCountOf(address arg1) {
    return airCountOf[arg1]
}

function airEndtime() {
    return airEndtime
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function airBegintime() {
    return airBegintime
}

function airLimitCount() {
    return airLimitCount
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + arg3 + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airdrop() payable {
    require block.timestamp >= airBegintime
    require block.timestamp <= airEndtime
    require not msg.value
    if airLimitCount > 0:
        require airCountOf[address(msg.sender)] < airLimitCount
    require msg.sender
    require balanceOf[stor9] >= airAmount
    require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
    balanceOf[stor9] -= airAmount
    balanceOf[address(msg.sender)] += airAmount
    require balanceOf[address(msg.sender)] + balanceOf[stor9] == balanceOf[stor9] + airAmount + balanceOf[address(msg.sender)]
    emit Transfer(airAmount, airSenderAddress, msg.sender);
    airCountOf[address(msg.sender)] = uint32(airCountOf[address(msg.sender)] + 1)
    emit Airdrop(airAmount, msg.sender, uint32(airCountOf[address(msg.sender)] + 1));
}

function _fallback() payable {
    require block.timestamp >= airBegintime
    require block.timestamp <= airEndtime
    require not msg.value
    if airLimitCount > 0:
        require airCountOf[address(msg.sender)] < airLimitCount
    require msg.sender
    require balanceOf[stor9] >= airAmount
    require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
    balanceOf[stor9] -= airAmount
    balanceOf[address(msg.sender)] += airAmount
    require balanceOf[address(msg.sender)] + balanceOf[stor9] == balanceOf[stor9] + airAmount + balanceOf[address(msg.sender)]
    emit Transfer(airAmount, airSenderAddress, msg.sender);
    airCountOf[address(msg.sender)] = uint32(airCountOf[address(msg.sender)] + 1)
    emit Airdrop(airAmount, msg.sender, uint32(airCountOf[address(msg.sender)] + 1));
}



}
