contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3272]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint8 sub_5d45ac2b;
array of address stor2;
array of struct sub_5205f112;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;

function sub_5205f112(?) payable {
    require arg1 < sub_5205f112.length
    mem[288] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_5205f112', 3) + 1)].field_0)
    idx = 288
    s = 0
    while stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_5205f112', 3) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + 288] = stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 2].length
    mem[stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + 320] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_5205f112', 3) + 2)].field_0)
    idx = stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + 320
    s = 0
    while stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 2].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_5205f112', 3) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_5205f112[arg1].field_0), 
           Array(len=stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length, data=mem[288 len stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 2].length + 32 % 32) + 32]),
           stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_5205f112', 3) + 1].length + 32 % 32) + 192,
           uint256(sub_5205f112[arg1].field_1024),
           uint8(sub_5205f112[arg1].field_1280)
}

function sub_5d45ac2b(?) payable {
    return uint8(sub_5d45ac2b[arg1])
}

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_41ff9d11(?) payable {
    require arg1 < sub_5205f112.length
    require msg.sender == address(sub_5205f112[arg1].field_0)
    storC257[arg1] = arg2
    storC257[arg1] = 1
    emit 0xfb687044: arg1, arg2
}

function drivers(uint256 arg1) payable {
    require arg1 < stor2.length
    mem[192] = uint256(stor[sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 192
    s = 0
    while stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1]), 
           Array(len=stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[192 len stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(2 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)])
}

function sub_41b8fdd9(?) payable {
    require msg.sender == address(owner)
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 2 * stor2.length + 1
        while sha3(2) + (2 * stor2.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor2.length < stor2.length
    uint256(stor2[stor2.length]) = arg1 or Mask(96, 160, uint256(stor2[stor2.length]))
    uint256(stor[sha3((2 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][]) = Array(len=arg2.length, data=arg2[all])
    uint8(sub_5d45ac2b[address(arg1)]) = 1
    emit 0x441eaec9: stor2.length, address(arg1), Array(len=arg2.length, data=arg2[all])
}

function sub_ac1563f8(?) payable {
    require uint8(sub_5d45ac2b[address(msg.sender)]) != 0
    require arg1 < sub_5205f112.length
    require storC257[arg1] != 1
    storC257[arg1]++
    if not storC257[arg1] <= storC257[arg1] + 1:
        idx = (3 * storC257[arg1]) + 3
        while 3 * storC257[arg1] > idx:
            address(stor[idx + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = 0
            uint256(stor[idx + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 1]) = 0
            uint256(stor[idx + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 2]) = 0
            idx = idx + 1
            continue 
    require storC257[arg1] < storC257[arg1]
    uint256(stor[(3 * storC257[arg1]) + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]) = msg.sender or Mask(96, 160, uint256(stor[(3 * storC257[arg1]) + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2)]))
    uint256(stor[(3 * storC257[arg1]) + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 1]) = arg2
    uint256(stor[(3 * storC257[arg1]) + sha3((6 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a2) + 2]) = arg3
    emit 0xcc774c99: arg1, storC257[arg1], arg2, arg3
}

function sub_9c1b9ee8(?) payable {
    sub_5205f112.length++
    if not sub_5205f112.length <= sub_5205f112.length + 1:
        mem[0] = 3
        idx = (6 * sub_5205f112.length) + 6
        while sha3(3) + (6 * sub_5205f112.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(s + sha3(mem[0]) + 3)
                    while sha3(s + sha3(mem[0]) + 3) + (3 * uint256(stor[s + sha3(mem[0]) + 3])) > s + sha3(mem[0]):
                        address(stor[s + sha3(mem[0])]) = 0
                        uint256(stor[s + sha3(mem[0]) + 1]) = 0
                        uint256(stor[s + sha3(mem[0]) + 2]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 4]) = 0
                    uint8(stor[s + sha3(mem[0]) + 5]) = 0
                    s = s + 1
                    continue 
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            mem[0] = idx + sha3(mem[0]) + 3
            s = sha3(idx + sha3(mem[0]) + 3)
            while sha3(idx + sha3(mem[0]) + 3) + (3 * uint256(stor[idx + sha3(mem[0]) + 3])) > s:
                address(stor[s]) = 0
                uint256(sub_5d45ac2b[s]) = 0
                uint256(stor2[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint8(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 1
            continue 
    require sub_5205f112.length < sub_5205f112.length
    uint256(stor[sha3((6 * sub_5205f112.length) + ('name', 'sub_5205f112', 3) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * sub_5205f112.length) + ('name', 'sub_5205f112', 3) + 2)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(sub_5205f112[sub_5205f112.length].field_0) = msg.sender or Mask(96, 160, uint256(sub_5205f112[sub_5205f112.length].field_0))
    uint8(sub_5205f112[sub_5205f112.length].field_1280) = 0
    emit 0x72ed8e81: sub_5205f112.length, msg.sender, Array(len=arg1.length, data=arg1[all]), arg1.length + 160
    return sub_5205f112.length
}



}
