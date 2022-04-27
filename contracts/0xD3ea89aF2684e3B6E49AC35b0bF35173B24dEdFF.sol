contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor7;
array of uint256 stor9;
uint8 stor10;
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
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'DEBIT Coin Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'DBC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor4 = 0
    mem[320] = '0.2'
    bool(stor9.length) = 0
    stor9.length.field_1 = 3
    stor9.length.field_8 = '0.2' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 1
    stor11 = 5
    require not msg.value
    mem[352 len -4879] = code.data[5677 len -4879]
    require mem[mem[352] + 352] > 0
    require mem[mem[384] + 352] > 0
    stor1[].field_0 = Array(len=mem[mem[352] + 352], data=mem[mem[352] + 384 len mem[mem[352] + 352]])
    stor2[].field_0 = Array(len=mem[mem[384] + 352], data=mem[mem[384] + 384 len mem[mem[384] + 352]])
    stor3 = mem[447 len 1]
    stor7 = msg.sender
    require mem[mem[384] + 352] <= 6
    emit DebitCoinTokenGenesis(this.address);
    return code.data[798 len 4879]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 version;
uint8 transfersEnabled;
uint256 stor10;
uint256 miningRewardPerETHBlock;
uint256 lastBlockRewarded;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function MiningRewardPerETHBlock() {
    return miningRewardPerETHBlock
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
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

function transfersEnabled() {
    return bool(uint8(transfersEnabled))
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function lastBlockRewarded() {
    return lastBlockRewarded
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function disableTransfers(bool arg1) {
    require owner == msg.sender
    uint256(stor10) = not arg1 or Mask(248, 8, uint256(stor10))
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function ChangeMiningReward(uint256 arg1) {
    require owner == msg.sender
    miningRewardPerETHBlock = arg1
    emit MiningRewardChanged(arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroy(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Destruction(arg2);
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
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

function issue(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Issuance(arg2);
    emit Transfer(arg2, this.address, arg1);
}

function TransferMinersReward() {
    require lastBlockRewarded < block.number
    lastBlockRewarded = block.number
    require miningRewardPerETHBlock + totalSupply >= totalSupply
    totalSupply += miningRewardPerETHBlock
    require miningRewardPerETHBlock + balanceOf[address(block.coinbase)] >= balanceOf[address(block.coinbase)]
    balanceOf[address(block.coinbase)] += miningRewardPerETHBlock
    emit MiningRewardSent(miningRewardPerETHBlock, this.address, block.coinbase);
}

function transfer(address arg1, uint256 arg2) {
    require uint8(transfersEnabled)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if arg1 == this.address:
        balanceOf[address(arg1)] -= arg2
        totalSupply -= arg2
        emit Destruction(arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(transfersEnabled)
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg2 == this.address:
        balanceOf[address(arg2)] -= arg3
        totalSupply -= arg3
        emit Destruction(arg3);
    return 1
}



}
