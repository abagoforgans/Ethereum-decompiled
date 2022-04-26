contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[1414 len 20]
    stor1 = code.data[1414 len 20]
    return code.data[132 len 1270]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 paySize;
uint256 holdersCount;
uint256 tokensSpent;

function paySize() {
    return paySize
}

function holdersCount() {
    return holdersCount
}

function owner() {
    return owner
}

function tokensSpent() {
    return tokensSpent
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() {
    revert
}

function setPaySize(uint256 arg1) {
    require owner == msg.sender
    paySize = arg1
    return arg1
}

function changeOwner(address arg1) payable {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_450925a2(?) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function massTransfer(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require arg1.length < 10000
    mem[(32 * arg1.length) + 132] = this.address
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require arg1.length * paySize <= ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = paySize
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], paySize
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    holdersCount += arg1.length
    tokensSpent += arg1.length * paySize
    emit Wasted(owner, tokensSpent + (arg1.length * paySize), block.timestamp);
}



}
