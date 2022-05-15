contract main {


// =======================  Init code  ======================


address stor1;
mapping of uint256 stor2;
uint256 stor4;
bool stor5;
uint256 stor5;
uint256 stor5; offset 1
uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() payable {
    stor1 = msg.sender
    stor4 = 15 * 10^17
    uint256(stor5.field_0) = 4 * 10^17
    stor6 = 2 * 10^15
    stor7 = 0
    require not msg.value
    stor1 = msg.sender
    require not stor7
    require 2 * uint256(stor5.field_0) >= uint256(stor5.field_0)
    bool(stor5.field_0) = 0
    uint255(stor5.field_1) = uint255(stor5.field_0)
    require uint256(stor5.field_0) + stor2[address(msg.sender)] >= stor2[address(msg.sender)]
    stor2[address(msg.sender)] += uint256(stor5.field_0)
    emit Distr(uint256(stor5.field_0), msg.sender);
    emit Transfer(uint256(stor5.field_0), 0, msg.sender);
    return code.data[440 len 3899]
}



// =====================  Runtime code  =====================


const name = 'KingToken'

const decimals = 8

const symbol = 'KING'

const MIN_CONTRIBUTION = 10^16


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 totalDistributed;
uint256 tokensPerEth;
uint8 stor7;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function distributionFinished() {
    return bool(stor7)
}

function tokensPerEth() {
    return tokensPerEth
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    if arg1:
        stor1 = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require stor1 == msg.sender
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function finishDistribution() {
    require stor1 == msg.sender
    require not stor7
    stor7 = 1
    emit DistrFinished()
    return 1
}

function withdraw() {
    require stor1 == msg.sender
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require stor1 == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function adminClaimAirdrop(address arg1, uint256 arg2) {
    require arg2 > 0
    require totalDistributed < totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalDistributed >= totalDistributed
    totalDistributed += arg2
    if arg2 + totalDistributed >= totalSupply:
        stor7 = 1
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getTokens() payable {
    require not stor7
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18 > 0:
            require not stor7
            require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
    if totalDistributed >= totalSupply:
        stor7 = 1
}

function _fallback() payable {
    require not stor7
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18 > 0:
            require not stor7
            require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
    if totalDistributed >= totalSupply:
        stor7 = 1
}

function adminClaimAirdropMultiple(address[] arg1, uint256 arg2) {
    idx = 0
    while idx < arg1.length:
        require arg2 > 0
        require totalDistributed < totalSupply
        require arg2 + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
        require arg2 + totalDistributed >= totalDistributed
        totalDistributed += arg2
        if arg2 + totalDistributed >= totalSupply:
            stor7 = 1
        mem[32] = 2
        mem[128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit Airdrop(arg2, balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = arg2
        emit Transfer(arg2, 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
