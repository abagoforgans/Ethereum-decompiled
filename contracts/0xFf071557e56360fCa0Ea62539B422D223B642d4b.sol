contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1;
array of uint8 stor2;
array of uint8 stor3;
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint8 stor4; offset 24
uint256 stor4; offset 24
uint256 stor4; offset 16
uint256 stor4; offset 8
uint256 stor4;
uint8 stor5;

function sub_3e7c7b90(?) payable {
    return bool(stor5)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function complete() payable {
    require msg.sender == owner
    stor5 = 1
}

function sub_fed39eed(?) payable {
    require msg.sender == owner
    stor5 = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_03e2ff37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 30
    require msg.sender == owner
    require arg1 <= 29
    Mask(248, 0, stor4.field_8) = Mask(248, 0, arg1)
}

function sub_4d76ec75(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 30
    require msg.sender == owner
    require arg1 <= 29
    Mask(240, 0, stor4.field_16) = Mask(240, 0, arg1)
}

function sub_997d0651(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 30
    require msg.sender == owner
    require arg1 <= 29
    uint256(stor4.field_0) = arg1 or Mask(248, 8, uint256(stor4.field_0))
}

function sub_1c24aec1(?) payable {
    require uint8(stor4.field_0) < 30
    require uint8(stor4.field_8) < 30
    require uint8(stor4.field_16) < 30
    require uint8(stor4.field_24) < 30
    return bool(stor1), uint8(stor4.field_0), uint8(stor4.field_0), uint8(stor4.field_0), uint8(stor4.field_24)
}

function sub_57daf077(?) payable {
    require calldata.size - 4 >= 1024
    require 35 < calldata.size
    require 964 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 30:
        mem[t] = bool(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[996] < 30
    require msg.sender == owner
    idx = 0
    while uint8(idx) < 30:
        require uint8(idx) < 30
        if bool(mem[(32 * uint8(idx)) + 96]) != 1:
            if 1 == bool(uint8(stor2[uint8(idx)])):
                require uint8(idx) < 30
                uint256(stor2[uint8(idx) / 32]) = 0
        else:
            if not uint8(stor2[uint8(idx)]):
                require uint8(idx) < 30
                uint256(stor2[uint8(idx) / 32]) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor2[uint8(idx) / 32])
                uint256(stor3[uint8(idx) / 32]) = uint8(cd[964]) * 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor3[uint8(idx) / 32])
        idx = idx + 1
        continue 
    require cd[996] <= 29
    require uint8(stor4.field_24) <= 29
    if uint8(stor4.field_24) != cd[996]:
        require cd[996] <= 29
        Mask(232, 0, stor4.field_24) = Mask(232, 0, cd[996])
}

function sub_40e1fd22(?) payable {
    mem[4320] = bool(uint8(stor2.length))
    idx = 4320
    s = 0
    while 5280 > idx + 32:
        mem[idx + 32] = bool(uint8(stor2[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]))
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[5280] = uint8(stor3.length)
    idx = 5280
    s = 0
    while 6240 > idx + 32:
        mem[idx + 32] = uint8(stor3[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1])
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    if uint8(stor4.field_0) <= 29:
        if uint8(stor4.field_8) <= 29:
            if uint8(stor4.field_16) <= 29:
                if uint8(stor4.field_24) <= 29:
                    mem[6240] = bool(stor1)
                    idx = 0
                    s = 4320
                    t = 6272
                    while idx < 30:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    idx = 0
                    s = 5280
                    t = 7232
                    while idx < 30:
                        mem[t] = mem[s + 31 len 1]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    if uint8(stor4.field_0) < 30:
                        if uint8(stor4.field_8) < 30:
                            if uint8(stor4.field_16) < 30:
                                if uint8(stor4.field_24) < 30:
                                    return bool(stor1), 
                                           mem[6272 len 1920],
                                           uint8(stor4.field_0),
                                           uint8(stor4.field_0),
                                           uint8(stor4.field_0),
                                           uint8(stor4.field_24)
    revert
}



}
