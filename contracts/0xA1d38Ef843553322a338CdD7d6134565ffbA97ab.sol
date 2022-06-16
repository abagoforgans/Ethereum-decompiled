contract main {




// =====================  Runtime code  =====================


const name = 'Levyte Token'

const decimals = 8

const requestMinimum = 10^16

const symbol = 'LEVT'


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint256 totalSupply;
uint256 totalDistributed;
uint256 tokensPerEth;
uint256 totalDonation;
uint256 target0drop;
uint256 progress0drop;
uint8 stor11;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function progress0drop() {
    return progress0drop
}

function sub_aa441370(?) {
    return totalDonation
}

function Claimed(address arg1) {
    return bool(stor4[arg1])
}

function distributionFinished() {
    return bool(stor11)
}

function tokensPerEth() {
    return tokensPerEth
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function target0drop() {
    return target0drop
}

function totalDonation() {
    return totalDonation
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

function finishDistribution() {
    require msg.sender == stor1
    require not stor11
    stor11 = 1
    emit DistrFinished()
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
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function DistributeAirdrop(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    require totalDistributed < totalSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalDistributed >= totalDistributed
    totalDistributed += arg2
    if totalSupply <= arg2 + totalDistributed:
        stor11 = 1
    emit Airdrop(arg2, balanceOf[address(arg1)], arg1);
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
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

function DistributeAirdropMultiple(address[] arg1, uint256 arg2) {
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        require msg.sender == stor1
        require arg2 > 0
        require totalDistributed < totalSupply
        require arg2 + balanceOf[address(cd[((32 * idx) + arg1 + 36)])] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += arg2
        require arg2 + totalDistributed >= totalDistributed
        totalDistributed += arg2
        if totalSupply <= arg2 + totalDistributed:
            stor11 = 1
        mem[32] = 2
        mem[128] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        emit Airdrop(arg2, balanceOf[address(cd[((32 * idx) + arg1 + 36)])], address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = arg2
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        emit Transfer(arg2, 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}

function getTokens() payable {
    require not stor11
    if not tokensPerEth:
        if stor4[address(msg.sender)]:
            require msg.value >= 10^16
        else:
            if progress0drop > target0drop:
                require msg.value >= 10^16
            else:
                require not stor11
                require totalDistributed + 2222200 * 10^6 >= totalDistributed
                totalDistributed += 2222200 * 10^6
                require balanceOf[address(msg.sender)] + 2222200 * 10^6 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 2222200 * 10^6
                emit Distr(2222200 * 10^6, msg.sender);
                emit Transfer(2222200 * 10^6, 0, msg.sender);
                stor4[address(msg.sender)] = 1
                progress0drop++
    else:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18:
            require msg.value >= 10^16
            if totalDonation > 299 * 10^18:
                require totalDonation <= 299 * 10^18
            else:
                if msg.value * tokensPerEth / 10^18 <= 0:
                    require totalDonation <= 299 * 10^18
                else:
                    require not stor11
                    require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value * tokensPerEth / 10^18
                    require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
                    emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
                    emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
        else:
            if stor4[address(msg.sender)]:
                require msg.value >= 10^16
            else:
                if progress0drop > target0drop:
                    require msg.value >= 10^16
                else:
                    require not stor11
                    require totalDistributed + 2222200 * 10^6 >= totalDistributed
                    totalDistributed += 2222200 * 10^6
                    require balanceOf[address(msg.sender)] + 2222200 * 10^6 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2222200 * 10^6
                    emit Distr(2222200 * 10^6, msg.sender);
                    emit Transfer(2222200 * 10^6, 0, msg.sender);
                    stor4[address(msg.sender)] = 1
                    progress0drop++
    if totalDistributed >= totalSupply:
        stor11 = 1
}

function _fallback() payable {
    require not stor11
    if not tokensPerEth:
        if stor4[address(msg.sender)]:
            require msg.value >= 10^16
        else:
            if progress0drop > target0drop:
                require msg.value >= 10^16
            else:
                require not stor11
                require totalDistributed + 2222200 * 10^6 >= totalDistributed
                totalDistributed += 2222200 * 10^6
                require balanceOf[address(msg.sender)] + 2222200 * 10^6 >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 2222200 * 10^6
                emit Distr(2222200 * 10^6, msg.sender);
                emit Transfer(2222200 * 10^6, 0, msg.sender);
                stor4[address(msg.sender)] = 1
                progress0drop++
    else:
        require msg.value * tokensPerEth / tokensPerEth == msg.value
        if msg.value * tokensPerEth / 10^18:
            require msg.value >= 10^16
            if totalDonation > 299 * 10^18:
                require totalDonation <= 299 * 10^18
            else:
                if msg.value * tokensPerEth / 10^18 <= 0:
                    require totalDonation <= 299 * 10^18
                else:
                    require not stor11
                    require (msg.value * tokensPerEth / 10^18) + totalDistributed >= totalDistributed
                    totalDistributed += msg.value * tokensPerEth / 10^18
                    require (msg.value * tokensPerEth / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value * tokensPerEth / 10^18
                    emit Distr((msg.value * tokensPerEth / 10^18), msg.sender);
                    emit Transfer((msg.value * tokensPerEth / 10^18), 0, msg.sender);
        else:
            if stor4[address(msg.sender)]:
                require msg.value >= 10^16
            else:
                if progress0drop > target0drop:
                    require msg.value >= 10^16
                else:
                    require not stor11
                    require totalDistributed + 2222200 * 10^6 >= totalDistributed
                    totalDistributed += 2222200 * 10^6
                    require balanceOf[address(msg.sender)] + 2222200 * 10^6 >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 2222200 * 10^6
                    emit Distr(2222200 * 10^6, msg.sender);
                    emit Transfer(2222200 * 10^6, 0, msg.sender);
                    stor4[address(msg.sender)] = 1
                    progress0drop++
    if totalDistributed >= totalSupply:
        stor11 = 1
    totalDonation += msg.value
}



}
