contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[0].field_512 = msg.sender or Mask(96, 160, stor1[0].field_512)
    stor1[0].field_768 = 0
    stor1[0].field_1024 = 100000
    stor1[0].field_1280 = 0
    stor1[0].field_1536 = 100000
    stor1[0].field_1792 = 0
    return code.data[266 len 4016]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 stor0;
mapping of struct sub_690b90a9;

function sub_690b90a9(?) payable {
    return sub_690b90a9[0].field_1280
}

function getShareholder(uint256 arg1) payable {
    return sub_690b90a9[0][arg1].field_0
}

function sub_7f616488(?) payable {
    return sub_690b90a9[0].field_1792
}

function owner() payable {
    return address(owner)
}

function sub_bd0e8b2d(?) payable {
    return sub_690b90a9[0].field_1536
}

function die() payable {
    require msg.sender == address(owner)
    selfdestruct(sub_690b90a9[0].field_512)
}

function _fallback() payable {
    emit IncomingTx(msg.sender, msg.value, block.timestamp, block.number);
}

function sub_dda1a1e6(?) payable {
    require msg.sender == address(owner)
    sub_690b90a9[0][arg1].field_512 = 0
}

function sub_5dea5e47(?) payable {
    require msg.sender == address(owner)
    sub_690b90a9[0][1][arg1].field_768 = 0
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_c8224bc2(?) payable {
    require msg.sender == address(owner)
    sub_690b90a9[0][1][arg1][0].field_0 = arg2
    sub_690b90a9[0][1][arg1][0].field_256 = block.timestamp
    sub_690b90a9[0][1][arg1].field_512++
}

function sendTo(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    emit OutgoingTx(address(arg1), arg2, block.timestamp, block.number);
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function addMerchant(address arg1) payable {
    require msg.sender == address(owner)
    sub_690b90a9[0][1][sub_690b90a9[0].field_1792].field_256 = arg1 or Mask(96, 160, sub_690b90a9[0][1][sub_690b90a9[0].field_1792].field_256)
    sub_690b90a9[0][1][sub_690b90a9[0].field_1792].field_512 = 0
    sub_690b90a9[0][1][sub_690b90a9[0].field_1792].field_768 = 1
    sub_690b90a9[0].field_1792++
}

function addShareholder(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    require arg2 <= sub_690b90a9[0].field_1536
    sub_690b90a9[0][sub_690b90a9[0].field_1280].field_0 = arg1 or Mask(96, 160, sub_690b90a9[0][sub_690b90a9[0].field_1280].field_0)
    sub_690b90a9[0][sub_690b90a9[0].field_1280].field_256 = arg2
    sub_690b90a9[0][sub_690b90a9[0].field_1280].field_512 = 1
    sub_690b90a9[0].field_1536 -= arg2
    sub_690b90a9[0].field_1280++
}

function sub_b27920bc(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == address(owner)
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _14 = mem[(32 * idx) + 128]
        require msg.sender == address(owner)
        mem[0] = idx
        mem[32] = sha3(0, 1) + 1
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = mem[(32 * idx) + 128]
        mem[_17 + 32] = block.timestamp
        mem[0] = 0
        mem[32] = sha3(idx, sha3(0, 1) + 1)
        sub_690b90a9[0][1][idx][0].field_0 = _14
        sub_690b90a9[0][1][idx][0].field_256 = block.timestamp
        sub_690b90a9[0][1][idx].field_512++
        idx = idx + 1
        continue 
}

function sub_a3934658(?) payable {
    mem[64] = 96
    require msg.sender == address(owner)
    s = 0
    s = 0
    idx = 0
    while idx < sub_690b90a9[0].field_1792:
        mem[32] = sha3(idx, sha3(0, 1) + 1)
        require eth.balance(this.address) >= sub_690b90a9[0][1][idx][0].field_0
        require msg.sender == address(owner)
        mem[mem[64]] = sub_690b90a9[0][1][idx].field_256
        mem[mem[64] + 32] = sub_690b90a9[0][1][idx][0].field_0
        mem[mem[64] + 64] = block.timestamp
        emit OutgoingTx(sub_690b90a9[0][1][idx].field_256, sub_690b90a9[0][1][idx][0].field_0, block.timestamp, block.number);
        mem[0] = 0
        mem[32] = 1
        call sub_690b90a9[0][1][idx].field_256 with:
           value sub_690b90a9[0][1][idx][0].field_0 wei
             gas 0 wei
        s = sha3(0, sha3(idx, sha3(0, 1) + 1))
        s = sha3(idx, sha3(0, 1) + 1)
        idx = idx + 1
        continue 
}

function payDividends(uint256 arg1) payable {
    mem[64] = 96
    require msg.sender == address(owner)
    s = 0
    s = 0
    idx = 0
    while idx < sub_690b90a9[0].field_1280:
        mem[0] = idx
        mem[32] = sha3(0, 1)
        require eth.balance(this.address) >= arg1 * sub_690b90a9[0][idx].field_256
        if sub_690b90a9[0][idx].field_512 == 1:
            require msg.sender == address(owner)
            mem[mem[64]] = sub_690b90a9[0][idx].field_0
            mem[mem[64] + 32] = arg1 * sub_690b90a9[0][idx].field_256
            mem[mem[64] + 64] = block.timestamp
            emit OutgoingTx(sub_690b90a9[0][idx].field_0, arg1 * sub_690b90a9[0][idx].field_256, block.timestamp, block.number);
            mem[0] = 0
            mem[32] = 1
            call sub_690b90a9[0][idx].field_0 with:
               value arg1 * sub_690b90a9[0][idx].field_256 wei
                 gas 0 wei
        s = arg1 * sub_690b90a9[0][idx].field_256
        s = sha3(idx, sha3(0, 1))
        idx = idx + 1
        continue 
}



}
