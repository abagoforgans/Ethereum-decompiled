contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 10^16
    stor2 = 3
    stor3 = 2
    stor4 = 1
    stor5 = 100
    stor7 = address(stor0)
    bool(stor8.length) = 0
    stor8.length.field_1 = 0
    stor8.length.field_8 = mem[256 len 31]
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 0
    stor10 = block.timestamp
    return code.data[477 len 2631]
}



// =====================  Runtime code  =====================


address sub_8b626187Address;
uint256 sub_45d37718;
uint256 sub_053c0a6f;
uint256 sub_41ed06e0;
uint256 sub_4c3cc007;
uint256 sub_aacc5bc4;
uint256 sub_f96220de;
address stor7;
uint256 stor7;
array of struct stor8;
uint256 stor9;
uint256 stor10;
array of struct sub_7842c52d;

function sub_053c0a6f(?) payable {
    return sub_053c0a6f
}

function sub_41ed06e0(?) payable {
    return sub_41ed06e0
}

function sub_45d37718(?) payable {
    return sub_45d37718
}

function sub_4c3cc007(?) payable {
    return sub_4c3cc007
}

function sub_7842c52d(?) payable {
    require arg1 < sub_7842c52d.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'sub_7842c52d', 11) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'sub_7842c52d', 11) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'sub_7842c52d', 11) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_7842c52d[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'sub_7842c52d', 11) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'sub_7842c52d', 11) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'sub_7842c52d', 11) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'sub_7842c52d', 11) + 1].length + 32 % 32)]),
           uint256(sub_7842c52d[arg1].field_512),
           uint256(sub_7842c52d[arg1].field_768)
}

function sub_8b626187(?) payable {
    return sub_8b626187Address
}

function sub_aacc5bc4(?) payable {
    return sub_aacc5bc4
}

function sub_f96220de(?) payable {
    return sub_f96220de
}

function sub_e40d0ac3(?) payable {
    mem[256] = uint256(stor8.field_0)
    idx = 256
    s = 0
    while stor8.length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor8[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor7), 
           Array(len=stor8.length, data=mem[256 len stor8.length + (floor32(stor8.length - 1) + -stor8.length + 32 % 32)]),
           stor9,
           stor10
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
                   value msg.value * sub_4c3cc007 / sub_aacc5bc4 wei
                     gas 0 wei
                call address(stor7) with:
                   value msg.value - (msg.value * sub_4c3cc007 / sub_aacc5bc4) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 11
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(11) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor7)
                if 31 >= stor8.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor8.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = uint256(stor8[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor8.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor9
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor10
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                uint256(stor8[].field_0) = Array(len=arg1.length, data=arg1[all])
                stor9 = msg.value
            else:
                call msg.sender with:
                   value msg.value - sub_f96220de wei
                     gas 0 wei
                call sub_8b626187Address with:
                   value sub_f96220de * sub_4c3cc007 / sub_aacc5bc4 wei
                     gas 0 wei
                call address(stor7) with:
                   value sub_f96220de - (sub_f96220de * sub_4c3cc007 / sub_aacc5bc4) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 11
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(11) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor7)
                if 31 >= stor8.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor8.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = uint256(stor8[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor8.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor9
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor10
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                uint256(stor8[].field_0) = Array(len=arg1.length, data=arg1[all])
                stor9 = sub_f96220de
            stor10 = block.timestamp
            sub_f96220de = sub_f96220de * sub_053c0a6f / sub_41ed06e0
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
                   value msg.value * sub_4c3cc007 / sub_aacc5bc4 wei
                     gas 0 wei
                call address(stor7) with:
                   value msg.value - (msg.value * sub_4c3cc007 / sub_aacc5bc4) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 11
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(11) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor7)
                if 31 >= stor8.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor8.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = uint256(stor8[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor8.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor9
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor10
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                uint256(stor8[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
                stor9 = msg.value
            else:
                call msg.sender with:
                   value msg.value - sub_f96220de wei
                     gas 0 wei
                call sub_8b626187Address with:
                   value sub_f96220de * sub_4c3cc007 / sub_aacc5bc4 wei
                     gas 0 wei
                call address(stor7) with:
                   value sub_f96220de - (sub_f96220de * sub_4c3cc007 / sub_aacc5bc4) wei
                     gas 0 wei
                sub_7842c52d.length++
                if not sub_7842c52d.length <= sub_7842c52d.length + 1:
                    mem[0] = 11
                    idx = 4 * sub_7842c52d.length + 1
                    while sha3(11) + (4 * sub_7842c52d.length) > idx + sha3(mem[0]):
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
                address(sub_7842c52d[sub_7842c52d.length].field_0) = address(stor7)
                if 31 >= stor8.length:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = stor8.length
                    idx = 0
                    while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                        uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    uint256(sub_7842c52d[sub_7842c52d.length].field_256) = Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length) + 1
                    if not Mask(255, 1, (256 * not bool(stor8.length)) - 1 and stor8.length):
                        idx = 0
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                    else:
                        s = 0
                        idx = 0
                        while stor8.length + 31 / 32 > idx:
                            uint256(stor[s + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = uint256(stor8[idx].field_0)
                            s = s + 1
                            idx = idx + 1
                            continue 
                        idx = stor8.length + 31 / 32
                        while stor[(4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1].length + 31 / 32 > idx:
                            uint256(stor[idx + sha3((4 * sub_7842c52d.length) + ('name', 'sub_7842c52d', 11) + 1)].field_0) = 0
                            idx = idx + 1
                            continue 
                uint256(sub_7842c52d[sub_7842c52d.length].field_512) = stor9
                uint256(sub_7842c52d[sub_7842c52d.length].field_768) = stor10
                uint256(stor7) = msg.sender or Mask(96, 160, uint256(stor7))
                uint256(stor8[].field_0) = Array(len=calldata.size, data=call.data[0 len calldata.size])
                stor9 = sub_f96220de
            stor10 = block.timestamp
            sub_f96220de = sub_f96220de * sub_053c0a6f / sub_41ed06e0
}



}
