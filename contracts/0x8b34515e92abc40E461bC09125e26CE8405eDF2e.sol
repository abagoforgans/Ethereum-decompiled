contract main {


// =======================  Init code  ======================


address stor0;
mapping of struct stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[3540 len 20]
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor1[0].field_256 = 0
    stor1[0].field_512 = ext_call.return_data[0]
    stor1[0].field_768 = 0
    stor1[0].field_1024 = ext_call.return_data[0]
    return code.data[620 len 2908]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function _fallback() {
    emit IncomingTx(msg.sender, msg.value, block.timestamp, block.number);
}

function sweep(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function addShareholder(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= stor1[0].field_1024
    stor1[0][stor1[0].field_768].field_0 = arg1
    stor1[0][stor1[0].field_768].field_256 = arg2
    stor1[0].field_1024 -= arg2
    stor1[0].field_768++
    emit NewShareholder(stor1[0].field_768, address(arg1), arg2, block.timestamp);
}

function payDividend(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if eth.balance(this.address) < arg2 * stor1[0][arg1].field_256:
        emit DividendError(arg1, 0, 0, eth.balance(this.address), arg2 * stor1[0][arg1].field_256, block.timestamp);
    else:
        call stor1[0][arg1].field_0 with:
           value arg2 * stor1[0][arg1].field_256 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            emit DividendError(arg1, 0, 0, eth.balance(this.address), arg2 * stor1[0][arg1].field_256, block.timestamp);
            revert
        emit OutgoingTx(stor1[0][arg1].field_0, arg2 * stor1[0][arg1].field_256, block.timestamp, block.number);
}

function payDividends(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    s = 0
    s = 0
    idx = arg1
    while idx < arg2:
        mem[0] = idx
        mem[32] = sha3(0, 1)
        if eth.balance(this.address) >= arg3 * stor1[0][idx].field_256:
            call stor1[0][idx].field_0 with:
               value arg3 * stor1[0][idx].field_256 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit DividendError(idx, arg1, arg2, eth.balance(this.address), arg3 * stor1[0][idx].field_256, block.timestamp);
                revert
            mem[mem[64]] = stor1[0][idx].field_0
            mem[mem[64] + 32] = arg3 * stor1[0][idx].field_256
            mem[mem[64] + 64] = block.timestamp
            emit OutgoingTx(stor1[0][idx].field_0, arg3 * stor1[0][idx].field_256, block.timestamp, block.number);
        else:
            mem[mem[64]] = idx
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = eth.balance(this.address)
            mem[mem[64] + 128] = arg3 * stor1[0][idx].field_256
            mem[mem[64] + 160] = block.timestamp
            emit DividendError(idx, arg1, arg2, eth.balance(this.address), arg3 * stor1[0][idx].field_256, block.timestamp);
        s = arg3 * stor1[0][idx].field_256
        s = sha3(idx, sha3(0, 1))
        idx = idx + 1
        continue 
}



}
