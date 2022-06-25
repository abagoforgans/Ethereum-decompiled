contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
array of struct stor3;
mapping of uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 sub_e9e74835;
uint256 stor9;
uint256 sub_472b8a6a;
uint256 potSize;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint256 stor13; offset 16
uint256 sub_3a68588a;

function sub_3a68588a(?) {
    return sub_3a68588a
}

function sub_472b8a6a(?) {
    return sub_472b8a6a
}

function potSize() {
    return potSize
}

function owner() {
    return owner
}

function sub_e9e74835(?) {
    return sub_e9e74835
}

function getNumberOfBets() {
    return stor3.length
}

function destroy() {
    require msg.sender == owner
    call owner with:
       value potSize wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_542ee1e9(?) {
    require msg.sender == owner
    sub_472b8a6a = arg1
    return 1
}

function sub_f8d2971f(?) {
    require msg.sender == owner
    sub_3a68588a = arg1
    return 1
}

function sub_7fd60e42(?) {
    require msg.sender == owner
    if uint8(stor13.field_16):
        Mask(240, 0, stor13.field_16) = 0
    else:
        Mask(240, 0, stor13.field_16) = 1
    return bool(uint8(stor13.field_16))
}

function sub_c63db22f(?) {
    require msg.sender == owner
    mem[128] = stor3.length
    if not stor3.length:
        emit 0xabb35053: 32, stor3.length
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[160] = address(stor3.field_0)
    idx = 160
    s = 0
    while (32 * stor3.length) + 160 > idx + 32:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xabb35053: Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
    if not stor3.length:
        mem[(32 * stor3.length) + 128] = 32
        mem[(32 * stor3.length) + 160] = stor3.length
        mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
        return memory
          from (32 * stor3.length) + 128
           len (96 * stor3.length) + 64
    mem[128] = address(stor3.field_0)
    idx = 128
    s = 0
    while (32 * stor3.length) + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function placeBet() payable {
    if bool(uint8(stor13.field_16)) != 1:
        emit 0x7c57b52c: msg.sender, msg.value, block.number
    else:
        emit 0xe2df9c54: msg.sender, msg.value
        require msg.value >= sub_3a68588a
        stor2 = sha3(block.hash(stor1), stor2)
        emit betPlaced(msg.sender, msg.value, block.number);
        stor1 = block.number
        stor3.length++
        stor3[stor3.length].field_0 = msg.sender
        emit 0x6fec4344: msg.sender, msg.value, block.number
        potSize += msg.value
    if bool(uint8(stor13.field_8)) == 1:
        if stor3.length < sub_472b8a6a:
            emit 0xca1217f4: 0
        else:
            stor1 = block.number
            require stor3.length
            require sha3(block.hash(stor1 - 1), stor2) % stor3.length < stor3.length
            if bool(stor7) != 1:
                emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % stor3.length, stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, stor1, 0, potSize
                stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = potSize
                if bool(uint8(stor13.field_0)) == 1:
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                    call stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0 with:
                       value potSize wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = potSize
                        emit 0xd2d225d6: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize
                    else:
                        emit 0xa1d76e34: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize
                        emit 0xbfe6cc37: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize
            else:
                emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % stor3.length, stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, stor1, 0, potSize * stor6 / 100
                stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = potSize * stor6 / 100
                call owner with:
                   value potSize * stor5 / 100 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x754bbc6c: owner, potSize * stor5 / 100
                if bool(uint8(stor13.field_0)) == 1:
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                    call stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0 with:
                       value potSize * stor6 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = potSize * stor6 / 100
                        emit 0xd2d225d6: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize * stor6 / 100
                    else:
                        emit 0xa1d76e34: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize * stor6 / 100
                        emit 0xbfe6cc37: stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0, potSize * stor6 / 100
            stor2 = 0
            stor3.length = 0
            idx = 0
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
            potSize = 0
            emit 0xea4b14a4: 1
            sub_e9e74835 += stor9
    return 1
}



}
