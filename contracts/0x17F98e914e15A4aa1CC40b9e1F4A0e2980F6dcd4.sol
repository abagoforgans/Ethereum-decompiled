contract main {




// =====================  Runtime code  =====================


address owner;
address proxyAddress;
array of struct winners;

function owner() {
    return owner
}

function winners(uint256 arg1) {
    require arg1 < winners.length
    return winners[arg1].field_0
}

function proxy() {
    return proxyAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_862d1449(?) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_792b1ad5(?) {
    require msg.sender == owner
    idx = 0
    while idx < winners.length:
        mem[0] = 2
        mem[100] = winners[idx].field_0
        mem[132] = arg2
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args winners[idx].field_0, arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function getAll() {
    require msg.sender == owner
    if not winners.length:
        mem[(32 * winners.length) + 128] = 32
        mem[(32 * winners.length) + 160] = winners.length
        mem[(32 * winners.length) + 192 len floor32(winners.length)] = mem[128 len floor32(winners.length)]
        return memory
          from (32 * winners.length) + 128
           len (96 * winners.length) + 64
    mem[128] = address(winners.field_0)
    idx = 128
    s = 0
    while (32 * winners.length) + 96 > idx:
        mem[idx + 32] = winners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * winners.length) + 192 len floor32(winners.length)] = mem[128 len floor32(winners.length)]
    return Array(len=winners.length, data=mem[128 len floor32(winners.length)], mem[(32 * winners.length) + floor32(winners.length) + 192 len (32 * winners.length) - floor32(winners.length)]), 
}

function sub_c459904a(?) {
    require msg.sender == owner
    require ext_code.size(proxyAddress)
    call proxyAddress.addressOf(string arg1) with:
         gas gas_remaining wei
        args Array(len=9, data='EDCON2019')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getNum() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < arg2:
        require ext_call.return_data[0]
        mem[100] = sha3(block.hash(arg1 - idx)) % ext_call.return_data[0]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getAddr(uint256 arg1) with:
             gas gas_remaining wei
            args (sha3(block.hash(arg1 - idx)) % ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        winners.length++
        mem[0] = 2
        winners[winners.length].field_0 = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}



}
