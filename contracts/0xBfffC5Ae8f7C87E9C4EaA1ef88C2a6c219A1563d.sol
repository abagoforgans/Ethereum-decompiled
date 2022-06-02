contract main {




// =====================  Runtime code  =====================


const name = 'Pik Token'

const decimals = 8

const requestMinimum = 10^16

const symbol = 'PIK'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 tokensForSale;
uint256 totalDistributed;
uint256 totalTokenSold;
uint256 totalWeiReceived;
uint256 tokensPerEth;
bool stor11; offset 256
uint8 stor11; offset 160
uint8 stor11; offset 168
uint128 stor11; offset 168
address stor11;

function icoStarted() {
    return bool(uint8(stor11.field_168))
}

function tokensForSale() {
    return tokensForSale
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalWeiReceived() {
    return totalWeiReceived
}

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function totalTokenSold() {
    return totalTokenSold
}

function distributionFinished() {
    return bool(uint8(stor11.field_160))
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
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == stor1
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function finishDistribution() {
    require msg.sender == stor1
    require not uint8(stor11.field_160)
    uint8(stor11.field_160) = 1
    emit DistrFinished()
    return 1
}

function startICO() {
    require msg.sender == stor1
    uint8(stor11.field_160) = 0
    uint8(stor11.field_168) = 1
    Mask(88, 0, stor11.field_168) = 0
    stor11.field_256 % 1 = 0
    emit ICOStarted()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    require msg.sender == stor1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAll() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require msg.sender == stor1
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if stor4[msg.sender]:
        return 0
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferTokenTo(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    require totalDistributed < totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalDistributed >= totalDistributed
    totalDistributed += arg2
    if totalSupply <= arg2 + totalDistributed:
        uint8(stor11.field_160) = 1
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if stor4[msg.sender]:
        return 0
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferTokenToMultiple(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _23 = mem[(32 * idx) + 128]
        require arg2 > 0
        require totalDistributed < totalSupply
        require arg2 + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = arg2 + balanceOf[mem[(32 * idx) + 140 len 20]]
        require arg2 + totalDistributed >= totalDistributed
        totalDistributed += arg2
        if totalSupply > arg2 + totalDistributed:
            mem[32] = 2
            _26 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_26], address(_23));
        else:
            uint8(stor11.field_160) = 1
            mem[32] = 2
            _33 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_33], address(_23));
        mem[(32 * arg1.length) + 128] = arg2
        mem[0] = address(_23)
        emit Transfer(arg2, 0, address(_23));
        idx = idx + 1
        continue 
}

function getTokens() payable {
    require not uint8(stor11.field_160)
    require uint8(stor11.field_168)
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18 > 0:
            require not uint8(stor11.field_160)
            require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
            require msg.value + totalWeiReceived >= totalWeiReceived
            totalWeiReceived += msg.value
            require (msg.value * tokensPerEth / 10^18) + totalTokenSold >= totalTokenSold
            totalTokenSold += msg.value * tokensPerEth / 10^18
    if totalTokenSold >= tokensForSale:
        uint8(stor11.field_160) = 1
    call address(stor11.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor11.field_160)
    require uint8(stor11.field_168)
    require msg.value >= 10^16
    require msg.value > 0
    if tokensPerEth:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18 > 0:
            require not uint8(stor11.field_160)
            require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
            totalDistributed += msg.value * tokensPerEth / 10^18
            require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
            emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
            emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
            require msg.value + totalWeiReceived >= totalWeiReceived
            totalWeiReceived += msg.value
            require (msg.value * tokensPerEth / 10^18) + totalTokenSold >= totalTokenSold
            totalTokenSold += msg.value * tokensPerEth / 10^18
    if totalTokenSold >= tokensForSale:
        uint8(stor11.field_160) = 1
    call address(stor11.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
