contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor4;
array of address stor5;

function _fallback() {
    mem[96 len -1649] = code.data[2188 len -1649]
    mem[64] = -1553
    stor0 = mem[108 len 20]
    stor1 = mem[140 len 20]
    require mem[140 len 20]
    require mem[mem[160] + 96] == mem[mem[192] + 96]
    stor2 = mem[mem[192] + 96]
    stor5.length = mem[mem[192] + 96]
    mem[0] = 5
    if not mem[mem[192] + 96]:
        idx = 0
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[192] + 128
        while mem[192] + (32 * mem[mem[192] + 96]) + 128 > idx:
            stor5[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[192] + 96]) + 31) >> 5
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor2:
        require idx < mem[mem[160] + 96]
        require mem[(32 * idx) + mem[160] + 128]
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor2:
        require idx < mem[mem[192] + 96]
        require mem[(32 * idx) + mem[192] + 140 len 20]
        require idx < mem[mem[160] + 96]
        require idx < mem[mem[192] + 96]
        mem[0] = mem[(32 * idx) + mem[192] + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + mem[192] + 140 len 20]] = mem[(32 * idx) + mem[160] + 128]
        idx = idx + 1
        continue 
    return code.data[539 len 1649]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;
uint256 totalMembers;
uint256 allocatedBonus;
mapping of uint256 stor4;
array of address team;

function teamAddresses(uint256 arg1) {
    require arg1 < team.length
    return team[arg1]
}

function allocatedBonus() {
    return allocatedBonus
}

function totalMembers() {
    return totalMembers
}

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42c1867b with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if bool(ext_call.return_data[0]) != 1:
        return (1 == bool(ext_call.return_data[0]))
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalizeCrowdsale() {
    require crowdsaleAddress == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    s = 0
    idx = 0
    while idx < totalMembers:
        require idx < team.length
        mem[32] = 4
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
            require stor4[stor5[idx]] * ext_call.return_data[0] / ext_call.return_data[0] == stor4[stor5[idx]]
        allocatedBonus = stor4[stor5[idx]] * ext_call.return_data[0] / 10000
        if idx == totalMembers - 1:
            if allocatedBonus < 1000000 * 10^18:
                allocatedBonus = 1000000 * 10^18
        require idx < team.length
        mem[0] = 5
        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[100] = team[idx]
        mem[132] = allocatedBonus
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args team[idx], allocatedBonus
        require ext_call.success
        s = 1000000 * 10^18
        idx = idx + 1
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5f412d4f with:
         gas gas_remaining - 710 wei
    require ext_call.success
}



}
