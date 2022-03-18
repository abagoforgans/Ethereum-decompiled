contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor2 = 10^16
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
    return code.data[479 len 2833]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
bool stor2; offset 255
uint256 stor2;
uint256 currentClaimPrice;
address stor3;
uint256 stor3;
array of struct stor4;
uint256 stor5;
uint256 stor6;
array of struct sub_7842c52d;

function currentClaimPrice() payable {
    return currentClaimPrice
}

function sub_7842c52d(?) payable {
    require arg1 < sub_7842c52d.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'sub_7842c52d', 7) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'sub_7842c52d', 7) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'sub_7842c52d', 7) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_7842c52d[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'sub_7842c52d', 7) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'sub_7842c52d', 7) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'sub_7842c52d', 7) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'sub_7842c52d', 7) + 1].length + 32 % 32)]),
           uint256(sub_7842c52d[arg1].field_512),
           uint256(sub_7842c52d[arg1].field_768)
}

function numberOfMonarchs() payable {
    return sub_7842c52d.length
}

function sweepCommission() payable {
    if msg.sender == stor0:
        if stor1:
            call stor0 with:
               value stor1 wei
                 gas 0 wei
            stor1 = 0
}

function sub_e40d0ac3(?) payable {
    mem[256] = uint256(stor4.field_0)
    idx = 256
    s = 0
    while stor4.length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor4[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor3), 
           Array(len=stor4.length, data=mem[256 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]),
           stor5,
           stor6
}

function claimThrone(string arg1) payable {
    if msg.value < currentClaimPrice:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= currentClaimPrice:
            stor1 += msg.value / 100
            if address(stor3) == stor0:
                stor1 = stor1 + msg.value - (msg.value / 100)
            else:
                call address(stor3) with:
                   value msg.value - (msg.value / 100) wei
                     gas 0 wei
            sub_7842c52d.length++
            if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                mem[0] = 7
                idx = 4 * sub_7842c52d.length + 1
                while sha3(7) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    idx = idx + 1
                    continue 
            address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor3)
            if 31 >= stor4.length:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor4.length
                idx = 0
                while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
                if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = uint256(stor4[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor4.length + 31 / 32
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor6
            uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = msg.value
        else:
            call msg.sender with:
               value msg.value - currentClaimPrice wei
                 gas 0 wei
            stor1 += currentClaimPrice / 100
            if address(stor3) == stor0:
                stor1 = stor1 + currentClaimPrice - (currentClaimPrice / 100)
            else:
                call address(stor3) with:
                   value currentClaimPrice - (currentClaimPrice / 100) wei
                     gas 0 wei
            sub_7842c52d.length++
            if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                mem[0] = 7
                idx = 4 * sub_7842c52d.length + 1
                while sha3(7) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    idx = idx + 1
                    continue 
            address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor3)
            if 31 >= stor4.length:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor4.length
                idx = 0
                while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
                if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = uint256(stor4[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor4.length + 31 / 32
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor6
            uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=arg1.length, data=arg1[all])
            stor5 = currentClaimPrice
        stor6 = block.timestamp
        uint255(stor2.field_0) = 3 * currentClaimPrice / 2
        bool(stor2.field_255) = 0
        mem[ceil32(arg1.length) + 384] = uint256(stor4.field_0)
        idx = ceil32(arg1.length) + 384
        s = 0
        while ceil32(arg1.length) + stor4.length + 384 > idx + 32:
            mem[idx + 32] = uint256(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit ThroneClaimed(address(stor3), Array(len=stor4.length, data=mem[ceil32(arg1.length) + 384 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]), currentClaimPrice);
}

function _fallback() payable {
    if msg.value < currentClaimPrice:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= currentClaimPrice:
            stor1 += msg.value / 100
            if address(stor3) == stor0:
                stor1 = stor1 + msg.value - (msg.value / 100)
            else:
                call address(stor3) with:
                   value msg.value - (msg.value / 100) wei
                     gas 0 wei
            sub_7842c52d.length++
            if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                mem[0] = 7
                idx = 4 * sub_7842c52d.length + 1
                while sha3(7) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    idx = idx + 1
                    continue 
            address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor3)
            if 31 >= stor4.length:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor4.length
                idx = 0
                while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
                if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = uint256(stor4[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor4.length + 31 / 32
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor6
            uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = msg.value
        else:
            call msg.sender with:
               value msg.value - currentClaimPrice wei
                 gas 0 wei
            stor1 += currentClaimPrice / 100
            if address(stor3) == stor0:
                stor1 = stor1 + currentClaimPrice - (currentClaimPrice / 100)
            else:
                call address(stor3) with:
                   value currentClaimPrice - (currentClaimPrice / 100) wei
                     gas 0 wei
            sub_7842c52d.length++
            if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                mem[0] = 7
                idx = 4 * sub_7842c52d.length + 1
                while sha3(7) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    idx = idx + 1
                    continue 
            address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor3)
            if 31 >= stor4.length:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor4.length
                idx = 0
                while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length) + 1
                if not Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length):
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = uint256(stor4[idx].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor4.length + 31 / 32
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 7) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor5
            uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor6
            uint256(stor3) = msg.sender or Mask(96, 160, uint256(stor3))
            uint256(stor4[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
            stor5 = currentClaimPrice
        stor6 = block.timestamp
        uint255(stor2.field_0) = 3 * currentClaimPrice / 2
        bool(stor2.field_255) = 0
        mem[ceil32(calldata.size) + 384] = uint256(stor4.field_0)
        idx = ceil32(calldata.size) + 384
        s = 0
        while ceil32(calldata.size) + stor4.length + 384 > idx + 32:
            mem[idx + 32] = uint256(stor4[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        emit ThroneClaimed(address(stor3), Array(len=stor4.length, data=mem[ceil32(calldata.size) + 384 len stor4.length + (floor32(stor4.length - 1) + -stor4.length + 32 % 32)]), currentClaimPrice);
}



}
