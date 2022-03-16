contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[73 len 1183]
}



// =====================  Runtime code  =====================


address sub_747a0c3aAddress;
uint256 stor1;
address sub_996f7d3aAddress;
uint256 stor2;
address sub_74de1218Address;
uint256 stor3;
uint32 sub_3033413b; offset 160
uint32 sub_5d33a27f; offset 192
uint32 sub_aef52a2c; offset 224
uint64 stor4; offset 192
uint128 stor4; offset 160
address owner;
uint16 value;
uint256 stor5;

function sub_3033413b(?) payable {
    return sub_3033413b
}

function value() payable {
    return uint16(value)
}

function sub_5d33a27f(?) payable {
    return sub_5d33a27f
}

function sub_747a0c3a(?) payable {
    return address(sub_747a0c3aAddress)
}

function sub_74de1218(?) payable {
    return address(sub_74de1218Address)
}

function owner() payable {
    return owner
}

function sub_996f7d3a(?) payable {
    return address(sub_996f7d3aAddress)
}

function sub_aef52a2c(?) payable {
    return sub_aef52a2c
}

function _fallback() payable {
  stop
}

function sub_d357cada(?) payable {
    if block.timestamp > 401760 * 24 * 3600:
        uint256(stor5) = arg1 or Mask(240, 16, uint256(stor5))
}

function sub_c2a4dc69(?) payable {
    if address(sub_747a0c3aAddress) != msg.sender:
        if address(sub_996f7d3aAddress) != msg.sender:
            if msg.sender == address(sub_74de1218Address):
                if 0 == sub_aef52a2c:
                    sub_aef52a2c = arg1
        else:
            if 0 == sub_5d33a27f:
                uint64(stor4.field_192) = uint64(arg1)
            if msg.sender == address(sub_74de1218Address):
                if 0 == sub_aef52a2c:
                    sub_aef52a2c = arg1
    else:
        if 0 == sub_3033413b:
            Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
        if address(sub_996f7d3aAddress) != msg.sender:
            if msg.sender == address(sub_74de1218Address):
                if 0 == sub_aef52a2c:
                    sub_aef52a2c = arg1
        else:
            if 0 == sub_5d33a27f:
                uint64(stor4.field_192) = uint64(arg1)
            if msg.sender == address(sub_74de1218Address):
                if 0 == sub_aef52a2c:
                    sub_aef52a2c = arg1
}

function changeOwner(uint8 arg1, address arg2) payable {
    if arg1 != 1:
        if arg1 != 2:
            if 3 == arg1:
                if msg.sender == address(sub_74de1218Address):
                    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
        else:
            if msg.sender == address(sub_996f7d3aAddress):
                uint256(stor2) = arg2 or Mask(96, 160, uint256(stor2))
            if 3 == arg1:
                if msg.sender == address(sub_74de1218Address):
                    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
    else:
        if address(sub_747a0c3aAddress) == msg.sender:
            uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
        if arg1 != 2:
            if 3 == arg1:
                if msg.sender == address(sub_74de1218Address):
                    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
        else:
            if msg.sender == address(sub_996f7d3aAddress):
                uint256(stor2) = arg2 or Mask(96, 160, uint256(stor2))
            if 3 == arg1:
                if msg.sender == address(sub_74de1218Address):
                    uint256(stor3) = arg2 or Mask(96, 160, uint256(stor3))
}

function getWinningOutcome(uint256 arg1) payable {
    if sub_3033413b != sub_5d33a27f:
        if sub_5d33a27f != sub_aef52a2c:
            if sub_3033413b != sub_aef52a2c:
                return uint16(value)
            if 0 == sub_3033413b:
                return uint16(value)
            if sub_3033413b <= 20 * 10^6:
                return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
        else:
            if 0 == sub_5d33a27f:
                if sub_3033413b != sub_aef52a2c:
                    return uint16(value)
                if 0 == sub_3033413b:
                    return uint16(value)
                if sub_3033413b <= 20 * 10^6:
                    return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
            else:
                if sub_3033413b != sub_aef52a2c:
                    if 0 == sub_aef52a2c:
                        return uint16(value)
                    if sub_aef52a2c <= 20 * 10^6:
                        return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
                else:
                    if sub_3033413b != 0:
                        if sub_3033413b <= 20 * 10^6:
                            return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
                    else:
                        if 0 == sub_aef52a2c:
                            return uint16(value)
                        if sub_aef52a2c <= 20 * 10^6:
                            return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
    else:
        if 0 == sub_3033413b:
            if sub_5d33a27f != sub_aef52a2c:
                if sub_3033413b != sub_aef52a2c:
                    return uint16(value)
                if 0 == sub_3033413b:
                    return uint16(value)
                if sub_3033413b <= 20 * 10^6:
                    return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
            else:
                if 0 == sub_5d33a27f:
                    if sub_3033413b != sub_aef52a2c:
                        return uint16(value)
                    if 0 == sub_3033413b:
                        return uint16(value)
                    if sub_3033413b <= 20 * 10^6:
                        return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
                else:
                    if sub_3033413b != sub_aef52a2c:
                        if 0 == sub_aef52a2c:
                            return uint16(value)
                        if sub_aef52a2c <= 20 * 10^6:
                            return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
                    else:
                        if sub_3033413b != 0:
                            if sub_3033413b <= 20 * 10^6:
                                return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
                        else:
                            if 0 == sub_aef52a2c:
                                return uint16(value)
                            if sub_aef52a2c <= 20 * 10^6:
                                return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
        else:
            if sub_5d33a27f != sub_aef52a2c:
                if 0 == sub_3033413b:
                    return uint16(value)
                if sub_3033413b <= 20 * 10^6:
                    return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
            else:
                if 0 == sub_5d33a27f:
                    if 0 == sub_3033413b:
                        return uint16(value)
                    if sub_3033413b <= 20 * 10^6:
                        return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
                else:
                    if sub_3033413b != sub_aef52a2c:
                        if 0 == sub_aef52a2c:
                            return uint16(value)
                        if sub_aef52a2c <= 20 * 10^6:
                            return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
                    else:
                        if sub_3033413b != 0:
                            if sub_3033413b <= 20 * 10^6:
                                return uint16((10000 * sub_3033413b / 20 * 10^6) + 1)
                        else:
                            if 0 == sub_aef52a2c:
                                return uint16(value)
                            if sub_aef52a2c <= 20 * 10^6:
                                return uint16((10000 * sub_aef52a2c / 20 * 10^6) + 1)
    return 10001
}



}
