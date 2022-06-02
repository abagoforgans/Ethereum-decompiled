contract main {




// =====================  Runtime code  =====================


const name = 'INDOCHAIN'

const decimals = 8

const symbol = 'ICN'

const minContribution = 10^15


address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 totalDistributed;
uint256 tokensPerEth;
uint256 tokensPer2Eth;
uint256 tokensPer3Eth;
uint256 startPase;
uint256 maxPhase1;
uint256 maxPhase2;
uint256 maxPhase3;
uint256 currentPhase;
uint256 soldPhase1;
uint256 soldPhase2;
uint256 soldPhase3;
uint256 pase1;
uint256 pase2;
uint256 pase3;
uint8 stor20;

function currentPhase() {
    return currentPhase
}

function totalSupply() {
    return totalSupply
}

function pase1() {
    return pase1
}

function maxPhase2() {
    return maxPhase2
}

function soldPhase2() {
    return soldPhase2
}

function maxPhase1() {
    return maxPhase1
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startPase() {
    return startPase
}

function soldPhase3() {
    return soldPhase3
}

function maxPhase3() {
    return maxPhase3
}

function distributionFinished() {
    return bool(stor20)
}

function tokensPerEth() {
    return tokensPerEth
}

function pase2() {
    return pase2
}

function tokensPer3Eth() {
    return tokensPer3Eth
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function soldPhase1() {
    return soldPhase1
}

function tokensPer2Eth() {
    return tokensPer2Eth
}

function totalDistributed() {
    return totalDistributed
}

function pase3() {
    return pase3
}

function transferOwnership(address arg1) {
    require msg.sender == stor1
    if arg1:
        stor1 = arg1
}

function updateMaxPhase1(uint256 arg1) {
    require msg.sender == stor1
    maxPhase1 = arg1
    emit MaxPhase1Updated(arg1);
}

function updateMaxPhase2(uint256 arg1) {
    require msg.sender == stor1
    maxPhase2 = arg1
    emit MaxPhase2Updated(arg1);
}

function updateMaxPhase3(uint256 arg1) {
    require msg.sender == stor1
    maxPhase3 = arg1
    emit MaxPhase3Updated(arg1);
}

function updateTokensPerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPerEth = arg1
    emit TokensPerEthUpdated(arg1);
}

function updateTokens2PerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPer2Eth = arg1
    emit TokensPerEth2Updated(arg1);
}

function updateTokens3PerEth(uint256 arg1) {
    require msg.sender == stor1
    tokensPer3Eth = arg1
    emit TokensPerEth3Updated(arg1);
}

function finishDistribution() {
    require msg.sender == stor1
    require not stor20
    stor20 = 1
    emit DistrFinished()
    return 1
}

function updateStartPhase(uint256 arg1) {
    require msg.sender == stor1
    startPase = arg1
    pase1 = startPase + (720 * 24 * 3600)
    pase2 = pase1 + (720 * 24 * 3600)
    pase3 = pase2 + (720 * 24 * 3600)
    emit StartPaseUpdated(arg1);
}

function withdraw() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function adminClaimAirdrop(address arg1, uint256 arg2) {
    require msg.sender == stor1
    require arg2 > 0
    require totalDistributed < totalSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalDistributed + arg2 >= totalDistributed
    totalDistributed += arg2
    if totalDistributed >= totalSupply:
        stor20 = 1
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
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdrawAltcoinTokens(address arg1) {
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

function adminClaimAirdropMultiple(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        require arg2 > 0
        require totalDistributed < totalSupply
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + arg2
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        if totalDistributed < totalSupply:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _22 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_22], address(_19));
        else:
            stor20 = 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _27 = sha3(address(mem[(32 * idx) + 128]), 2)
            mem[(32 * arg1.length) + 160] = balanceOf[address(mem[(32 * idx) + 128])]
            emit Airdrop(arg2, stor[_27], address(_19));
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_19));
        idx = idx + 1
        continue 
}

function getTokens() payable {
    require not stor20
    require msg.value >= 10^15
    require msg.value > 0
    require block.timestamp > startPase
    require block.timestamp < pase3
    if block.timestamp <= startPase:
        if block.timestamp < pase1:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
        else:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
            else:
                if soldPhase2 <= maxPhase2:
                    require tokensPer2Eth
                    if msg.value / tokensPer2Eth > 0:
                        if block.timestamp <= startPase:
                            if block.timestamp <= pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                        else:
                            if block.timestamp > pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if soldPhase1 <= maxPhase1:
                                    require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                    soldPhase1 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                        require not stor20
                        require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                        totalDistributed += msg.value / tokensPer2Eth
                        require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                        emit Distr((msg.value / tokensPer2Eth), msg.sender);
                        emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
    else:
        if block.timestamp >= pase1:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
            else:
                if soldPhase2 <= maxPhase2:
                    require tokensPer2Eth
                    if msg.value / tokensPer2Eth > 0:
                        if block.timestamp <= startPase:
                            if block.timestamp <= pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                        else:
                            if block.timestamp > pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if soldPhase1 <= maxPhase1:
                                    require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                    soldPhase1 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                        require not stor20
                        require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                        totalDistributed += msg.value / tokensPer2Eth
                        require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                        emit Distr((msg.value / tokensPer2Eth), msg.sender);
                        emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
        else:
            if soldPhase1 <= maxPhase1:
                require tokensPerEth
                if msg.value / tokensPerEth > 0:
                    if block.timestamp <= startPase:
                        if block.timestamp <= pase1:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                        else:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                            else:
                                if soldPhase2 <= maxPhase2:
                                    require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                    soldPhase2 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                    else:
                        if block.timestamp > pase1:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                            else:
                                if soldPhase2 <= maxPhase2:
                                    require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                    soldPhase2 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                        else:
                            if soldPhase1 <= maxPhase1:
                                require soldPhase1 + (2 * msg.value / tokensPerEth) <= maxPhase1
                                soldPhase1 += msg.value / tokensPerEth
                            else:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPerEth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPerEth
                    require not stor20
                    require totalDistributed + (msg.value / tokensPerEth) >= totalDistributed
                    totalDistributed += msg.value / tokensPerEth
                    require balanceOf[address(msg.sender)] + (msg.value / tokensPerEth) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value / tokensPerEth
                    emit Distr((msg.value / tokensPerEth), msg.sender);
                    emit Transfer((msg.value / tokensPerEth), 0, msg.sender);
            else:
                if block.timestamp < pase1:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
                    else:
                        if soldPhase2 <= maxPhase2:
                            require tokensPer2Eth
                            if msg.value / tokensPer2Eth > 0:
                                if block.timestamp <= startPase:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp > pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if soldPhase1 <= maxPhase1:
                                            require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                            soldPhase1 += msg.value / tokensPer2Eth
                                        else:
                                            if block.timestamp <= pase1:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                                else:
                                                    if soldPhase2 <= maxPhase2:
                                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                        soldPhase2 += msg.value / tokensPer2Eth
                                                    else:
                                                        if block.timestamp > pase2:
                                                            if block.timestamp <= pase3:
                                                                if soldPhase3 <= maxPhase3:
                                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                                    soldPhase3 += msg.value / tokensPer2Eth
                                require not stor20
                                require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                                totalDistributed += msg.value / tokensPer2Eth
                                require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                                emit Distr((msg.value / tokensPer2Eth), msg.sender);
                                emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                        else:
                            if block.timestamp >= pase2:
                                if block.timestamp < pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require tokensPer3Eth
                                        if msg.value / tokensPer3Eth > 0:
                                            if block.timestamp <= startPase:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp > pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if soldPhase1 <= maxPhase1:
                                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                        soldPhase1 += msg.value / tokensPer3Eth
                                                    else:
                                                        if block.timestamp <= pase1:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                            else:
                                                                if soldPhase2 <= maxPhase2:
                                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                                else:
                                                                    if block.timestamp > pase2:
                                                                        if block.timestamp <= pase3:
                                                                            if soldPhase3 <= maxPhase3:
                                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                                soldPhase3 += msg.value / tokensPer3Eth
                                            require not stor20
                                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                            totalDistributed += msg.value / tokensPer3Eth
                                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
    if totalDistributed >= totalSupply:
        stor20 = 1
}

function _fallback() payable {
    require not stor20
    require msg.value >= 10^15
    require msg.value > 0
    require block.timestamp > startPase
    require block.timestamp < pase3
    if block.timestamp <= startPase:
        if block.timestamp < pase1:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
        else:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
            else:
                if soldPhase2 <= maxPhase2:
                    require tokensPer2Eth
                    if msg.value / tokensPer2Eth > 0:
                        if block.timestamp <= startPase:
                            if block.timestamp <= pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                        else:
                            if block.timestamp > pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if soldPhase1 <= maxPhase1:
                                    require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                    soldPhase1 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                        require not stor20
                        require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                        totalDistributed += msg.value / tokensPer2Eth
                        require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                        emit Distr((msg.value / tokensPer2Eth), msg.sender);
                        emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
    else:
        if block.timestamp >= pase1:
            if block.timestamp >= pase2:
                if block.timestamp < pase3:
                    if soldPhase3 <= maxPhase3:
                        require tokensPer3Eth
                        if msg.value / tokensPer3Eth > 0:
                            if block.timestamp <= startPase:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                            else:
                                if block.timestamp > pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                else:
                                    if soldPhase1 <= maxPhase1:
                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                        soldPhase1 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                            require not stor20
                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                            totalDistributed += msg.value / tokensPer3Eth
                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
            else:
                if soldPhase2 <= maxPhase2:
                    require tokensPer2Eth
                    if msg.value / tokensPer2Eth > 0:
                        if block.timestamp <= startPase:
                            if block.timestamp <= pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                        else:
                            if block.timestamp > pase1:
                                if block.timestamp > pase2:
                                    if block.timestamp <= pase3:
                                        if soldPhase3 <= maxPhase3:
                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if soldPhase2 <= maxPhase2:
                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                        soldPhase2 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                            else:
                                if soldPhase1 <= maxPhase1:
                                    require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                    soldPhase1 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                        require not stor20
                        require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                        totalDistributed += msg.value / tokensPer2Eth
                        require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                        emit Distr((msg.value / tokensPer2Eth), msg.sender);
                        emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
        else:
            if soldPhase1 <= maxPhase1:
                require tokensPerEth
                if msg.value / tokensPerEth > 0:
                    if block.timestamp <= startPase:
                        if block.timestamp <= pase1:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                        else:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                            else:
                                if soldPhase2 <= maxPhase2:
                                    require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                    soldPhase2 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                    else:
                        if block.timestamp > pase1:
                            if block.timestamp > pase2:
                                if block.timestamp <= pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                        soldPhase3 += msg.value / tokensPerEth
                            else:
                                if soldPhase2 <= maxPhase2:
                                    require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                    soldPhase2 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                        else:
                            if soldPhase1 <= maxPhase1:
                                require soldPhase1 + (2 * msg.value / tokensPerEth) <= maxPhase1
                                soldPhase1 += msg.value / tokensPerEth
                            else:
                                if block.timestamp <= pase1:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                                else:
                                    if block.timestamp > pase2:
                                        if block.timestamp <= pase3:
                                            if soldPhase3 <= maxPhase3:
                                                require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                soldPhase3 += msg.value / tokensPerEth
                                    else:
                                        if soldPhase2 <= maxPhase2:
                                            require soldPhase2 + (2 * msg.value / tokensPerEth) <= maxPhase2
                                            soldPhase2 += msg.value / tokensPerEth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPerEth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPerEth
                    require not stor20
                    require totalDistributed + (msg.value / tokensPerEth) >= totalDistributed
                    totalDistributed += msg.value / tokensPerEth
                    require balanceOf[address(msg.sender)] + (msg.value / tokensPerEth) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += msg.value / tokensPerEth
                    emit Distr((msg.value / tokensPerEth), msg.sender);
                    emit Transfer((msg.value / tokensPerEth), 0, msg.sender);
            else:
                if block.timestamp < pase1:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
                else:
                    if block.timestamp >= pase2:
                        if block.timestamp < pase3:
                            if soldPhase3 <= maxPhase3:
                                require tokensPer3Eth
                                if msg.value / tokensPer3Eth > 0:
                                    if block.timestamp <= startPase:
                                        if block.timestamp <= pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                    else:
                                        if block.timestamp > pase1:
                                            if block.timestamp > pase2:
                                                if block.timestamp <= pase3:
                                                    if soldPhase3 <= maxPhase3:
                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if soldPhase2 <= maxPhase2:
                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                        else:
                                            if soldPhase1 <= maxPhase1:
                                                require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                soldPhase1 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                    require not stor20
                                    require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                    totalDistributed += msg.value / tokensPer3Eth
                                    require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                    emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                    emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
                    else:
                        if soldPhase2 <= maxPhase2:
                            require tokensPer2Eth
                            if msg.value / tokensPer2Eth > 0:
                                if block.timestamp <= startPase:
                                    if block.timestamp <= pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                else:
                                    if block.timestamp > pase1:
                                        if block.timestamp > pase2:
                                            if block.timestamp <= pase3:
                                                if soldPhase3 <= maxPhase3:
                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                    soldPhase3 += msg.value / tokensPer2Eth
                                        else:
                                            if soldPhase2 <= maxPhase2:
                                                require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                soldPhase2 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                    else:
                                        if soldPhase1 <= maxPhase1:
                                            require soldPhase1 + (2 * msg.value / tokensPer2Eth) <= maxPhase1
                                            soldPhase1 += msg.value / tokensPer2Eth
                                        else:
                                            if block.timestamp <= pase1:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                            else:
                                                if block.timestamp > pase2:
                                                    if block.timestamp <= pase3:
                                                        if soldPhase3 <= maxPhase3:
                                                            require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                            soldPhase3 += msg.value / tokensPer2Eth
                                                else:
                                                    if soldPhase2 <= maxPhase2:
                                                        require soldPhase2 + (2 * msg.value / tokensPer2Eth) <= maxPhase2
                                                        soldPhase2 += msg.value / tokensPer2Eth
                                                    else:
                                                        if block.timestamp > pase2:
                                                            if block.timestamp <= pase3:
                                                                if soldPhase3 <= maxPhase3:
                                                                    require soldPhase3 + (2 * msg.value / tokensPer2Eth) <= maxPhase3
                                                                    soldPhase3 += msg.value / tokensPer2Eth
                                require not stor20
                                require totalDistributed + (msg.value / tokensPer2Eth) >= totalDistributed
                                totalDistributed += msg.value / tokensPer2Eth
                                require balanceOf[address(msg.sender)] + (msg.value / tokensPer2Eth) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += msg.value / tokensPer2Eth
                                emit Distr((msg.value / tokensPer2Eth), msg.sender);
                                emit Transfer((msg.value / tokensPer2Eth), 0, msg.sender);
                        else:
                            if block.timestamp >= pase2:
                                if block.timestamp < pase3:
                                    if soldPhase3 <= maxPhase3:
                                        require tokensPer3Eth
                                        if msg.value / tokensPer3Eth > 0:
                                            if block.timestamp <= startPase:
                                                if block.timestamp <= pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                            else:
                                                if block.timestamp > pase1:
                                                    if block.timestamp > pase2:
                                                        if block.timestamp <= pase3:
                                                            if soldPhase3 <= maxPhase3:
                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                soldPhase3 += msg.value / tokensPer3Eth
                                                    else:
                                                        if soldPhase2 <= maxPhase2:
                                                            require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                            soldPhase2 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                else:
                                                    if soldPhase1 <= maxPhase1:
                                                        require soldPhase1 + (2 * msg.value / tokensPer3Eth) <= maxPhase1
                                                        soldPhase1 += msg.value / tokensPer3Eth
                                                    else:
                                                        if block.timestamp <= pase1:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                        else:
                                                            if block.timestamp > pase2:
                                                                if block.timestamp <= pase3:
                                                                    if soldPhase3 <= maxPhase3:
                                                                        require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                        soldPhase3 += msg.value / tokensPer3Eth
                                                            else:
                                                                if soldPhase2 <= maxPhase2:
                                                                    require soldPhase2 + (2 * msg.value / tokensPer3Eth) <= maxPhase2
                                                                    soldPhase2 += msg.value / tokensPer3Eth
                                                                else:
                                                                    if block.timestamp > pase2:
                                                                        if block.timestamp <= pase3:
                                                                            if soldPhase3 <= maxPhase3:
                                                                                require soldPhase3 + (2 * msg.value / tokensPer3Eth) <= maxPhase3
                                                                                soldPhase3 += msg.value / tokensPer3Eth
                                            require not stor20
                                            require totalDistributed + (msg.value / tokensPer3Eth) >= totalDistributed
                                            totalDistributed += msg.value / tokensPer3Eth
                                            require balanceOf[address(msg.sender)] + (msg.value / tokensPer3Eth) >= balanceOf[address(msg.sender)]
                                            balanceOf[address(msg.sender)] += msg.value / tokensPer3Eth
                                            emit Distr((msg.value / tokensPer3Eth), msg.sender);
                                            emit Transfer((msg.value / tokensPer3Eth), 0, msg.sender);
    if totalDistributed >= totalSupply:
        stor20 = 1
}



}
