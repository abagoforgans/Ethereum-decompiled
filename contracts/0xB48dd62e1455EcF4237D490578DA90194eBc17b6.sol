contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
address stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 10^16
    stor2 = address(stor0)
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[256 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = block.timestamp
    return code.data[433 len 2407]
}



// =====================  Runtime code  =====================


address sub_8b626187Address;
bool stor1; offset 255
uint256 stor1;
uint256 sub_f96220de;
address stor2;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint256 stor5;
array of struct sub_7842c52d;

function sub_7842c52d(?) payable {
    require arg1 < sub_7842c52d.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'sub_7842c52d', 6) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'sub_7842c52d', 6) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'sub_7842c52d', 6) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_7842c52d[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'sub_7842c52d', 6) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'sub_7842c52d', 6) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'sub_7842c52d', 6) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'sub_7842c52d', 6) + 1].length + 32 % 32)]),
           uint256(sub_7842c52d[arg1].field_512),
           uint256(sub_7842c52d[arg1].field_768)
}

function sub_8b626187(?) payable {
    return sub_8b626187Address
}

function sub_95b91532(?) payable {
    return sub_7842c52d.length
}

function sub_f96220de(?) payable {
    return sub_f96220de
}

function sub_e40d0ac3(?) payable {
    mem[256] = uint256(stor3.field_0)
    idx = 256
    s = 0
    while stor3.length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor3[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2), 
           Array(len=stor3.length, data=mem[256 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]),
           stor4,
           stor5
}

function claim(bytes arg1) payable {
    if arg1.length > 16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value < sub_f96220de:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value <= sub_f96220de:
                call sub_8b626187Address with:
                   value msg.value / 100 wei
                     gas 0 wei
                call address(stor2) with:
                   value msg.value - (msg.value / 100) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 6
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(6) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
                if 31 >= stor3.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor3.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = uint256(stor3[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor3.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                uint256(stor3[].field_0) = Array(len=arg1.length, data=arg1[all])
                stor4 = msg.value
            else:
                call msg.sender with:
                   value msg.value - sub_f96220de wei
                     gas 0 wei
                call sub_8b626187Address with:
                   value sub_f96220de / 100 wei
                     gas 0 wei
                call address(stor2) with:
                   value sub_f96220de - (sub_f96220de / 100) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 6
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(6) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
                if 31 >= stor3.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor3.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = uint256(stor3[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor3.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                uint256(stor3[].field_0) = Array(len=arg1.length, data=arg1[all])
                stor4 = sub_f96220de
            stor5 = block.timestamp
            uint255(stor1.field_0) = 3 * sub_f96220de / 2
            bool(stor1.field_255) = 0
}

function _fallback() payable {
    if calldata.size > 16:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value < sub_f96220de:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        else:
            if msg.value <= sub_f96220de:
                call sub_8b626187Address with:
                   value msg.value / 100 wei
                     gas 0 wei
                call address(stor2) with:
                   value msg.value - (msg.value / 100) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 6
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(6) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
                if 31 >= stor3.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor3.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = uint256(stor3[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor3.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                uint256(stor3[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
                stor4 = msg.value
            else:
                call msg.sender with:
                   value msg.value - sub_f96220de wei
                     gas 0 wei
                call sub_8b626187Address with:
                   value sub_f96220de / 100 wei
                     gas 0 wei
                call address(stor2) with:
                   value sub_f96220de - (sub_f96220de / 100) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 6
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(6) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor2)
                if 31 >= stor3.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor3.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = uint256(stor3[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor3.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 6) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor4
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor5
                uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                uint256(stor3[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
                stor4 = sub_f96220de
            stor5 = block.timestamp
            uint255(stor1.field_0) = 3 * sub_f96220de / 2
            bool(stor1.field_255) = 0
}



}
