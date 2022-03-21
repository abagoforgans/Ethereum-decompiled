contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[0].field_512 = 0
    stor1[0].field_768 = 500000
    stor1[0].field_1024 = 0
    stor1[0].field_1280 = 500000
    stor1[0].field_1536 = 0
    return code.data[211 len 4905]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address stor0;
uint256 stor0;
mapping of struct sub_5f860f86;
address owner;

function sub_5f860f86(?) payable {
    return sub_5f860f86[0][arg1].field_0
}

function sub_690b90a9(?) payable {
    return sub_5f860f86[0].field_1024
}

function sub_7f616488(?) payable {
    return sub_5f860f86[0].field_1536
}

function owner() payable {
    return owner
}

function sub_bd0e8b2d(?) payable {
    return sub_5f860f86[0].field_1280
}

function _fallback() payable {
    emit IncomingTx(msg.sender, msg.value, block.timestamp, block.number);
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(stor0)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_5a791688(?) payable {
    require msg.sender == address(stor0)
    sub_5f860f86[0][arg1].field_512 = arg2 or Mask(248, 8, sub_5f860f86[0][arg1].field_512)
    return 1
}

function sub_8d66ddaf(?) payable {
    require msg.sender == address(stor0)
    sub_5f860f86[0][1][arg1].field_768 = arg2 or Mask(248, 8, sub_5f860f86[0][1][arg1].field_768)
    return 1
}

function sub_c8224bc2(?) payable {
    require msg.sender == address(stor0)
    sub_5f860f86[0][1][arg1][0].field_0 = arg2
    sub_5f860f86[0][1][arg1][0].field_256 = block.timestamp
    sub_5f860f86[0][1][arg1].field_512++
    return (sub_5f860f86[0][1][arg1].field_512 + 1)
}

function addMerchant(address arg1) payable {
    require msg.sender == address(stor0)
    sub_5f860f86[0][1][sub_5f860f86[0].field_1536].field_256 = arg1 or Mask(96, 160, sub_5f860f86[0][1][sub_5f860f86[0].field_1536].field_256)
    sub_5f860f86[0][1][sub_5f860f86[0].field_1536].field_512 = 0
    sub_5f860f86[0][1][sub_5f860f86[0].field_1536].field_768 = 1
    sub_5f860f86[0].field_1536++
    return (sub_5f860f86[0].field_1536 + 1)
}

function sub_83c0b8ac(?) payable {
    require msg.sender == address(stor0)
    require eth.balance(this.address) >= sub_5f860f86[0][1][arg1][0].field_0
    if sub_5f860f86[0][1][arg1].field_768 != 1:
        return 0
    require msg.sender == address(stor0)
    emit OutgoingTx(sub_5f860f86[0][1][arg1].field_256, sub_5f860f86[0][1][arg1][0].field_0, block.timestamp, block.number);
    call sub_5f860f86[0][1][arg1].field_256 with:
       value sub_5f860f86[0][1][arg1][0].field_0 wei
         gas 0 wei
    return 1
}

function payDividend(uint256 arg1, uint256 arg2) payable {
    require msg.sender == address(stor0)
    require eth.balance(this.address) >= arg2 * sub_5f860f86[0][arg1].field_256
    if sub_5f860f86[0][arg1].field_512 != 1:
        return 0
    require msg.sender == address(stor0)
    emit OutgoingTx(sub_5f860f86[0][arg1].field_0, arg2 * sub_5f860f86[0][arg1].field_256, block.timestamp, block.number);
    call sub_5f860f86[0][arg1].field_0 with:
       value arg2 * sub_5f860f86[0][arg1].field_256 wei
         gas 0 wei
    return 1
}

function sub_c129cdfb(?) payable {
    require msg.sender == address(stor0)
    if arg1 >= arg2:
        return 0
    require eth.balance(this.address) >= sub_5f860f86[0][1][arg1][0].field_0
    if sub_5f860f86[0][1][arg1].field_768 != 1:
        return 0
    require msg.sender == address(stor0)
    emit OutgoingTx(sub_5f860f86[0][1][arg1].field_256, sub_5f860f86[0][1][arg1][0].field_0, block.timestamp, block.number);
    call sub_5f860f86[0][1][arg1].field_256 with:
       value sub_5f860f86[0][1][arg1][0].field_0 wei
         gas 0 wei
    return 1
}

function sub_9a77cb72(?) payable {
    require msg.sender == address(stor0)
    require arg2 <= sub_5f860f86[0].field_1280
    sub_5f860f86[0][sub_5f860f86[0].field_1024].field_0 = arg1 or Mask(96, 160, sub_5f860f86[0][sub_5f860f86[0].field_1024].field_0)
    sub_5f860f86[0][sub_5f860f86[0].field_1024].field_256 = arg2
    sub_5f860f86[0][sub_5f860f86[0].field_1024].field_512 = arg3 or Mask(248, 8, sub_5f860f86[0][sub_5f860f86[0].field_1024].field_512)
    sub_5f860f86[0].field_1280 -= arg2
    sub_5f860f86[0].field_1024++
    return (sub_5f860f86[0].field_1024 + 1)
}

function payDividends(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require msg.sender == address(stor0)
    if arg1 >= arg2:
        return 0
    require eth.balance(this.address) >= arg3 * sub_5f860f86[0][arg1].field_256
    if sub_5f860f86[0][arg1].field_512 != 1:
        return 0
    require msg.sender == address(stor0)
    emit OutgoingTx(sub_5f860f86[0][arg1].field_0, arg3 * sub_5f860f86[0][arg1].field_256, block.timestamp, block.number);
    call sub_5f860f86[0][arg1].field_0 with:
       value arg3 * sub_5f860f86[0][arg1].field_256 wei
         gas 0 wei
    return 1
}

function sub_b27920bc(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(stor0)
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _16 = mem[(32 * idx) + 128]
        require msg.sender == address(stor0)
        mem[0] = idx
        mem[32] = sha3(0, 1) + 1
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = mem[(32 * idx) + 128]
        mem[_21 + 32] = block.timestamp
        mem[0] = 0
        mem[32] = sha3(idx, sha3(0, 1) + 1)
        sub_5f860f86[0][1][idx][0].field_0 = _16
        sub_5f860f86[0][1][idx][0].field_256 = block.timestamp
        sub_5f860f86[0][1][idx].field_512++
        idx = idx + 1
        continue 
    return 1
}



}
