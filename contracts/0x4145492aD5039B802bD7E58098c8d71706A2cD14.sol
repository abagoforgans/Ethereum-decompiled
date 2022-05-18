contract main {




// =====================  Runtime code  =====================


address tokenRewardAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint8 stage; offset 160
address signerAddress;
address communityAddress;
uint256 totalTokensForSale;
uint256 totalTokensForSaleDuringPreICO;
uint256 totalTokensForSaleDuringICO1;
uint256 totalTokensForSaleDuringICO2;
uint256 totalTokensForSaleDuringICO3;
uint256 totalTokensForSaleDuringICO4;
uint256 totalWeiRaisedDuringPreICO;
uint256 totalWeiRaisedDuringICO1;
uint256 totalWeiRaisedDuringICO2;
uint256 totalWeiRaisedDuringICO3;
uint256 totalWeiRaisedDuringICO4;
uint256 totalWeiRaised;
uint256 totalTokensPreICO;
uint256 totalTokensICO1;
uint256 totalTokensICO2;
uint256 totalTokensICO3;
uint256 totalTokensICO4;
uint256 tokensMinted;
uint256 airDropsClaimed;
mapping of uint8 stor31;
mapping of uint8 stor32;

function totalWeiRaisedDuringICO2() {
    return totalWeiRaisedDuringICO2
}

function totalTokensForSaleDuringICO4() {
    return totalTokensForSaleDuringICO4
}

function signer() {
    return signerAddress
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function totalWeiRaised() {
    return totalWeiRaised
}

function totalTokensICO2() {
    return totalTokensICO2
}

function totalTokensForSale() {
    return totalTokensForSale
}

function totalTokensForSaleDuringICO3() {
    return totalTokensForSaleDuringICO3
}

function tokensMinted() {
    return tokensMinted
}

function tokenReward() {
    return tokenRewardAddress
}

function totalWeiRaisedDuringICO1() {
    return totalWeiRaisedDuringICO1
}

function startTime() {
    return startTime
}

function totalTokensICO3() {
    return totalTokensICO3
}

function airdrops(address arg1) {
    return bool(stor31[arg1])
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function totalTokensPreICO() {
    return totalTokensPreICO
}

function airDropsClaimed() {
    return airDropsClaimed
}

function totalWeiRaisedDuringPreICO() {
    return totalWeiRaisedDuringPreICO
}

function totalTokensForSaleDuringPreICO() {
    return totalTokensForSaleDuringPreICO
}

function stage() {
    require stage <= 4
    return stage
}

function totalWeiRaisedDuringICO4() {
    return totalWeiRaisedDuringICO4
}

function totalTokensForSaleDuringICO2() {
    return totalTokensForSaleDuringICO2
}

function totalTokensICO1() {
    return totalTokensICO1
}

function totalTokensForSaleDuringICO1() {
    return totalTokensForSaleDuringICO1
}

function community() {
    return communityAddress
}

function totalTokensICO4() {
    return totalTokensICO4
}

function blacklist(address arg1) {
    return bool(stor32[arg1])
}

function totalWeiRaisedDuringICO3() {
    return totalWeiRaisedDuringICO3
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function goalReached() {
    return weiRaised >= goal
}

function forwardEndTime(uint256 arg1) {
    endTime = arg1
}

function addBlacklistAddress(address arg1) {
    require msg.sender == owner
    stor32[address(arg1)] = 1
}

function removeBlacklistAddress(address arg1) {
    require msg.sender == owner
    stor32[address(arg1)] = 0
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferSigner(address arg1) {
    require msg.sender == owner
    require arg1
    emit SignerTransferred(signerAddress, arg1);
    signerAddress = arg1
}

function releaseVault() {
    require msg.sender == owner
    require weiRaised >= goal
    require ext_code.size(vaultAddress)
    call vaultAddress.close() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimRefund() {
    require uint8(stor7.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isValidAccessMessage(address arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (signerAddress == address(signer))
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    if weiRaised < goal:
        require ext_code.size(vaultAddress)
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function setCrowdsaleStage(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= 4
    if 0 == arg1:
        rate = 2380
        stage = 0
    else:
        if 1 == arg1:
            rate = 2040
            stage = 1
        else:
            if 2 == arg1:
                rate = 1785
                stage = 2
            else:
                if 3 == arg1:
                    rate = 1587
                    stage = 3
                else:
                    if 4 == arg1:
                        rate = 1503
                        stage = 4
}

function finish() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if tokensMinted < totalTokensForSale:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args communityAddress, totalTokensForSale - tokensMinted
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    if weiRaised < goal:
        require ext_code.size(vaultAddress)
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function airdropTokens(address arg1, address[] arg2, bool arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    if arg3 != 1:
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 31
            if stor31[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 31
            stor31[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg2.length
            _44 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = address(_44)
            mem[(32 * arg2.length) + 196] = 50 * 10^18
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(_44), 50 * 10^18
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require s + 50 * 10^18 >= s
            idx = idx + 1
            s = s + 50 * 10^18
            continue 
    else:
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 31
            if stor31[mem[(32 * idx) + 140 len 20]]:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 31
            stor31[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg2.length
            _47 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = arg1
            mem[(32 * arg2.length) + 164] = address(_47)
            mem[(32 * arg2.length) + 196] = 500 * 10^18
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(_47), 500 * 10^18
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require s + 500 * 10^18 >= s
            idx = idx + 1
            s = s + 500 * 10^18
            continue 
    require airDropsClaimed + s >= airDropsClaimed
    airDropsClaimed += s
}

function donate(uint8 arg1, bytes32 arg2, bytes32 arg3) payable {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, msg.sender)), arg1 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require signerAddress == address(signer)
    require msg.value >= 15 * 10^16
    require not stor32[address(msg.sender)]
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require stage <= 4
    if stage:
        require stage <= 4
        if stage != 1:
            require stage <= 4
            if stage != 2:
                require stage <= 4
                if stage != 3:
                    require stage <= 4
                    if stage != 4:
                        if not msg.value:
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require msg.value
                            require msg.value * rate / msg.value == rate
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args msg.sender, msg.value * rate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                        if weiRaised >= goal:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                        else:
                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                            require ext_code.size(vaultAddress)
                            call vaultAddress.deposit(address arg1) with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require stage <= 4
                        if not stage:
                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                            totalWeiRaisedDuringPreICO += msg.value
                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                            totalTokensPreICO += msg.value * rate
                        else:
                            require stage <= 4
                            if stage == 1:
                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                totalWeiRaisedDuringICO1 += msg.value
                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                totalTokensICO1 += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 2:
                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                    totalWeiRaisedDuringICO2 += msg.value
                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                    totalTokensICO2 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 3:
                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                        totalWeiRaisedDuringICO3 += msg.value
                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                        totalTokensICO3 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 4:
                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                            totalWeiRaisedDuringICO4 += msg.value
                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                            totalTokensICO4 += msg.value * rate
                        require tokensMinted + (msg.value * rate) >= tokensMinted
                        tokensMinted += msg.value * rate
                    else:
                        if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                        else:
                            if not msg.value:
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            if weiRaised >= goal:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require stage <= 4
                            if not stage:
                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                totalWeiRaisedDuringPreICO += msg.value
                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                totalTokensPreICO += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 1:
                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                    totalWeiRaisedDuringICO1 += msg.value
                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                    totalTokensICO1 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 2:
                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                        totalWeiRaisedDuringICO2 += msg.value
                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                        totalTokensICO2 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 3:
                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                            totalWeiRaisedDuringICO3 += msg.value
                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                            totalTokensICO3 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 4:
                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                totalWeiRaisedDuringICO4 += msg.value
                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                totalTokensICO4 += msg.value * rate
                            require tokensMinted + (msg.value * rate) >= tokensMinted
                            tokensMinted += msg.value * rate
                else:
                    if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                    else:
                        require stage <= 4
                        if stage != 4:
                            if not msg.value:
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            if weiRaised >= goal:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require stage <= 4
                            if not stage:
                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                totalWeiRaisedDuringPreICO += msg.value
                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                totalTokensPreICO += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 1:
                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                    totalWeiRaisedDuringICO1 += msg.value
                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                    totalTokensICO1 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 2:
                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                        totalWeiRaisedDuringICO2 += msg.value
                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                        totalTokensICO2 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 3:
                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                            totalWeiRaisedDuringICO3 += msg.value
                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                            totalTokensICO3 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 4:
                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                totalWeiRaisedDuringICO4 += msg.value
                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                totalTokensICO4 += msg.value * rate
                            require tokensMinted + (msg.value * rate) >= tokensMinted
                            tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                            else:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
            else:
                if totalTokensICO2 + (msg.value * rate) > totalTokensForSaleDuringICO2:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit EthRefunded(Array(len=14, data='ICO2 Limit Hit'));
                else:
                    require stage <= 4
                    if stage != 3:
                        require stage <= 4
                        if stage != 4:
                            if not msg.value:
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            if weiRaised >= goal:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require stage <= 4
                            if not stage:
                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                totalWeiRaisedDuringPreICO += msg.value
                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                totalTokensPreICO += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 1:
                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                    totalWeiRaisedDuringICO1 += msg.value
                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                    totalTokensICO1 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 2:
                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                        totalWeiRaisedDuringICO2 += msg.value
                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                        totalTokensICO2 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 3:
                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                            totalWeiRaisedDuringICO3 += msg.value
                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                            totalTokensICO3 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 4:
                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                totalWeiRaisedDuringICO4 += msg.value
                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                totalTokensICO4 += msg.value * rate
                            require tokensMinted + (msg.value * rate) >= tokensMinted
                            tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                            else:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                    else:
                        if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                        else:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
        else:
            if totalTokensICO1 + (msg.value * rate) > totalTokensForSaleDuringICO1:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit EthRefunded(Array(len=14, data='ICO1 Limit Hit'));
            else:
                require stage <= 4
                if stage != 2:
                    require stage <= 4
                    if stage != 3:
                        require stage <= 4
                        if stage != 4:
                            if not msg.value:
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            if weiRaised >= goal:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require stage <= 4
                            if not stage:
                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                totalWeiRaisedDuringPreICO += msg.value
                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                totalTokensPreICO += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 1:
                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                    totalWeiRaisedDuringICO1 += msg.value
                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                    totalTokensICO1 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 2:
                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                        totalWeiRaisedDuringICO2 += msg.value
                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                        totalTokensICO2 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 3:
                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                            totalWeiRaisedDuringICO3 += msg.value
                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                            totalTokensICO3 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 4:
                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                totalWeiRaisedDuringICO4 += msg.value
                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                totalTokensICO4 += msg.value * rate
                            require tokensMinted + (msg.value * rate) >= tokensMinted
                            tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                            else:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                    else:
                        if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                        else:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                else:
                    if totalTokensICO2 + (msg.value * rate) > totalTokensForSaleDuringICO2:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit EthRefunded(Array(len=14, data='ICO2 Limit Hit'));
                    else:
                        require stage <= 4
                        if stage != 3:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                            else:
                                require stage <= 4
                                if stage != 4:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                                else:
                                    if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                    else:
                                        if not msg.value:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * rate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if weiRaised >= goal:
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                        else:
                                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require stage <= 4
                                        if not stage:
                                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                            totalWeiRaisedDuringPreICO += msg.value
                                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                            totalTokensPreICO += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 1:
                                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                totalWeiRaisedDuringICO1 += msg.value
                                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                totalTokensICO1 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 2:
                                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                    totalWeiRaisedDuringICO2 += msg.value
                                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                    totalTokensICO2 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 3:
                                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                        totalWeiRaisedDuringICO3 += msg.value
                                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                        totalTokensICO3 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 4:
                                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                            totalWeiRaisedDuringICO4 += msg.value
                                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                            totalTokensICO4 += msg.value * rate
                                        require tokensMinted + (msg.value * rate) >= tokensMinted
                                        tokensMinted += msg.value * rate
    else:
        if totalTokensPreICO + (msg.value * rate) > totalTokensForSaleDuringPreICO:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit EthRefunded(Array(len=16, data='PreICO Limit Hit'));
        else:
            require stage <= 4
            if stage != 1:
                require stage <= 4
                if stage != 2:
                    require stage <= 4
                    if stage != 3:
                        require stage <= 4
                        if stage != 4:
                            if not msg.value:
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require msg.value * rate / msg.value == rate
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args msg.sender, msg.value * rate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                            if weiRaised >= goal:
                                call walletAddress with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                            else:
                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                require ext_code.size(vaultAddress)
                                call vaultAddress.deposit(address arg1) with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require stage <= 4
                            if not stage:
                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                totalWeiRaisedDuringPreICO += msg.value
                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                totalTokensPreICO += msg.value * rate
                            else:
                                require stage <= 4
                                if stage == 1:
                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                    totalWeiRaisedDuringICO1 += msg.value
                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                    totalTokensICO1 += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 2:
                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                        totalWeiRaisedDuringICO2 += msg.value
                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                        totalTokensICO2 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 3:
                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                            totalWeiRaisedDuringICO3 += msg.value
                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                            totalTokensICO3 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 4:
                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                totalWeiRaisedDuringICO4 += msg.value
                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                totalTokensICO4 += msg.value * rate
                            require tokensMinted + (msg.value * rate) >= tokensMinted
                            tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                            else:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                    else:
                        if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                        else:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                else:
                    if totalTokensICO2 + (msg.value * rate) > totalTokensForSaleDuringICO2:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit EthRefunded(Array(len=14, data='ICO2 Limit Hit'));
                    else:
                        require stage <= 4
                        if stage != 3:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                            else:
                                require stage <= 4
                                if stage != 4:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                                else:
                                    if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                    else:
                                        if not msg.value:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * rate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if weiRaised >= goal:
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                        else:
                                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require stage <= 4
                                        if not stage:
                                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                            totalWeiRaisedDuringPreICO += msg.value
                                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                            totalTokensPreICO += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 1:
                                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                totalWeiRaisedDuringICO1 += msg.value
                                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                totalTokensICO1 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 2:
                                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                    totalWeiRaisedDuringICO2 += msg.value
                                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                    totalTokensICO2 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 3:
                                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                        totalWeiRaisedDuringICO3 += msg.value
                                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                        totalTokensICO3 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 4:
                                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                            totalWeiRaisedDuringICO4 += msg.value
                                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                            totalTokensICO4 += msg.value * rate
                                        require tokensMinted + (msg.value * rate) >= tokensMinted
                                        tokensMinted += msg.value * rate
            else:
                if totalTokensICO1 + (msg.value * rate) > totalTokensForSaleDuringICO1:
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit EthRefunded(Array(len=14, data='ICO1 Limit Hit'));
                else:
                    require stage <= 4
                    if stage != 2:
                        require stage <= 4
                        if stage != 3:
                            require stage <= 4
                            if stage != 4:
                                if not msg.value:
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require msg.value * rate / msg.value == rate
                                    require weiRaised + msg.value >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args msg.sender, msg.value * rate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                if weiRaised >= goal:
                                    call walletAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                else:
                                    emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                    require ext_code.size(vaultAddress)
                                    call vaultAddress.deposit(address arg1) with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require stage <= 4
                                if not stage:
                                    require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                    totalWeiRaisedDuringPreICO += msg.value
                                    require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                    totalTokensPreICO += msg.value * rate
                                else:
                                    require stage <= 4
                                    if stage == 1:
                                        require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                        totalWeiRaisedDuringICO1 += msg.value
                                        require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                        totalTokensICO1 += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 2:
                                            require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                            totalWeiRaisedDuringICO2 += msg.value
                                            require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                            totalTokensICO2 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 3:
                                                require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                totalWeiRaisedDuringICO3 += msg.value
                                                require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                totalTokensICO3 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 4:
                                                    require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                    totalWeiRaisedDuringICO4 += msg.value
                                                    require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                    totalTokensICO4 += msg.value * rate
                                require tokensMinted + (msg.value * rate) >= tokensMinted
                                tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                else:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                        else:
                            if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                            else:
                                require stage <= 4
                                if stage != 4:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                                else:
                                    if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                    else:
                                        if not msg.value:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * rate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if weiRaised >= goal:
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                        else:
                                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require stage <= 4
                                        if not stage:
                                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                            totalWeiRaisedDuringPreICO += msg.value
                                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                            totalTokensPreICO += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 1:
                                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                totalWeiRaisedDuringICO1 += msg.value
                                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                totalTokensICO1 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 2:
                                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                    totalWeiRaisedDuringICO2 += msg.value
                                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                    totalTokensICO2 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 3:
                                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                        totalWeiRaisedDuringICO3 += msg.value
                                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                        totalTokensICO3 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 4:
                                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                            totalWeiRaisedDuringICO4 += msg.value
                                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                            totalTokensICO4 += msg.value * rate
                                        require tokensMinted + (msg.value * rate) >= tokensMinted
                                        tokensMinted += msg.value * rate
                    else:
                        if totalTokensICO2 + (msg.value * rate) > totalTokensForSaleDuringICO2:
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit EthRefunded(Array(len=14, data='ICO2 Limit Hit'));
                        else:
                            require stage <= 4
                            if stage != 3:
                                require stage <= 4
                                if stage != 4:
                                    if not msg.value:
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require msg.value * rate / msg.value == rate
                                        require weiRaised + msg.value >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args msg.sender, msg.value * rate
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                    if weiRaised >= goal:
                                        call walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                    else:
                                        emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                        require ext_code.size(vaultAddress)
                                        call vaultAddress.deposit(address arg1) with:
                                           value msg.value wei
                                             gas gas_remaining wei
                                            args msg.sender
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    require stage <= 4
                                    if not stage:
                                        require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                        totalWeiRaisedDuringPreICO += msg.value
                                        require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                        totalTokensPreICO += msg.value * rate
                                    else:
                                        require stage <= 4
                                        if stage == 1:
                                            require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                            totalWeiRaisedDuringICO1 += msg.value
                                            require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                            totalTokensICO1 += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 2:
                                                require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                totalWeiRaisedDuringICO2 += msg.value
                                                require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                totalTokensICO2 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 3:
                                                    require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                    totalWeiRaisedDuringICO3 += msg.value
                                                    require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                    totalTokensICO3 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 4:
                                                        require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                        totalWeiRaisedDuringICO4 += msg.value
                                                        require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                        totalTokensICO4 += msg.value * rate
                                    require tokensMinted + (msg.value * rate) >= tokensMinted
                                    tokensMinted += msg.value * rate
                                else:
                                    if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                    else:
                                        if not msg.value:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * rate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if weiRaised >= goal:
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                        else:
                                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require stage <= 4
                                        if not stage:
                                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                            totalWeiRaisedDuringPreICO += msg.value
                                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                            totalTokensPreICO += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 1:
                                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                totalWeiRaisedDuringICO1 += msg.value
                                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                totalTokensICO1 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 2:
                                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                    totalWeiRaisedDuringICO2 += msg.value
                                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                    totalTokensICO2 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 3:
                                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                        totalWeiRaisedDuringICO3 += msg.value
                                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                        totalTokensICO3 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 4:
                                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                            totalWeiRaisedDuringICO4 += msg.value
                                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                            totalTokensICO4 += msg.value * rate
                                        require tokensMinted + (msg.value * rate) >= tokensMinted
                                        tokensMinted += msg.value * rate
                            else:
                                if totalTokensICO3 + (msg.value * rate) > totalTokensForSaleDuringICO3:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit EthRefunded(Array(len=14, data='ICO3 Limit Hit'));
                                else:
                                    require stage <= 4
                                    if stage != 4:
                                        if not msg.value:
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require msg.value * rate / msg.value == rate
                                            require weiRaised + msg.value >= weiRaised
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args msg.sender, msg.value * rate
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                        if weiRaised >= goal:
                                            call walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                        else:
                                            emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                            require ext_code.size(vaultAddress)
                                            call vaultAddress.deposit(address arg1) with:
                                               value msg.value wei
                                                 gas gas_remaining wei
                                                args msg.sender
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require stage <= 4
                                        if not stage:
                                            require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                            totalWeiRaisedDuringPreICO += msg.value
                                            require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                            totalTokensPreICO += msg.value * rate
                                        else:
                                            require stage <= 4
                                            if stage == 1:
                                                require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                totalWeiRaisedDuringICO1 += msg.value
                                                require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                totalTokensICO1 += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 2:
                                                    require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                    totalWeiRaisedDuringICO2 += msg.value
                                                    require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                    totalTokensICO2 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 3:
                                                        require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                        totalWeiRaisedDuringICO3 += msg.value
                                                        require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                        totalTokensICO3 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 4:
                                                            require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                            totalWeiRaisedDuringICO4 += msg.value
                                                            require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                            totalTokensICO4 += msg.value * rate
                                        require tokensMinted + (msg.value * rate) >= tokensMinted
                                        tokensMinted += msg.value * rate
                                    else:
                                        if totalTokensICO4 + (msg.value * rate) > totalTokensForSaleDuringICO4:
                                            call msg.sender with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit EthRefunded(Array(len=14, data='ICO4 Limit Hit'));
                                        else:
                                            if not msg.value:
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                            else:
                                                require msg.value
                                                require msg.value * rate / msg.value == rate
                                                require weiRaised + msg.value >= weiRaised
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x40c10f19 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, msg.value * rate
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
                                            if weiRaised >= goal:
                                                call walletAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit EthTransferred(Array(len=26, data='forwarding funds to wallet'));
                                            else:
                                                emit EthTransferred(Array(len=36, data='forwarding funds to refundable v', 'ault'));
                                                require ext_code.size(vaultAddress)
                                                call vaultAddress.deposit(address arg1) with:
                                                   value msg.value wei
                                                     gas gas_remaining wei
                                                    args msg.sender
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            require stage <= 4
                                            if not stage:
                                                require totalWeiRaisedDuringPreICO + msg.value >= totalWeiRaisedDuringPreICO
                                                totalWeiRaisedDuringPreICO += msg.value
                                                require totalTokensPreICO + (msg.value * rate) >= totalTokensPreICO
                                                totalTokensPreICO += msg.value * rate
                                            else:
                                                require stage <= 4
                                                if stage == 1:
                                                    require totalWeiRaisedDuringICO1 + msg.value >= totalWeiRaisedDuringICO1
                                                    totalWeiRaisedDuringICO1 += msg.value
                                                    require totalTokensICO1 + (msg.value * rate) >= totalTokensICO1
                                                    totalTokensICO1 += msg.value * rate
                                                else:
                                                    require stage <= 4
                                                    if stage == 2:
                                                        require totalWeiRaisedDuringICO2 + msg.value >= totalWeiRaisedDuringICO2
                                                        totalWeiRaisedDuringICO2 += msg.value
                                                        require totalTokensICO2 + (msg.value * rate) >= totalTokensICO2
                                                        totalTokensICO2 += msg.value * rate
                                                    else:
                                                        require stage <= 4
                                                        if stage == 3:
                                                            require totalWeiRaisedDuringICO3 + msg.value >= totalWeiRaisedDuringICO3
                                                            totalWeiRaisedDuringICO3 += msg.value
                                                            require totalTokensICO3 + (msg.value * rate) >= totalTokensICO3
                                                            totalTokensICO3 += msg.value * rate
                                                        else:
                                                            require stage <= 4
                                                            if stage == 4:
                                                                require totalWeiRaisedDuringICO4 + msg.value >= totalWeiRaisedDuringICO4
                                                                totalWeiRaisedDuringICO4 += msg.value
                                                                require totalTokensICO4 + (msg.value * rate) >= totalTokensICO4
                                                                totalTokensICO4 += msg.value * rate
                                            require tokensMinted + (msg.value * rate) >= tokensMinted
                                            tokensMinted += msg.value * rate
}



}
