contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;

function _fallback() {
    mem[96 len -11664] = code.data[12370 len -11664]
    mem[64] = -11568
    require mem[96] >= block.number
    require mem[128] >= mem[96]
    require mem[160] > 0
    require mem[204 len 20]
    create contract with 0 wei
                    code: code.data[7314 len 2034]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = mem[96]
    stor2 = mem[128]
    stor4 = mem[160]
    stor3 = mem[204 len 20]
    stor7 = 0
    stor6 = mem[224]
    mem[-8482] = mem[351 len 1]
    mem[-8450] = mem[352]
    mem[-8418] = mem[mem[256] + 96]
    _15 = mem[mem[256] + 96]
    if not mem[mem[256] + 96]:
        if not mem[mem[256] + 96] % 32:
            mem[-8514] = mem[mem[256] + 96] + 160
            mem[mem[mem[256] + 96] - 8386] = mem[mem[288] + 96]
            _17 = mem[mem[288] + 96]
            if not mem[mem[288] + 96]:
                if not mem[mem[288] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, mem[-8514 len mem[mem[288] + 96] + _15 + 160]
                else:
                    mem[floor32(mem[mem[288] + 96]) + _15 - 8354] = mem[floor32(mem[mem[288] + 96]) + _15 + -(mem[mem[288] + 96] % 32) - 8322 len mem[mem[288] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, mem[-8514 len floor32(_17) + _15 + 192]
            else:
                mem[_15 - 8354] = mem[mem[288] + 128]
                mem[_15 - 8322 len floor32(_17 - 1)] = mem[mem[288] + 160 len floor32(_17 - 1)]
                if not _17 % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, mem[-8514 len _17 + _15 + 160]
                else:
                    mem[floor32(_17) + _15 - 8354] = mem[floor32(_17) + _15 + -(_17 % 32) - 8322 len _17 % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, mem[-8514 len floor32(_17) + _15 + 192]
        else:
            mem[floor32(mem[mem[256] + 96]) - 8386] = mem[floor32(mem[mem[256] + 96]) + -(mem[mem[256] + 96] % 32) - 8354 len mem[mem[256] + 96] % 32]
            mem[floor32(_15) - 8354] = mem[mem[288] + 96]
            _20 = mem[mem[288] + 96]
            if not mem[mem[288] + 96]:
                if not mem[mem[288] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len mem[mem[288] + 96] + floor32(_15) + 160]
                else:
                    mem[floor32(mem[mem[288] + 96]) + floor32(_15) - 8322] = mem[floor32(mem[mem[288] + 96]) + floor32(_15) + -(mem[mem[288] + 96] % 32) - 8290 len mem[mem[288] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len floor32(_20) + floor32(_15) + 192]
            else:
                mem[floor32(_15) - 8322] = mem[mem[288] + 128]
                mem[floor32(_15) - 8290 len floor32(_20 - 1)] = mem[mem[288] + 160 len floor32(_20 - 1)]
                if not _20 % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len _20 + floor32(_15) + 160]
                else:
                    mem[floor32(_20) + floor32(_15) - 8322] = mem[floor32(_20) + floor32(_15) + -(_20 % 32) - 8290 len _20 % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len floor32(_20) + floor32(_15) + 192]
    else:
        mem[-8386] = mem[mem[256] + 128]
        mem[-8354 len floor32(mem[mem[256] + 96] - 1)] = mem[mem[256] + 160 len floor32(mem[mem[256] + 96] - 1)]
        if not _15 % 32:
            mem[_15 - 8386] = mem[mem[288] + 96]
            _55 = mem[mem[288] + 96]
            if not mem[mem[288] + 96]:
                if not mem[mem[288] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, _15 + 160, mem[-8482 len mem[mem[288] + 96] + _15 + 128]
                else:
                    mem[floor32(mem[mem[288] + 96]) + _15 - 8354] = mem[floor32(mem[mem[288] + 96]) + _15 + -(mem[mem[288] + 96] % 32) - 8322 len mem[mem[288] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, _15 + 160, mem[-8482 len floor32(_55) + _15 + 160]
            else:
                mem[_15 - 8354] = mem[mem[288] + 128]
                mem[_15 - 8322 len floor32(_55 - 1)] = mem[mem[288] + 160 len floor32(_55 - 1)]
                if not _55 % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, _15 + 160, mem[-8482 len _55 + _15 + 128]
                else:
                    mem[floor32(_55) + _15 - 8354] = mem[floor32(_55) + _15 + -(_55 % 32) - 8322 len _55 % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, _15 + 160, mem[-8482 len floor32(_55) + _15 + 160]
        else:
            mem[floor32(_15) - 8386] = mem[floor32(_15) + -(_15 % 32) - 8354 len _15 % 32]
            mem[floor32(_15) - 8354] = mem[mem[288] + 96]
            _60 = mem[mem[288] + 96]
            if not mem[mem[288] + 96]:
                if not mem[mem[288] + 96] % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len mem[mem[288] + 96] + floor32(_15) + 160]
                else:
                    mem[floor32(mem[mem[288] + 96]) + floor32(_15) - 8322] = mem[floor32(mem[mem[288] + 96]) + floor32(_15) + -(mem[mem[288] + 96] % 32) - 8290 len mem[mem[288] + 96] % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len floor32(_60) + floor32(_15) + 192]
            else:
                mem[floor32(_15) - 8322] = mem[mem[288] + 128]
                mem[floor32(_15) - 8290 len floor32(_60 - 1)] = mem[mem[288] + 160 len floor32(_60 - 1)]
                if not _60 % 32:
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len _60 + floor32(_15) + 160]
                else:
                    mem[floor32(_60) + floor32(_15) - 8322] = mem[floor32(_60) + floor32(_15) + -(_60 % 32) - 8290 len _60 % 32]
                    create contract with 0 wei
                                    code: code.data[9348 len 3022], 128, floor32(_15) + 192, mem[-8482 len floor32(_60) + floor32(_15) + 192]
    require create.new_address
    stor0 = address(create.new_address)
    return code.data[706 len 6608]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 supply;
uint256 investors;

function supply() {
    return supply
}

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function investors() {
    return investors
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.number > endBlock)
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    investors++
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buySampleTokens(address arg1) payable {
    investors++
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
