contract main {


// =======================  Init code  ======================


uint256 stor0;
array of struct stor5;
bool stor36B6; offset 256
uint8 stor36B6; offset 160
address stor36B6;
uint256 stor36B6;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = 2 * stor5.length + 1
        while 2 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            idx = idx + 2
            continue 
    require 0 < stor5.length
    address(stor36B6.field_0) = 0
    stor36B6.field_256 % 1 = 0
    uint8(stor36B6.field_160) = 1
    stor36B6 = block.timestamp
    if code.data[5892 len 20] != 0:
        stor0 = code.data[5880 len 32] or Mask(96, 160, stor0)
    return code.data[352 len 5528]
}



// =====================  Runtime code  =====================


#
#  - sub_0ba460ff(?)
#  - sub_18eae158(?)
#
address owner;
uint256 stor0;
array of struct sub_30658bef;
uint256 sub_a92a83ef;
mapping of uint256 adminId;
array of struct stor5;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;
array of struct stor38904946689225133062030360029229464415395357281359004841078294910011182463805;
array of uint256 stor38904946689225133062030360029229464415395357281359004841078294910011182463806;

function sub_30658bef(?) payable {
    require arg1 < sub_30658bef.length
    mem[320] = uint256(sub_30658bef[arg1].field_0)
    idx = 320
    s = 0
    while sub_30658bef[arg1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(sub_30658bef[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + 320] = stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length
    mem[sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + 352] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_30658bef', 2) + 1)].field_0)
    idx = sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + 352
    s = 0
    while sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_30658bef', 2) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + 384] = uint256(stor[sha3((6 * arg1) + ('name', 'sub_30658bef', 2) + 2)].field_0)
    idx = sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + 384
    s = 0
    while sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 2].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'sub_30658bef', 2) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_30658bef[arg1].length, data=mem[320 len sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + 32], stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 2].length, mem[sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + 384 len stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 2].length + 32 % 32)]), 
           sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + 224,
           sub_30658bef[arg1].length + (floor32(sub_30658bef[arg1].length - 1) + -sub_30658bef[arg1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'sub_30658bef', 2) + 1].length + 32 % 32) + 256,
           uint256(sub_30658bef[arg1].field_768),
           address(sub_30658bef[arg1].field_1024),
           uint256(sub_30658bef[arg1].field_1280)
}

function owner() payable {
    return address(owner)
}

function sub_a92a83ef(?) payable {
    return sub_a92a83ef
}

function adminId(address arg1) payable {
    return adminId[arg1]
}

function kill() payable {
    if address(owner) != msg.sender:
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function admins(uint256 arg1) payable {
    require arg1 < stor5.length
    return address(stor5603[arg1].field_0), bool(uint8(stor5603[arg1].field_160)), stor36B6[arg1]
}

function addadmin(address arg1) payable {
    require address(owner) == msg.sender
    if adminId[address(arg1)]:
        require adminId[address(arg1)] < stor5.length
        uint8(stor5603[stor4[address(arg1)]].field_160) = 1
    else:
        adminId[address(arg1)] = stor5.length
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = 2 * stor5.length + 1
            while 2 * stor5.length > idx:
                Mask(168, 0, stor5[idx].field_0) = 0
                uint256(stor5[idx].field_256) = 0
                idx = idx + 2
                continue 
        require stor5.length < stor5.length
        address(stor5603[stor5.length].field_0) = arg1
        uint8(stor5603[stor5.length].field_160) = 1
        Mask(88, 0, stor5603[stor5.length].field_168) = Mask(88, 168, arg1) >> 168
        stor5603[stor5.length] = block.timestamp
}

function sub_412bd48a(?) payable {
    require adminId[address(msg.sender)] != 0
    require adminId[address(msg.sender)] < stor5.length
    require uint8(stor5603[stor4[address(msg.sender)]].field_160)
    sub_30658bef.length++
    if not sub_30658bef.length <= sub_30658bef.length + 1:
        mem[0] = 2
        idx = (6 * sub_30658bef.length) + 6
        while sha3(2) + (6 * sub_30658bef.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].length:
                        mem[0] = idx + sha3(mem[0]) + 2
                        s = sha3(idx + sha3(mem[0]) + 2)
                        while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    address(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(s + sha3(mem[0]) + 1)
                while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 2]) = 0
                if 31 < stor[s + sha3(mem[0]) + 2].length:
                    mem[0] = s + sha3(mem[0]) + 2
                    t = sha3(s + sha3(mem[0]) + 2)
                    while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                address(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                s = s + 6
                continue 
            mem[0] = idx + sha3(mem[0])
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    require sub_30658bef.length < sub_30658bef.length
    uint256(sub_30658bef[sub_30658bef.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)][]) = Array(len=arg3.length, data=arg3[all])
    stor4057[stor2.length] = 0
    stor4057[stor2.length] = msg.sender or Mask(96, 160, stor4057[stor2.length])
    stor4057[stor2.length] = block.timestamp
    sub_a92a83ef = sub_30658bef.length + 1
    return sub_30658bef.length
}



}
