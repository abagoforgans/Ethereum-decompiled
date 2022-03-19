contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of address stor3;
uint256 stor4;
uint128 stor8; offset 160
address stor8;
uint256 stor8;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15; offset 8
uint128 stor16; offset 160
uint256 stor16;

function _fallback() payable {
    stor13 = code.data[10833 len 32]
    stor14 = code.data[10801 len 32]
    stor15 = Mask(248, 0, code.data[10865 len 32])
    create contract with 0 wei
                    code: code.data[650 len 335], this.address
    uint256(stor16.field_0) = Mask(96, 0, stor16.field_160)
    stor4 = code.data[10737 len 32] or Mask(96, 160, stor4)
    stor12 = code.data[10769 len 32] or Mask(96, 160, stor12)
    stor11 = 20 * 10^18
    create contract with 0 wei
                    code: code.data[985 len 335], address(this.address)
    uint256(stor8.field_0) = Mask(96, 0, stor8.field_160)
    stor2.length = block.timestamp
    stor1.length = 5
    stor0++
    if not stor0 <= stor0 + 1:
        mem[0] = 0
        idx = (14 * stor0) + 14
        while sha3(0) + (14 * stor0) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint16(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                uint256(stor[idx + sha3(mem[0]) + 8]) = 0
                mem[0] = idx + sha3(mem[0]) + 8
                s = sha3(s + sha3(mem[0]) + 8)
                while sha3(s + sha3(mem[0]) + 8) + (4 * uint256(stor[s + sha3(mem[0]) + 8])) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    uint256(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    address(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                uint256(stor[s + sha3(mem[0]) + 10]) = 0
                address(stor[s + sha3(mem[0]) + 13]) = 0
                s = s + 1
                continue 
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint8(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(idx + sha3(mem[0]) + 8)
            while sha3(idx + sha3(mem[0]) + 8) + (4 * uint256(stor[idx + sha3(mem[0]) + 8])) > s:
                uint256(stor[s]) = 0
                stor1[s] = 0
                stor2[s] = 0
                stor3[s] = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            uint256(stor[idx + sha3(mem[0]) + 10]) = 0
            address(stor[idx + sha3(mem[0]) + 13]) = 0
            idx = idx + 1
            continue 
    require address(stor8.field_0) != 0
    return code.data[1320 len 9417]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[335 len 32]
    return code.data[55 len 280]
}



}
