contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor96F0;
uint8 stor2CD9;
uint256 stor2F0B;
uint256 stor33C7;
uint256 stor4CBF;
uint8 stor5B84;
uint8 stor5D60;
uint256 stor684C;
uint256 stor6BE0;
uint256 stor79A1;
uint8 stor980F;
uint256 storBF7A;
uint8 storDAE0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    storBF7A = 1
    stor6BE0 = 2
    stor79A1 = 3
    stor2F0B = 4
    stor96F0 = 5
    stor33C7 = 6
    stor4CBF = 7
    stor684C = 8
    stor5D60 = 1
    stor5B84 = 1
    stor2CD9 = 1
    stor980F = 1
    storDAE0 = 1
    return code.data[545 len 1191]
}



// =====================  Runtime code  =====================


address stor0;
array of struct address;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint8 stor12;
uint16 stor13; offset 208
uint32 stor13; offset 224
uint64 stor13; offset 208
uint256 stor13;

function getAddress(bytes32 arg1) payable {
    require stor10[arg1] < 9
    return address[stor10[arg1]].field_0
}

function isLocked(bytes32 arg1) payable {
    require stor10[arg1] < 9
    return bool(address[stor10[arg1]].field_160)
}

function isLocked(address arg1) payable {
    require stor11[address(arg1)] < 9
    return bool(address[stor11[address(arg1)]].field_160)
}

function sub_cc069e2d(?) payable {
    return bool(stor12[stor11[address(arg1)]])
}

function _fallback() payable {
  stop
}

function sub_11e5198f(?) payable {
    if msg.sender == stor0:
        uint32(stor13.field_224) = arg1
}

function sub_b51a1a76(?) payable {
    if msg.sender == stor0:
        Mask(208, 0, stor13.field_0) = Mask(208, 48, arg1) >> 48
}

function sub_737f79df(?) payable {
    if msg.sender == stor0:
        if stor10[arg1]:
            require stor10[arg1] < 9
            address[stor10[arg1]].field_160 = 1
}

function sub_4374d9fe(?) payable {
    if msg.sender == stor0:
        return 1
    if stor0 == tx.origin:
        return 1
    idx = 1
    while idx < 9:
        if address[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_0fa58c7d(?) payable {
    if msg.sender == stor0:
        stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
    else:
        if stor0 != tx.origin:
            idx = 1
            while idx < 9:
                if address[idx].field_0 != msg.sender:
                    idx = idx + 1
                    continue 
                stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
        else:
            stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
}

function setContractAddress(bytes32 arg1, address arg2) payable {
    if stor0 != msg.sender:
        if stor0 != tx.origin:
            idx = 1
            while idx < 9:
                if address[idx].field_0 != msg.sender:
                    idx = idx + 1
                    continue 
                if 0 == arg2:
                    return 0
                if not arg1:
                    return 0
                if not stor10[arg1]:
                    return 0
                require stor10[arg1] < 9
                if address[stor10[arg1]].field_160:
                    return 0
                stor11[address(arg2)] = stor10[arg1]
                require stor10[arg1] < 9
                address[stor10[arg1]].field_0 = address[stor10[arg1]].field_160
                if msg.sender == stor0:
                    stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
                else:
                    if stor0 != tx.origin:
                        idx = 1
                        while idx < 9:
                            if address[idx].field_0 != msg.sender:
                                idx = idx + 1
                                continue 
                            stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
                            return 1
                    else:
                        stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
                return 1
            return 0
    if 0 == arg2:
        return 0
    if not arg1:
        return 0
    if not stor10[arg1]:
        return 0
    require stor10[arg1] < 9
    if address[stor10[arg1]].field_160:
        return 0
    stor11[address(arg2)] = stor10[arg1]
    require stor10[arg1] < 9
    address[stor10[arg1]].field_0 = address[stor10[arg1]].field_160
    if msg.sender == stor0:
        stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
    else:
        if stor0 != tx.origin:
            idx = 1
            while idx < 9:
                if address[idx].field_0 != msg.sender:
                    idx = idx + 1
                    continue 
                stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
                return 1
        else:
            stor13.field_208 % 281474976710656 = uint16(stor13.field_208) + 1 % 281474976710656
    return 1
}



}
