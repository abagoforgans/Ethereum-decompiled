contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
bool stor3; offset 256
uint8 stor3; offset 64
uint8 stor3; offset 72
uint8 stor3; offset 80
uint8 stor3; offset 88
uint8 stor3; offset 96
uint8 stor3; offset 104
uint32 stor3;
uint32 stor3; offset 32
uint64 stor3; offset 64
address stor3; offset 104
uint256 stor3; offset 64

function _fallback() {
    mem[96 len -1992] = code.data[2596 len -1992]
    mem[64] = -1896
    stor0 = msg.sender
    uint32(stor3.field_32) = 0
    Mask(192, 0, stor3.field_64) = stor3.field_64 % 1099511627776
    uint8(stor3.field_104) = 1
    stor3.field_256 % 1 = 0
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    uint32(stor3.field_0) = mem[188 len 4]
    uint8(stor3.field_64) = mem[223 len 1]
    uint8(stor3.field_72) = mem[255 len 1]
    uint8(stor3.field_80) = mem[287 len 1]
    uint8(stor3.field_88) = mem[319 len 1]
    uint8(stor3.field_96) = mem[351 len 1]
    Mask(152, 0, stor3.field_104) = Mask(152, 0, bool(mem[352]))
    return code.data[604 len 1992]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of uint256 name;
uint8 sub_e97da3c0; offset 64
uint8 sub_070c5b9d; offset 72
uint8 sub_f471e899; offset 80
uint8 sub_294c1777; offset 88
uint8 sub_46d1f9d8; offset 96
uint8 stor3; offset 104
uint32 sub_06517a29;
uint32 sub_887da91d; offset 32
address stor3; offset 104
mapping of uint256 buyers;

function sub_06517a29(?) {
    return sub_06517a29
}

function name() {
    return name[0 len name.length]
}

function sub_070c5b9d(?) {
    return sub_070c5b9d
}

function isActive() {
    return bool(uint8(stor3.field_104))
}

function sub_294c1777(?) {
    return sub_294c1777
}

function sub_46d1f9d8(?) {
    return sub_46d1f9d8
}

function sub_887da91d(?) {
    return sub_887da91d
}

function owner() {
    return owner
}

function buyers(address arg1) {
    return buyers[arg1]
}

function sub_e97da3c0(?) {
    return sub_e97da3c0
}

function sub_f471e899(?) {
    return sub_f471e899
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function setActive(bool arg1) {
    require owner == msg.sender
    Mask(152, 0, stor3.field_104) = Mask(152, 0, arg1)
}

function buy() {
    require uint8(stor3.field_104)
    require not buyers[address(msg.sender)]
    require sub_887da91d < sub_06517a29
    sub_887da91d = uint32(sub_887da91d + 1)
    require sub_46d1f9d8
    if 0 == uint32(uint32(sub_887da91d + 1) % sub_46d1f9d8):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, sub_f471e899
        require ext_call.success
        buyers[address(msg.sender)] = sub_f471e899
    else:
        require sub_294c1777
        require ext_code.size(tokenAddress)
        if uint32(sub_887da91d % sub_294c1777) != 0:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, sub_e97da3c0
            require ext_call.success
            buyers[address(msg.sender)] = sub_e97da3c0
        else:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, sub_070c5b9d
            require ext_call.success
            buyers[address(msg.sender)] = sub_070c5b9d
}



}
