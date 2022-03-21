contract main {


// =======================  Init code  ======================


uint256 stor7;

function _fallback() payable {
    stor7 = msg.sender or Mask(96, 160, stor7)
    return code.data[36 len 2598]
}



// =====================  Runtime code  =====================


const Game_balance_in_Ethers = eth.balance(this.address) / 10^18, Array(len=36, data='Game balance is shown in full Et', Mask(32, 224, 'hers') >> 224, mem[352])


uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint16 stor6;
uint256 stor6; offset 16
uint256 stor6;
address stor7;
uint8 stor8;
uint128 stor8; offset 3
uint128 stor8; offset 128
uint256 stor8;
array of struct stor9;
uint256 stor10;
uint8 stor11; offset 160
address stor11;
uint256 stor11;

function Set_your_game_number(uint16 arg1) payable {
    uint8(stor11.field_160) = 0
    uint16(stor6.field_0) = arg1
    Mask(240, 0, stor6.field_16) = 0
    uint256(stor11.field_0) = msg.sender or Mask(96, 160, uint256(stor11.field_0))
    if 8 * msg.value > eth.balance(this.address):
        mem[128] = 'Bet is larger than games's abili'
        mem[160] = 'ty to pay'
        stor9.length = 83
        s = code.data[2566 len 32]
        idx = 128
        while 169 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = code.data[2566 len 32] + 2
        while code.data[2566 len 32] + (stor9.length + 31 / 32) > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        uint256(stor8.field_0) = 0
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        if uint8(stor11.field_160) != 1:
            if 1 == uint8(stor11.field_160):
                if eth.balance(this.address) > 20 * 10^18:
                    call stor7 with:
                       value uint128(msg.value) / 2 wei
                         gas 0 wei
        else:
            if eth.balance(this.address) > 50 * 10^18:
                call stor7 with:
                   value uint128(msg.value) wei
                     gas 0 wei
            else:
                if 1 == uint8(stor11.field_160):
                    if eth.balance(this.address) > 20 * 10^18:
                        call stor7 with:
                           value uint128(msg.value) / 2 wei
                             gas 0 wei
    else:
        if 0 == msg.value:
            uint8(stor9.length) = 28
            Mask(248, 0, stor9.length.field_8) = 'Wager was zero' / 256
            idx = code.data[2566 len 32]
            while code.data[2566 len 32] + (stor9.length + 31 / 32) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            uint256(stor8.field_0) = 0
            if uint8(stor11.field_160) != 1:
                if 1 == uint8(stor11.field_160):
                    if eth.balance(this.address) > 20 * 10^18:
                        call stor7 with:
                           value uint128(msg.value) / 2 wei
                             gas 0 wei
            else:
                if eth.balance(this.address) > 50 * 10^18:
                    call stor7 with:
                       value uint128(msg.value) wei
                         gas 0 wei
                else:
                    if 1 == uint8(stor11.field_160):
                        if eth.balance(this.address) > 20 * 10^18:
                            call stor7 with:
                               value uint128(msg.value) / 2 wei
                                 gas 0 wei
        else:
            stor2 = block.timestamp
            stor3 = block.timestamp / 10
            stor4 = 10 * block.timestamp / 10
            stor5 = block.timestamp - (10 * block.timestamp / 10)
            stor10 = block.number
            if 9999 == uint256(stor6.field_0):
                if msg.sender == stor7:
                    selfdestruct(stor7)
            if uint256(stor6.field_0) > 9:
                uint8(stor9.length) = 56
                Mask(248, 0, stor9.length.field_8) = 'give a character between 0-9' / 256
                idx = code.data[2566 len 32]
                while code.data[2566 len 32] + (stor9.length + 31 / 32) > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                if uint8(stor11.field_160) != 1:
                    if 1 == uint8(stor11.field_160):
                        if eth.balance(this.address) > 20 * 10^18:
                            call stor7 with:
                               value uint128(msg.value) / 2 wei
                                 gas 0 wei
                else:
                    if eth.balance(this.address) > 50 * 10^18:
                        call stor7 with:
                           value uint128(msg.value) wei
                             gas 0 wei
                    else:
                        if 1 == uint8(stor11.field_160):
                            if eth.balance(this.address) > 20 * 10^18:
                                call stor7 with:
                                   value uint128(msg.value) / 2 wei
                                     gas 0 wei
            else:
                if uint256(stor6.field_0) != stor5:
                    uint256(stor8.field_0) = -uint128(msg.value)
                    uint8(stor9.length) = 8
                    Mask(248, 0, stor9.length.field_8) = 'Loss' / 256
                    idx = code.data[2566 len 32]
                    while code.data[2566 len 32] + (stor9.length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    uint8(stor11.field_160) = 1
                else:
                    stor8.field_0 % 8 = 0
                    Mask(125, 0, stor8.field_3) = Mask(125, 0, msg.value)
                    uint128(stor8.field_128) = 0
                    uint8(stor9.length) = 8
                    Mask(248, 0, stor9.length.field_8) = 'Win!' / 256
                    idx = code.data[2566 len 32]
                    while code.data[2566 len 32] + (stor9.length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    call msg.sender with:
                       value 8 * Mask(125, 0, msg.value) wei
                         gas 0 wei
                if uint8(stor11.field_160) != 1:
                    if 1 == uint8(stor11.field_160):
                        if eth.balance(this.address) > 20 * 10^18:
                            call stor7 with:
                               value uint128(msg.value) / 2 wei
                                 gas 0 wei
                else:
                    if eth.balance(this.address) > 50 * 10^18:
                        call stor7 with:
                           value uint128(msg.value) wei
                             gas 0 wei
                    else:
                        if 1 == uint8(stor11.field_160):
                            if eth.balance(this.address) > 20 * 10^18:
                                call stor7 with:
                                   value uint128(msg.value) / 2 wei
                                     gas 0 wei
}

function _fallback() payable {
  stop
}

function Last_block_number_and_bloctime_used() payable {
    mem[384] = 0, mem[414 len 2]
    return stor10, stor2, Array(len=62, data='blocktime is the unix timestamp ', 'of the block where the bet was', mem[384])
}

function Results_of_the_last_round() payable {
    mem[192] = uint256(stor9.field_0)
    idx = 192
    s = 0
    while stor9.length + 160 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor9.length + ceil32(stor9.length) + 704] = 0, mem[stor9.length + ceil32(stor9.length) + 729 len 7]
    return Array(len=stor9.length, data=mem[192 len stor9.length], 121, 'The right lottery number is the ', 'last character of the blocktime ', 'of the block in which the bet wa', 's. One Eth is 10**18 Wei.' >> 512, mem[ceil32(stor9.length) + stor9.length + 704]), 
           uint256(stor6.field_0),
           address(stor11.field_0),
           stor5,
           uint256(stor8.field_0),
           stor9.length + 224
}



}
