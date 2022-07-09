contract main {




// =====================  Runtime code  =====================


address owner;
address proxyAddress;
array of address winners;

function owner() {
    return owner
}

function winners(uint256 arg1) {
    require arg1 < winners.length
    return winners[arg1]
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

function sub_792b1ad5(?) {
    require msg.sender == owner
    idx = 0
    while idx < winners.length:
        mem[0] = 2
        mem[100] = winners[idx]
        mem[132] = arg2
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args winners[idx], arg2
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
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
        winners[winners.length] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}



}
