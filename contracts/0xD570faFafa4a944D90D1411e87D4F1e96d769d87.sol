contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 nonce;
address wAddress;

function w() {
    return wAddress
}

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function complete() {
    require msg.sender == owner
    nonce = 0
    emit Complete()
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setWithdrawable(address arg1) {
    require msg.sender == owner
    wAddress = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
        newOwner = 0
        emit ChangedOwner(newOwner);
}

function distribute(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(wAddress)
        call wAddress.withdrawTo(address arg1) with:
             gas gas_remaining wei
            args address(_14)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    emit BatchComplete(nonce);
    nonce++
}



}
