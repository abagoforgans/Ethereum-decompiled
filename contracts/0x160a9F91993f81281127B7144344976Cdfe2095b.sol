contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
array of struct bet;
mapping of uint256 stor4;
uint256 sub_da93fe95;
uint256 sub_eb952d4d;
uint8 stor7;
uint256 sub_472b8a6a;
uint256 sub_7a0733f6;
uint8 stor11;
uint8 stor11; offset 8
uint8 stor11; offset 16
uint256 stor11; offset 16
uint256 sub_3a68588a;

function getBet(uint256 arg1) {
    require arg1 < bet.length
    emit 0x8a6b8c1c: arg1, bet[arg1].field_0
    return bet[arg1].field_0
}

function isRunning() {
    return bool(uint8(stor11.field_16))
}

function sub_3a68588a(?) {
    return sub_3a68588a
}

function sub_472b8a6a(?) {
    return sub_472b8a6a
}

function potSize() {
    return sub_7a0733f6
}

function sub_7a0733f6(?) {
    return sub_7a0733f6
}

function owner() {
    return owner
}

function sub_da93fe95(?) {
    return sub_da93fe95
}

function sub_eb952d4d(?) {
    return sub_eb952d4d
}

function getNumberOfBets() {
    return bet.length
}

function destroy() {
    require msg.sender == owner
    call owner with:
       value sub_7a0733f6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_82020e6a(?) {
    require msg.sender == owner
    sub_3a68588a = arg1
    return 1
}

function sub_ba970a5b(?) {
    require msg.sender == owner
    sub_472b8a6a = arg1
    return 1
}

function startTheGame() {
    require msg.sender == owner
    if uint8(stor11.field_16):
        Mask(240, 0, stor11.field_16) = 0
    else:
        Mask(240, 0, stor11.field_16) = 1
    return bool(uint8(stor11.field_16))
}

function withdraw() {
    emit 0x2e01d74f: msg.sender, stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0xd2d225d6: msg.sender, stor4[address(msg.sender)]
        return 0
    emit 0xa1d76e34: msg.sender, stor4[address(msg.sender)]
    return 1
}

function getParticipants() {
    require msg.sender == owner
    mem[128] = bet.length
    if not bet.length:
        emit 0xabb35053: 32, bet.length
        mem[(32 * bet.length) + 128] = 32
        mem[(32 * bet.length) + 160] = bet.length
        mem[(32 * bet.length) + 192 len floor32(bet.length)] = mem[128 len floor32(bet.length)]
        return memory
          from (32 * bet.length) + 128
           len (96 * bet.length) + 64
    mem[160] = address(bet.field_0)
    idx = 160
    s = 0
    while (32 * bet.length) + 160 > idx + 32:
        mem[idx + 32] = bet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xabb35053: Array(len=bet.length, data=mem[160 len 32 * bet.length])
    if not bet.length:
        mem[(32 * bet.length) + 128] = 32
        mem[(32 * bet.length) + 160] = bet.length
        mem[(32 * bet.length) + 192 len floor32(bet.length)] = mem[128 len floor32(bet.length)]
        return memory
          from (32 * bet.length) + 128
           len (96 * bet.length) + 64
    mem[128] = address(bet.field_0)
    idx = 128
    s = 0
    while (32 * bet.length) + 96 > idx:
        mem[idx + 32] = bet[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * bet.length) + 192 len floor32(bet.length)] = mem[128 len floor32(bet.length)]
    return Array(len=bet.length, data=mem[128 len floor32(bet.length)], mem[(32 * bet.length) + floor32(bet.length) + 192 len (32 * bet.length) - floor32(bet.length)]), 
}

function drawWinner() {
    require msg.sender == owner
    require bet.length >= sub_472b8a6a
    stor1 = block.number
    require bet.length
    require sha3(block.hash(stor1 - 1), stor2) % bet.length < bet.length
    if bool(stor7) != 1:
        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
        if bool(uint8(stor11.field_0)) == 1:
            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
            call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
               value sub_7a0733f6 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
                emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
            else:
                emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
    else:
        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
        call owner with:
           value sub_7a0733f6 * sub_da93fe95 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x754bbc6c: owner, sub_7a0733f6 * sub_da93fe95 / 100
        if bool(uint8(stor11.field_0)) == 1:
            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
            call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
               value sub_7a0733f6 * sub_eb952d4d / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
                emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
            else:
                emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
    stor2 = 0
    bet.length = 0
    idx = 0
    while bet.length > idx:
        bet[idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_7a0733f6 = 0
    emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % bet.length, bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, stor1, 0, stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0]
    return bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0
}

function placeBet() payable {
    if bool(uint8(stor11.field_16)) != 1:
        emit 0x7c57b52c: msg.sender, msg.value, block.number
        if bool(uint8(stor11.field_8)) == 1:
            if bet.length < sub_472b8a6a:
                emit 0xca1217f4: 0
            else:
                stor1 = block.number
                require bet.length
                require sha3(block.hash(stor1 - 1), stor2) % bet.length < bet.length
                if bool(stor7) != 1:
                    emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % bet.length, bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, stor1, sub_7a0733f6
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
                    if bool(uint8(stor11.field_0)) == 1:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                        call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
                           value sub_7a0733f6 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
                            emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                        else:
                            emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                            emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                else:
                    emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % bet.length, bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, stor1, sub_7a0733f6 * sub_eb952d4d / 100
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
                    call owner with:
                       value sub_7a0733f6 * sub_da93fe95 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x754bbc6c: owner, sub_7a0733f6 * sub_da93fe95 / 100
                    if bool(uint8(stor11.field_0)) == 1:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                        call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
                           value sub_7a0733f6 * sub_eb952d4d / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
                            emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                        else:
                            emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                            emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                stor2 = 0
                bet.length = 0
                idx = 0
                while bet.length > idx:
                    bet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_7a0733f6 = 0
                emit 0xea4b14a4: 1
    else:
        emit 0xe2df9c54: msg.sender, msg.value
        require msg.value >= sub_3a68588a
        stor2 = sha3(block.hash(stor1), stor2)
        emit betPlaced(msg.sender, msg.value, block.number);
        stor1 = block.number
        bet.length++
        bet[bet.length].field_0 = msg.sender
        emit 0x6fec4344: msg.sender, msg.value, block.number
        sub_7a0733f6 += msg.value
        if bool(uint8(stor11.field_8)) == 1:
            if bet.length < sub_472b8a6a:
                emit 0xca1217f4: 0
            else:
                stor1 = block.number
                require bet.length
                require sha3(block.hash(stor1 - 1), stor2) % bet.length < bet.length
                if bool(stor7) != 1:
                    emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % bet.length, bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, stor1, 0, sub_7a0733f6
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
                    if bool(uint8(stor11.field_0)) == 1:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                        call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
                           value sub_7a0733f6 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6
                            emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                        else:
                            emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                            emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6
                else:
                    emit 0x19725c15: sha3(block.hash(stor1 - 1), stor2) % bet.length, bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, stor1, 0, sub_7a0733f6 * sub_eb952d4d / 100
                    stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
                    call owner with:
                       value sub_7a0733f6 * sub_da93fe95 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x754bbc6c: owner, sub_7a0733f6 * sub_da93fe95 / 100
                    if bool(uint8(stor11.field_0)) == 1:
                        stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = 0
                        call bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0 with:
                           value sub_7a0733f6 * sub_eb952d4d / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            stor4[stor3[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % stor3.length].field_0] = sub_7a0733f6 * sub_eb952d4d / 100
                            emit 0xd2d225d6: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                        else:
                            emit 0xa1d76e34: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                            emit 0xbfe6cc37: bet[('map', ('blockhash', ('add', -1, ('stor', ('name', 'stor1', 1)))), ('stor', ('name', 'stor2', 2))) % bet.length].field_0, sub_7a0733f6 * sub_eb952d4d / 100
                stor2 = 0
                bet.length = 0
                idx = 0
                while bet.length > idx:
                    bet[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                sub_7a0733f6 = 0
                emit 0xea4b14a4: 1
    return 1
}



}
