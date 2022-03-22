contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint8 stor1;
uint256 stor3;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(stor0)] = 1
    emit 0xf7dbabe4: address(stor0)
    stor3 = 0
    return code.data[265 len 2232]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of struct sub_b8adadef;
uint256 sub_e009b694;

function sub_719d6353(?) payable {
    return sub_e009b694
}

function sub_b8adadef(?) payable {
    return sub_b8adadef[Mask(160, 96, arg1)].field_0, sub_b8adadef[Mask(160, 96, arg1)].field_256
}

function sub_e009b694(?) payable {
    return sub_e009b694
}

function destroy() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_71327a6a(?) payable {
    stor1[address(arg1)] = 1
    emit 0xf7dbabe4: arg1
}

function registrantRemove(address arg1) payable {
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
        emit 0x4693d570: arg1
}

function sub_99285825(?) payable {
    if sub_b8adadef[Mask(160, 96, arg1)].field_0 != msg.sender:
        return 0
    sub_b8adadef[Mask(160, 96, arg1)].field_0 = arg2 or Mask(96, 160, sub_b8adadef[Mask(160, 96, arg1)].field_0)
    emit 0x42d20092: msg.sender, address(arg2), Mask(160, 96, arg1)
    return 1
}

function sub_aa2487a9(?) payable {
    if sub_b8adadef[Mask(160, 96, arg1)].field_256:
        return 0
    if bool(stor1[address(msg.sender)]) != 1:
        return 0
    sub_b8adadef[Mask(160, 96, arg1)].field_0 = msg.sender or Mask(96, 160, sub_b8adadef[Mask(160, 96, arg1)].field_0)
    sub_b8adadef[Mask(160, 96, arg1)].field_256 = block.timestamp
    sub_e009b694++
    emit 0x981fbaaa: msg.sender, Mask(160, 96, arg1)
    return 1
}

function sub_1b8b07b4(?) payable {
    hash = ripemd160hash(msg.sender, block.number, block.timestamp, gas_remaining) 
    require ripemd160hash.result
    if sub_b8adadef[address(hash)].field_256:
        return 0
    if bool(stor1[address(msg.sender)]) != 1:
        return 0
    sub_b8adadef[address(hash)].field_0 = msg.sender or Mask(96, 160, sub_b8adadef[address(hash)].field_0)
    sub_b8adadef[address(hash)].field_256 = block.timestamp
    sub_e009b694++
    emit 0x981fbaaa: msg.sender, address(hash)
    return 1
}

function sub_e53e7e18(?) payable {
    mem[64] = 96
    idx = 0
    s = 1
    while idx < arg1:
        mem[mem[64] + 20] = block.number
        mem[mem[64] + 52] = block.timestamp
        mem[mem[64] + 84] = gas_remaining
        hash = ripemd160hash(msg.sender, block.number, block.timestamp, gas_remaining) 
        mem[mem[64]] = hash
        require ripemd160hash.result
        mem[0] = address(hash)
        mem[32] = 2
        if sub_b8adadef[address(hash)].field_256:
            idx = idx + 1
            s = 0
            continue 
        mem[0] = msg.sender
        mem[32] = 1
        if bool(stor1[address(msg.sender)]) != 1:
            idx = idx + 1
            s = 0
            continue 
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23] = msg.sender
        mem[_23 + 32] = block.timestamp
        mem[0] = address(hash)
        mem[32] = 2
        sub_b8adadef[address(hash)].field_0 = msg.sender or Mask(96, 160, sub_b8adadef[address(hash)].field_0)
        sub_b8adadef[address(hash)].field_256 = block.timestamp
        sub_e009b694++
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(hash)
        emit 0x981fbaaa: msg.sender, address(hash)
        idx = idx + 1
        s = s
        continue 
    return bool(s)
}



}
