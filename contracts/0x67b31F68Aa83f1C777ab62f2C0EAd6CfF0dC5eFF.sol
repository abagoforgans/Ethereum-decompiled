contract main {


// =======================  Init code  ======================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8

function _fallback() {
    uint8(stor0.field_0) = 1
    address(stor0.field_8) = tx.origin
    stor0.field_256 % 1 = 0
    return code.data[71 len 1122]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0; offset 8
mapping of struct meta;
mapping of address stor2;
uint256 stor3;

function access() {
    return bool(uint8(stor0.field_0))
}

function meta(address arg1) {
    return bool(meta[arg1].field_0), bool(meta[arg1].field_8), bool(meta[arg1].field_16)
}

function sub_f7eb2483(?) {
    return bool(uint8(stor0.field_0))
}

function _fallback() payable {
    revert
}

function lock() {
    if address(stor0.field_8) == tx.origin:
        uint8(stor0.field_0) = 0
}

function sub_477214b0(?) {
    if address(stor0.field_8) != tx.origin:
        return 0
    return stor2[arg1]
}

function sub_ba6bbef1(?) {
    if address(stor0.field_8) == tx.origin:
        if not meta[address(arg1)].field_16:
            stor2[stor3] = arg1
            stor3++
}

function sub_39bc5a53(?) {
    if not uint8(stor0.field_0):
        return bool(uint8(stor0.field_0))
    if meta[address(arg1)].field_0:
        return bool(meta[address(arg1)].field_0)
    return (address(stor0.field_8) == arg1)
}

function sub_e2877dc8(?) {
    if not uint8(stor0.field_0):
        return bool(uint8(stor0.field_0))
    if meta[address(arg1)].field_8:
        return bool(meta[address(arg1)].field_8)
    return (address(stor0.field_8) == arg1)
}

function sub_220bf301(?) {
    if uint8(stor0.field_0):
        if meta[tx.origin].field_8:
            meta[address(arg1)].field_0 = uint8(arg2)
            meta[address(arg1)].field_8 = Mask(248, 0, arg3)
            meta[address(arg1)].field_16 = Mask(240, 16, arg2) >> 16
            if address(stor0.field_8) == tx.origin:
                if not meta[address(arg1)].field_16:
                    stor2[stor3] = arg1
                    stor3++
            meta[address(arg1)].field_16 = 1
        else:
            if address(stor0.field_8) == tx.origin:
                meta[address(arg1)].field_0 = uint8(arg2)
                meta[address(arg1)].field_8 = Mask(248, 0, arg3)
                meta[address(arg1)].field_16 = Mask(240, 16, arg2) >> 16
                if not meta[address(arg1)].field_16:
                    stor2[stor3] = arg1
                    stor3++
                meta[address(arg1)].field_16 = 1
}



}
