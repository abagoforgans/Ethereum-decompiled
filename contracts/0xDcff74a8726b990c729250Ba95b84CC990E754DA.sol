contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;
bool stor7; offset 256
uint8 stor7;
uint256 stor8;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 10^16
    stor2 = address(stor0)
    stor3 = address(stor0)
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = '[Vacant]' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = block.timestamp
    uint8(stor7.field_0) = 0
    stor7.field_256 % 1 = 0
    stor8 = 0
    return code.data[617 len 4909]
}



// =====================  Runtime code  =====================


#
#  - sub_1d935a6b(?)
#
address stor0;
uint256 stor0;
uint256 currentClaimPrice;
address stor2;
uint256 stor2;
address stor3;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
bool stor7; offset 256
uint8 stor7;
uint256 stor8;
array of struct sub_7842c52d;
uint256 stor10;

function currentClaimPrice() payable {
    return currentClaimPrice
}

function sub_7842c52d(?) payable {
    require arg1 < sub_7842c52d.length
    mem[352] = uint256(stor[sha3((7 * arg1) + ('name', 'sub_7842c52d', 9) + 2)].field_0)
    idx = 352
    s = 0
    while stor[(7 * arg1) + ('name', 'sub_7842c52d', 9) + 2].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'sub_7842c52d', 9) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_7842c52d[arg1].field_0), 
           address(sub_7842c52d[arg1].field_256),
           Array(len=stor[(7 * arg1) + ('name', 'sub_7842c52d', 9) + 2].length, data=mem[352 len stor[(7 * arg1) + ('name', 'sub_7842c52d', 9) + 2].length + (floor32(stor[(7 * arg1) + ('name', 'sub_7842c52d', 9) + 2].length - 1) + -stor[(7 * arg1) + ('name', 'sub_7842c52d', 9) + 2].length + 32 % 32)]),
           uint256(sub_7842c52d[arg1].field_768),
           uint256(sub_7842c52d[arg1].field_1024),
           uint8(sub_7842c52d[arg1].field_1280),
           uint256(sub_7842c52d[arg1].field_1536)
}

function numberOfMonarchs() payable {
    return sub_7842c52d.length
}

function transferOwnership(address arg1) payable {
    if msg.sender == address(stor0):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sweepCommission(uint256 arg1) payable {
    if msg.sender == address(stor0):
        require arg1 + stor10 <= eth.balance(this.address)
        call address(stor0) with:
           value arg1 wei
             gas 0 wei
}

function sub_e40d0ac3(?) payable {
    mem[352] = uint256(stor4.field_0)
    idx = 352
    s = 0
    while stor4.length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2), 
           address(stor3),
           Array(len=stor4.length, data=mem[352 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]),
           stor5,
           stor6,
           uint8(stor7.field_0),
           stor8
}

function sub_e32ee3c5(?) payable {
    require arg1 < sub_7842c52d.length
    require uint8(sub_7842c52d[arg1].field_1280) == 2
    require arg1 < sub_7842c52d.length
    if address(stor0) != msg.sender:
        if address(sub_7842c52d[arg1].field_0) != msg.sender:
            require arg1 < sub_7842c52d.length
            require tx.origin == address(sub_7842c52d[arg1].field_256)
    require arg1 < sub_7842c52d.length
    if arg2:
        call address(sub_7842c52d[arg1].field_256) with:
           value uint256(sub_7842c52d[arg1].field_1536) wei
             gas 0 wei
    else:
        require gas_remaining >= 25000
        call address(sub_7842c52d[arg1].field_0) with:
           value uint256(sub_7842c52d[arg1].field_1536) wei
             gas gas_remaining - 25000 wei
    require ext_call.success
    require arg1 < sub_7842c52d.length
    uint8(sub_7842c52d[arg1].field_1280) = 1
    stor10 -= uint256(sub_7842c52d[arg1].field_1536)
}

function claimThrone(string arg1) payable {
    require msg.value >= currentClaimPrice
    require msg.value <= currentClaimPrice
    if address(stor2) == address(stor0):
        uint8(stor7.field_0) = 0
        stor8 = 0
        sub_7842c52d.length++
        if not sub_7842c52d.length <= sub_7842c52d.length + 1:
            mem[0] = 9
            idx = (7 * sub_7842c52d.length) + 7
            while sha3(9) + (7 * sub_7842c52d.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint8(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                idx = idx + 1
                continue 
        address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
        address(sub_7842c52d[sub_7842c52d.length].field_256) = address(stor3)
        if 31 >= stor4.length:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4.length
            idx = 0
            while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
        else:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = uint256(stor4[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
    else:
        call address(stor2) with:
           value msg.value - (msg.value / 100) wei
             gas 10000 wei
        if ext_call.success:
            uint8(stor7.field_0) = 1
        else:
            uint8(stor7.field_0) = 2
            stor10 = stor10 + msg.value - (msg.value / 100)
        stor8 = msg.value - (msg.value / 100)
        sub_7842c52d.length++
        if not sub_7842c52d.length <= sub_7842c52d.length + 1:
            mem[0] = 9
            idx = (7 * sub_7842c52d.length) + 7
            while sha3(9) + (7 * sub_7842c52d.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint8(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                idx = idx + 1
                continue 
        address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
        address(sub_7842c52d[sub_7842c52d.length].field_256) = address(stor3)
        if 31 >= stor4.length:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4.length
            idx = 0
            while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
        else:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = uint256(stor4[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
    mem[ceil32(arg1.length) + 480] = uint256(stor4.field_0)
    idx = ceil32(arg1.length) + 480
    s = 0
    while ceil32(arg1.length) + stor4.length + 480 > idx + 32:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit ThroneClaimed(address(stor3), Array(len=stor4.length, data=mem[ceil32(arg1.length) + 480 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]), currentClaimPrice);
}

function _fallback() payable {
    require msg.value >= currentClaimPrice
    require msg.value <= currentClaimPrice
    if address(stor2) == address(stor0):
        uint8(stor7.field_0) = 0
        stor8 = 0
        sub_7842c52d.length++
        if not sub_7842c52d.length <= sub_7842c52d.length + 1:
            mem[0] = 9
            idx = (7 * sub_7842c52d.length) + 7
            while sha3(9) + (7 * sub_7842c52d.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint8(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                idx = idx + 1
                continue 
        address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
        address(sub_7842c52d[sub_7842c52d.length].field_256) = address(stor3)
        if 31 >= stor4.length:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4.length
            idx = 0
            while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
        else:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = uint256(stor4[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
    else:
        call address(stor2) with:
           value msg.value - (msg.value / 100) wei
             gas 10000 wei
        if ext_call.success:
            uint8(stor7.field_0) = 1
        else:
            uint8(stor7.field_0) = 2
            stor10 = stor10 + msg.value - (msg.value / 100)
        stor8 = msg.value - (msg.value / 100)
        sub_7842c52d.length++
        if not sub_7842c52d.length <= sub_7842c52d.length + 1:
            mem[0] = 9
            idx = (7 * sub_7842c52d.length) + 7
            while sha3(9) + (7 * sub_7842c52d.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint8(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                idx = idx + 1
                continue 
        address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
        address(sub_7842c52d[sub_7842c52d.length].field_256) = address(stor3)
        if 31 >= stor4.length:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4.length
            idx = 0
            while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
        else:
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
            if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                idx = 0
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = uint256(stor4[idx].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor4.length + 31 / 32
                while stor[(7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 9) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_1024) = stor6
            uint8(sub_7842c52d[sub_7842c52d.length].field_1280) = uint8(stor7.field_0)
            uint256(sub_7842c52d[sub_7842c52d.length].field_1536) = stor8
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            uint256(stor3) = tx.origin or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = msg.value
            stor6 = block.timestamp
            uint8(stor7.field_0) = 0
            stor7.field_256 % 1 = 0
            stor8 = 0
            if 11 * currentClaimPrice / 10 < 10^16:
                currentClaimPrice = 11 * currentClaimPrice / 10
            else:
                if 11 * currentClaimPrice / 10 < 10^17:
                    currentClaimPrice = 10^14 * 11 * currentClaimPrice / 10 / 10^14
                else:
                    if 11 * currentClaimPrice / 10 < 10^18:
                        currentClaimPrice = 10^15 * 11 * currentClaimPrice / 10 / 10^15
                    else:
                        if 11 * currentClaimPrice / 10 < 10 * 10^18:
                            currentClaimPrice = 10^16 * 11 * currentClaimPrice / 10 / 10^16
                        else:
                            if 11 * currentClaimPrice / 10 < 100 * 10^18:
                                currentClaimPrice = 10^17 * 11 * currentClaimPrice / 10 / 10^17
                            else:
                                if 11 * currentClaimPrice / 10 < 1000 * 10^18:
                                    currentClaimPrice = 10^18 * 11 * currentClaimPrice / 10 / 10^18
                                else:
                                    if 11 * currentClaimPrice / 10 >= 10000 * 10^18:
                                        currentClaimPrice = 11 * currentClaimPrice / 10
                                    else:
                                        currentClaimPrice = 10 * 10^18 * 11 * currentClaimPrice / 10 / 10 * 10^18
    mem[ceil32(calldata.size) + 480] = uint256(stor4.field_0)
    idx = ceil32(calldata.size) + 480
    s = 0
    while ceil32(calldata.size) + stor4.length + 480 > idx + 32:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit ThroneClaimed(address(stor3), Array(len=stor4.length, data=mem[ceil32(calldata.size) + 480 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]), currentClaimPrice);
}



}
