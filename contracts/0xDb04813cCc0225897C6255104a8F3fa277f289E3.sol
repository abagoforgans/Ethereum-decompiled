contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[1345 len 20]
    require stor0 == msg.sender
    require code.data[1313 len 20]
    emit OwnershipTransferred(stor0, code.data[1313 len 20]);
    stor0 = code.data[1313 len 20]
    return code.data[279 len 1022]
}



// =====================  Runtime code  =====================


address owner;
uint256 numDrops;
uint256 dropAmount;
address stor3;

function dropAmount() {
    return dropAmount
}

function numDrops() {
    return numDrops
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyDrain(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    require ext_call.success
}

function airDrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg2 > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(stor3)
        call stor3.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = arg2
        emit TokenDrop(mem[(32 * arg1.length) + 128], arg2);
        idx = idx + 1
        continue 
    numDrops += arg1.length
    dropAmount += arg2 * arg1.length
}



}
