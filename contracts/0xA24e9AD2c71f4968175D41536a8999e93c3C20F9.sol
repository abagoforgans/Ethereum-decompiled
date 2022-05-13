contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address publisherAddress;
array of struct name;
uint256 tokenPriceInETH;
uint256 mintCapInETH;
uint256 mintCapInUSD;
uint256 mintCapInTokens;
uint256 hardCapInTokens;
uint256 totalWei;
uint256 bonusAvailable;
uint256 bonusTotalSupply;
array of struct rounds;
uint8 halted;
uint256 ethPriceInUSD;
uint256 minimalUSD;
uint256 minimalWei;
address tokenAddress;
address walletAddress;
uint256 startTime;
uint256 endTime;
address bonusMintingAgentAddress;

function name() {
    return name[0 len name.length].field_0
}

function bonusTotalSupply() {
    return bonusTotalSupply
}

function hardCapInTokens() {
    return hardCapInTokens
}

function minimalWei() {
    return minimalWei
}

function endTime() {
    return endTime
}

function wallet() {
    return walletAddress
}

function tokenPriceInETH() {
    return tokenPriceInETH
}

function minimalUSD() {
    return minimalUSD
}

function totalWei() {
    return totalWei
}

function startTime() {
    return startTime
}

function mintCapInTokens() {
    return mintCapInTokens
}

function ethPriceInUSD() {
    return ethPriceInUSD
}

function rounds(uint256 arg1) {
    require arg1 < rounds.length
    return rounds[arg1].field_0, 
           rounds[arg1].field_256,
           rounds[arg1].field_512,
           rounds[arg1].field_768,
           rounds[arg1].field_1024,
           rounds[arg1].field_1280,
           rounds[arg1].field_1536,
           rounds[arg1].field_1792,
           rounds[arg1].field_2048
}

function publisher() {
    return publisherAddress
}

function mintCapInETH() {
    return mintCapInETH
}

function mintCapInUSD() {
    return mintCapInUSD
}

function halted() {
    return bool(halted)
}

function bonusMintingAgent() {
    return bonusMintingAgentAddress
}

function bonusAvailable() {
    return bonusAvailable
}

function token() {
    return tokenAddress
}

function totalEther() {
    return (totalWei / 10^18)
}

function halt() {
    require 1 == bool(stor0[address(msg.sender)])
    halted = 1
}

function isOwner() {
    if stor0[address(msg.sender)]:
        return 1
    else:
        return 0
}

function unhalt() {
    require 1 == bool(stor0[address(msg.sender)])
    require halted
    halted = 0
}

function checkOwner(address arg1) {
    if stor0[address(arg1)]:
        return 1
    else:
        return 0
}

function grant(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    stor0[address(arg1)] = 1
    emit AccessGrant(arg1);
}

function withinPeriod() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function setEndTime(uint256 arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1 > startTime
    endTime = arg1
    emit ESetEndTime(arg1);
}

function setStartTime(uint256 arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1 > block.timestamp
    require arg1 < endTime
    startTime = arg1
    emit ESetStartTime(arg1);
}

function revoke(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require publisherAddress != arg1
    require arg1 != msg.sender
    stor0[address(arg1)] = 0
    emit AccessRevoke(arg1);
}

function stageName() {
    if block.timestamp < startTime:
        return 'Not started'
    if block.timestamp > endTime:
        return 'Finished'
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[128 len name.length])
}

function running() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    if block.timestamp > endTime:
        return block.timestamp <= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(ext_call.return_data[0])
}

function setBonusMintingAgent(address arg1) {
    require 1 == bool(stor0[address(msg.sender)])
    require arg1 != this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.0x74a8f103 with:
         gas gas_remaining wei
        args bonusMintingAgentAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70284d19 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    bonusMintingAgentAddress = arg1
    emit ESetBonusMintingAgent(arg1);
}

function bonusMinting(address arg1, uint256 arg2) {
    require not halted
    if bonusMintingAgentAddress != msg.sender:
        require stor0[address(msg.sender)]
    require arg2 <= bonusAvailable
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 <= hardCapInTokens
    require arg2 + bonusTotalSupply >= bonusTotalSupply
    bonusTotalSupply += arg2
    require arg2 <= bonusAvailable
    bonusAvailable -= arg2
    emit EBonusMinting(arg2, arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function finishCrowdsale() {
    require 1 == bool(stor0[address(msg.sender)])
    if block.timestamp <= endTime:
        require mintCapInETH - totalWei <= 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    if bonusAvailable > 0:
        require not halted
        if bonusMintingAgentAddress != msg.sender:
            require stor0[address(msg.sender)]
        require bonusAvailable <= bonusAvailable
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
        require bonusAvailable + bonusTotalSupply >= bonusTotalSupply
        bonusTotalSupply += bonusAvailable
        require bonusAvailable <= bonusAvailable
        bonusAvailable = 0
        emit EBonusMinting(bonusAvailable, walletAddress);
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args walletAddress, bonusAvailable
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function calcAmount(uint256 arg1, uint256 arg2) {
    mem[64] = 384
    idx = 0
    s = 96
    while idx < rounds.length:
        mem[0] = 11
        _22 = mem[64]
        mem[64] = mem[64] + 288
        mem[_22] = rounds[idx].field_0
        mem[_22 + 32] = rounds[idx].field_256
        mem[_22 + 64] = rounds[idx].field_512
        mem[_22 + 96] = rounds[idx].field_768
        mem[_22 + 128] = rounds[idx].field_1024
        mem[_22 + 160] = rounds[idx].field_1280
        mem[_22 + 192] = rounds[idx].field_1536
        mem[_22 + 224] = rounds[idx].field_1792
        mem[_22 + 256] = rounds[idx].field_2048
        if arg2 < rounds[idx].field_512:
            idx = idx + 1
            s = _22
            continue 
        if arg2 >= rounds[idx].field_1024:
            idx = idx + 1
            s = _22
            continue 
        require arg1 + arg2 >= arg2
        if arg1 + arg2 < rounds[idx].field_1024:
            if not arg1:
                if rounds[idx].field_1792:
                    return 10^18 * arg1 / rounds[idx].field_1792, 0
            else:
                if arg1:
                    if 10^18 * arg1 / arg1 == 10^18:
                        if rounds[idx].field_1792:
                            return 10^18 * arg1 / rounds[idx].field_1792, 0
        else:
            if arg2 <= rounds[idx].field_1024:
                if rounds[idx].field_1024 - arg2 <= arg1:
                    if arg2 <= rounds[idx].field_1024:
                        if not rounds[idx].field_1024 - arg2:
                            if rounds[idx].field_1792:
                                idx = idx + 1
                                s = _22
                                continue 
                        else:
                            if rounds[idx].field_1024 - arg2:
                                if (10^18 * rounds[idx].field_1024) - (10^18 * arg2) / rounds[idx].field_1024 - arg2 == 10^18:
                                    if rounds[idx].field_1792:
                                        idx = idx + 1
                                        s = _22
                                        continue 
        revert
    return 0, arg1
}

function manualMinting(address arg1, uint256 arg2) {
    require 1 == bool(stor0[address(msg.sender)])
    require not halted
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require arg1
    require arg2 >= minimalWei
    mem[64] = 384
    idx = 0
    s = 96
    while idx < rounds.length:
        mem[0] = 11
        _44 = mem[64]
        mem[64] = mem[64] + 288
        mem[_44] = rounds[idx].field_0
        mem[_44 + 32] = rounds[idx].field_256
        mem[_44 + 64] = rounds[idx].field_512
        mem[_44 + 96] = rounds[idx].field_768
        mem[_44 + 128] = rounds[idx].field_1024
        mem[_44 + 160] = rounds[idx].field_1280
        mem[_44 + 192] = rounds[idx].field_1536
        mem[_44 + 224] = rounds[idx].field_1792
        mem[_44 + 256] = rounds[idx].field_2048
        if totalWei < rounds[idx].field_512:
            idx = idx + 1
            s = _44
            continue 
        if totalWei >= rounds[idx].field_1024:
            idx = idx + 1
            s = _44
            continue 
        require arg2 + totalWei >= totalWei
        if arg2 + totalWei >= rounds[idx].field_1024:
            require totalWei <= rounds[idx].field_1024
            require rounds[idx].field_1024 - totalWei <= arg2
            require totalWei <= rounds[idx].field_1024
            if not rounds[idx].field_1024 - totalWei:
                if rounds[idx].field_1792:
                    idx = idx + 1
                    s = _44
                    continue 
            else:
                if rounds[idx].field_1024 - totalWei:
                    if (10^18 * rounds[idx].field_1024) - (10^18 * totalWei) / rounds[idx].field_1024 - totalWei == 10^18:
                        if rounds[idx].field_1792:
                            idx = idx + 1
                            s = _44
                            continue 
            revert
        if arg2:
            require arg2
            require 10^18 * arg2 / arg2 == 10^18
        require rounds[idx].field_1792
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (10^18 * arg2 / rounds[idx].field_1792) + ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
        require 0 <= arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 10^18 * arg2 / rounds[idx].field_1792
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit EManualMinting(10^18 * arg2 / rounds[idx].field_1792, arg2, arg1);
        require arg2 + totalWei >= totalWei
        totalWei += arg2
        if 10^18 * arg2 / rounds[idx].field_1792:
            require 10^18 * arg2 / rounds[idx].field_1792
            require 20 * 10^18 * arg2 / rounds[idx].field_1792 / 10^18 * arg2 / rounds[idx].field_1792 == 20
        require (20 * 10^18 * arg2 / rounds[idx].field_1792 / 100) + bonusAvailable >= bonusAvailable
        bonusAvailable += 20 * 10^18 * arg2 / rounds[idx].field_1792 / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
    if arg2 <= arg2:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit EManualMinting(address arg1, uint256 arg2, uint256 arg3):
                            0,
                            arg1,
        if totalWei >= totalWei:
            if bonusAvailable >= bonusAvailable:
    revert
}

function buyTokens(address arg1) payable {
    require not halted
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require arg1
    require msg.value >= minimalWei
    mem[64] = 384
    idx = 0
    s = 96
    while idx < rounds.length:
        mem[0] = 11
        _52 = mem[64]
        mem[64] = mem[64] + 288
        mem[_52] = rounds[idx].field_0
        mem[_52 + 32] = rounds[idx].field_256
        mem[_52 + 64] = rounds[idx].field_512
        mem[_52 + 96] = rounds[idx].field_768
        mem[_52 + 128] = rounds[idx].field_1024
        mem[_52 + 160] = rounds[idx].field_1280
        mem[_52 + 192] = rounds[idx].field_1536
        mem[_52 + 224] = rounds[idx].field_1792
        mem[_52 + 256] = rounds[idx].field_2048
        if totalWei < rounds[idx].field_512:
            idx = idx + 1
            s = _52
            continue 
        if totalWei >= rounds[idx].field_1024:
            idx = idx + 1
            s = _52
            continue 
        require msg.value + totalWei >= totalWei
        if msg.value + totalWei >= rounds[idx].field_1024:
            require totalWei <= rounds[idx].field_1024
            require rounds[idx].field_1024 - totalWei <= msg.value
            require totalWei <= rounds[idx].field_1024
            if not rounds[idx].field_1024 - totalWei:
                if rounds[idx].field_1792:
                    idx = idx + 1
                    s = _52
                    continue 
            else:
                if rounds[idx].field_1024 - totalWei:
                    if (10^18 * rounds[idx].field_1024) - (10^18 * totalWei) / rounds[idx].field_1024 - totalWei == 10^18:
                        if rounds[idx].field_1792:
                            idx = idx + 1
                            s = _52
                            continue 
            revert
        if msg.value:
            require msg.value
            require 10^18 * msg.value / msg.value == 10^18
        require rounds[idx].field_1792
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (10^18 * msg.value / rounds[idx].field_1792) + ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
        require 0 <= msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 10^18 * msg.value / rounds[idx].field_1792
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ETokenPurchase(msg.value, 10^18 * msg.value / rounds[idx].field_1792, arg1);
        require msg.value + totalWei >= totalWei
        totalWei += msg.value
        if 10^18 * msg.value / rounds[idx].field_1792:
            require 10^18 * msg.value / rounds[idx].field_1792
            require 20 * 10^18 * msg.value / rounds[idx].field_1792 / 10^18 * msg.value / rounds[idx].field_1792 == 20
        require (20 * 10^18 * msg.value / rounds[idx].field_1792 / 100) + bonusAvailable >= bonusAvailable
        bonusAvailable += 20 * 10^18 * msg.value / rounds[idx].field_1792 / 100
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
    require msg.value <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ETokenPurchase(address arg1, uint256 arg2, uint256 arg3):
                        0,
                        arg1,
    require totalWei >= totalWei
    if msg.value > 0:
        require msg.value < msg.value
        emit ETransferOddEther(msg.value, arg1);
        call arg1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require bonusAvailable >= bonusAvailable
    call walletAddress with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not halted
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.sender
    require msg.value >= minimalWei
    mem[64] = 384
    idx = 0
    s = 96
    while idx < rounds.length:
        mem[0] = 11
        _52 = mem[64]
        mem[64] = mem[64] + 288
        mem[_52] = rounds[idx].field_0
        mem[_52 + 32] = rounds[idx].field_256
        mem[_52 + 64] = rounds[idx].field_512
        mem[_52 + 96] = rounds[idx].field_768
        mem[_52 + 128] = rounds[idx].field_1024
        mem[_52 + 160] = rounds[idx].field_1280
        mem[_52 + 192] = rounds[idx].field_1536
        mem[_52 + 224] = rounds[idx].field_1792
        mem[_52 + 256] = rounds[idx].field_2048
        if totalWei < rounds[idx].field_512:
            idx = idx + 1
            s = _52
            continue 
        if totalWei >= rounds[idx].field_1024:
            idx = idx + 1
            s = _52
            continue 
        require msg.value + totalWei >= totalWei
        if msg.value + totalWei >= rounds[idx].field_1024:
            require totalWei <= rounds[idx].field_1024
            require rounds[idx].field_1024 - totalWei <= msg.value
            require totalWei <= rounds[idx].field_1024
            if not rounds[idx].field_1024 - totalWei:
                if rounds[idx].field_1792:
                    idx = idx + 1
                    s = _52
                    continue 
            else:
                if rounds[idx].field_1024 - totalWei:
                    if (10^18 * rounds[idx].field_1024) - (10^18 * totalWei) / rounds[idx].field_1024 - totalWei == 10^18:
                        if rounds[idx].field_1792:
                            idx = idx + 1
                            s = _52
                            continue 
            revert
        if msg.value:
            require msg.value
            require 10^18 * msg.value / msg.value == 10^18
        require rounds[idx].field_1792
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (10^18 * msg.value / rounds[idx].field_1792) + ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
        require 0 <= msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / rounds[idx].field_1792
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ETokenPurchase(msg.value, 10^18 * msg.value / rounds[idx].field_1792, msg.sender);
        require msg.value + totalWei >= totalWei
        totalWei += msg.value
        if 10^18 * msg.value / rounds[idx].field_1792:
            require 10^18 * msg.value / rounds[idx].field_1792
            require 20 * 10^18 * msg.value / rounds[idx].field_1792 / 10^18 * msg.value / rounds[idx].field_1792 == 20
        require (20 * 10^18 * msg.value / rounds[idx].field_1792 / 100) + bonusAvailable >= bonusAvailable
        bonusAvailable += 20 * 10^18 * msg.value / rounds[idx].field_1792 / 100
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + bonusAvailable <= hardCapInTokens
    require msg.value <= msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit ETokenPurchase(address arg1, uint256 arg2, uint256 arg3):
                        0,
                        msg.sender,
    require totalWei >= totalWei
    if msg.value > 0:
        require msg.value < msg.value
        emit ETransferOddEther(msg.value, msg.sender);
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require bonusAvailable >= bonusAvailable
    call walletAddress with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
