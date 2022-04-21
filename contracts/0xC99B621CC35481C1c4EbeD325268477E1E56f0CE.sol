contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;

function _fallback() {
    mem[96 len -1720] = code.data[2519 len -1720]
    mem[64] = -1624
    require mem[108 len 20]
    require mem[140 len 20]
    require mem[mem[160] + 96]
    require mem[mem[160] + 96] == mem[mem[192] + 96]
    stor0 = mem[108 len 20]
    stor3 = mem[108 len 20]
    mem[-1624] = 0xe5c9104700000000000000000000000000000000000000000000000000000000
    mem[-1620] = mem[140 len 20]
    require ext_code.size(mem[108 len 20])
    call mem[108 len 20].0xe5c91047 with:
         gas gas_remaining - 710 wei
        args mem[140 len 20]
    require ext_call.success
    stor6.length = mem[mem[192] + 96]
    if not mem[mem[192] + 96]:
        idx = 0
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            stor6[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        while stor6.length > idx:
            stor6[idx] = 0
            idx = idx + 1
            continue 
    stor5.length = mem[mem[160] + 96]
    mem[0] = 5
    if not mem[mem[160] + 96]:
        idx = 0
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor5[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    stor4 = 0
    if mem[224]:
        stor1 = mem[224]
    else:
        require ext_code.size(stor0)
        call stor0.0x78e97925 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor1 = ext_call.return_data[0]
    if mem[256]:
        stor2 = mem[256]
    else:
        require ext_code.size(stor0)
        call stor0.0x3197cbb6 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        stor2 = ext_call.return_data[0]
    return code.data[799 len 1720]
}



// =====================  Runtime code  =====================


address stor0;
uint256 startRC;
uint256 endRC;
address stor3;
uint256 soldTokensWithoutBonus;
array of uint256 euroThreshold;
array of uint256 bonusThreshold;
mapping of uint256 balanceUser;

function euroThreshold(uint256 arg1) {
    require arg1 < euroThreshold.length
    return euroThreshold[arg1]
}

function startRC() {
    return startRC
}

function bonusThreshold(uint256 arg1) {
    require arg1 < bonusThreshold.length
    return bonusThreshold[arg1]
}

function soldTokensWithoutBonus() {
    return soldTokensWithoutBonus
}

function balanceUser(address arg1) {
    return balanceUser[arg1]
}

function endRC() {
    return endRC
}

function updateTime(uint256 arg1, uint256 arg2) {
    require stor3 == msg.sender
    if arg1:
        startRC = arg1
    if arg2:
        endRC = arg2
}

function euroRaisedRc() {
    require ext_code.size(stor0)
    call stor0.0x8d835674 with:
         gas gas_remaining - 710 wei
        args soldTokensWithoutBonus
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp > startRC
    if block.timestamp < endRC:
        require ext_code.size(stor0)
        call stor0.0xf088d547 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] + balanceUser[address(msg.sender)] >= balanceUser[address(msg.sender)]
        balanceUser[address(msg.sender)] += ext_call.return_data[0]
        require ext_call.return_data[0] + soldTokensWithoutBonus >= soldTokensWithoutBonus
        soldTokensWithoutBonus += ext_call.return_data[0]
    else:
        require balanceUser[address(msg.sender)] > 0
        idx = 0
        s = 0
        while idx < euroThreshold.length:
            mem[0] = 5
            mem[128] = 0
            mem[100] = soldTokensWithoutBonus
            require ext_code.size(stor0)
            call stor0.0x8d835674 with:
                 gas gas_remaining - 710 wei
                args soldTokensWithoutBonus
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] / 1000 <= euroThreshold[idx]:
                idx = idx + 1
                s = s
                continue 
            require idx < bonusThreshold.length
            mem[0] = 6
            idx = idx + 1
            s = bonusThreshold[idx]
            continue 
        require s > 0
        if balanceUser[address(msg.sender)]:
            require balanceUser[address(msg.sender)]
            require s * balanceUser[address(msg.sender)] / balanceUser[address(msg.sender)] == s
        balanceUser[address(msg.sender)] = 0
        require ext_code.size(stor0)
        call stor0.0x77bd35fc with:
             gas gas_remaining - 710 wei
            args msg.sender, s * balanceUser[address(msg.sender)] / 100
        require ext_call.success
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
