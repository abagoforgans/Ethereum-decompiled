contract main {


// =======================  Init code  ======================


address stor0;
mapping of struct stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[4733 len 20]
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    stor1[0].field_256 = 0
    stor1[0].field_512 = ext_call.return_data[0]
    stor1[0].field_768 = 0
    stor1[0].field_1024 = ext_call.return_data[0]
    stor1[0].field_1280 = 0
    return code.data[635 len 4086]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct sub_00832ce9;

function sub_00832ce9(?) {
    require msg.sender == owner
    return sub_00832ce9[0][arg1].field_256
}

function sub_7f616488(?) {
    require msg.sender == owner
    return sub_00832ce9[0].field_1280
}

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function getBalance() {
    require msg.sender == owner
    return eth.balance(this.address)
}

function _fallback() {
    emit IncomingTx(msg.sender, msg.value, block.timestamp, block.number);
}

function sub_ace4c185(?) {
    require msg.sender == owner
    sub_00832ce9[0][arg1].field_768 = uint8(arg2)
}

function sub_c8224bc2(?) {
    require msg.sender == owner
    sub_00832ce9[0][arg1][0].field_0 = arg2
    sub_00832ce9[0][arg1][0].field_256 = block.timestamp
    sub_00832ce9[0][arg1].field_512++
}

function addMerchant(address arg1) {
    require msg.sender == owner
    sub_00832ce9[0][sub_00832ce9[0].field_1280].field_256 = arg1
    sub_00832ce9[0][sub_00832ce9[0].field_1280].field_512 = 0
    sub_00832ce9[0][sub_00832ce9[0].field_1280].field_768 = 1
    sub_00832ce9[0].field_1280++
}

function sub_b27920bc(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _14 = mem[(32 * idx) + 128]
        require msg.sender == owner
        mem[0] = idx
        mem[32] = sha3(0, 1)
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = mem[(32 * idx) + 128]
        mem[_17 + 32] = block.timestamp
        mem[0] = 0
        mem[32] = sha3(idx, sha3(0, 1))
        sub_00832ce9[0][idx][0].field_0 = _14
        sub_00832ce9[0][idx][0].field_256 = block.timestamp
        sub_00832ce9[0][idx].field_512++
        idx = idx + 1
        continue 
}

function sub_83c0b8ac(?) {
    require msg.sender == owner
    if eth.balance(this.address) < sub_00832ce9[0][arg1][0].field_0:
        emit 0x19795156: arg1, 0, 0, eth.balance(this.address), sub_00832ce9[0][arg1][0].field_0, block.timestamp
    else:
        if bool(sub_00832ce9[0][arg1].field_768) == 1:
            call sub_00832ce9[0][arg1].field_256 with:
               value sub_00832ce9[0][arg1][0].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                emit 0x19795156: arg1, 0, 0, eth.balance(this.address), sub_00832ce9[0][arg1][0].field_0, block.timestamp
                revert 
            emit OutgoingTx(sub_00832ce9[0][arg1].field_256, sub_00832ce9[0][arg1][0].field_0, block.timestamp, block.number);
}

function sub_c129cdfb(?) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    s = 0
    s = 0
    idx = arg1
    while idx < arg2:
        mem[0] = 0
        mem[32] = sha3(idx, sha3(0, 1))
        if eth.balance(this.address) < sub_00832ce9[0][idx][0].field_0:
            mem[mem[64]] = idx
            mem[mem[64] + 32] = arg1
            mem[mem[64] + 64] = arg2
            mem[mem[64] + 96] = eth.balance(this.address)
            mem[mem[64] + 128] = sub_00832ce9[0][idx][0].field_0
            mem[mem[64] + 160] = block.timestamp
            emit 0x19795156: idx, arg1, arg2, eth.balance(this.address), sub_00832ce9[0][idx][0].field_0, block.timestamp
        else:
            if bool(sub_00832ce9[0][idx].field_768) == 1:
                call sub_00832ce9[0][idx].field_256 with:
                   value sub_00832ce9[0][idx][0].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    emit 0x19795156: idx, arg1, arg2, eth.balance(this.address), sub_00832ce9[0][idx][0].field_0, block.timestamp
                    revert 
                mem[mem[64]] = sub_00832ce9[0][idx].field_256
                mem[mem[64] + 32] = sub_00832ce9[0][idx][0].field_0
                mem[mem[64] + 64] = block.timestamp
                emit OutgoingTx(sub_00832ce9[0][idx].field_256, sub_00832ce9[0][idx][0].field_0, block.timestamp, block.number);
        s = sha3(0, sha3(idx, sha3(0, 1)))
        s = sha3(idx, sha3(0, 1))
        idx = idx + 1
        continue 
}



}
