contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 ownersCount;
uint256 sub_6e57d15b;
address crvTokenAddress;
address stor5;
uint256 baseRate;
uint256 referralRate;

function owners(address arg1) {
    return bool(stor0[arg1])
}

function baseRate() {
    return baseRate
}

function crvToken() {
    return crvTokenAddress
}

function sub_6e57d15b(?) {
    return sub_6e57d15b
}

function referralRate() {
    return referralRate
}

function ownersCount() {
    return ownersCount
}

function kill() {
    require stor0[address(msg.sender)]
    selfdestruct(stor5)
}

function _fallback() payable {
    revert
}

function sub_330283aa(?) {
    require stor0[address(msg.sender)]
    baseRate = arg1
}

function updateReferralRate(uint256 arg1) {
    require stor0[address(msg.sender)]
    referralRate = arg1
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
    ownersCount++
    emit OwnerAdded(arg1);
}

function removeOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1 != msg.sender
    require ownersCount > sub_6e57d15b
    require bool(stor0[address(arg1)]) == 1
    stor0[address(arg1)] = 0
    ownersCount--
    emit OwnerRemoved(arg1);
}

function transferToken(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)]
    require ext_code.size(crvTokenAddress)
    call crvTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function airdrop(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor0[address(msg.sender)]
    s = 0
    idx = 0
    while idx < arg1.length:
        require ext_code.size(crvTokenAddress)
        call crvTokenAddress.0x313ce567 with:
             gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * arg1.length) + 128]
        _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[96]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = (baseRate * 10^ext_call.return_data[0]) + (referralRate * _29 * 10^ext_call.return_data[0])
        require ext_code.size(crvTokenAddress)
        call crvTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], (baseRate * 10^ext_call.return_data[0]) + (referralRate * _29 * 10^ext_call.return_data[0])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _39 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[mem[64]] = baseRate
        mem[mem[64] + 32] = referralRate
        mem[mem[64] + 64] = _39
        mem[mem[64] + 96] = (baseRate * 10^ext_call.return_data[0]) + (referralRate * _29 * 10^ext_call.return_data[0])
        emit 0x793107a2: baseRate, referralRate, _39, (baseRate * 10^ext_call.return_data[0]) + (referralRate * _29 * 10^ext_call.return_data[0]), address(_37)
        s = (baseRate * 10^ext_call.return_data[0]) + (referralRate * _29 * 10^ext_call.return_data[0])
        idx = idx + 1
        continue 
}



}
