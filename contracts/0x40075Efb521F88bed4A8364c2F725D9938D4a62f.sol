contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
address stor0; offset 16
uint256 stor0; offset 8
address sub_b961a692Address;

function sub_b961a692(?) {
    return sub_b961a692Address
}

function kill() {
    if address(stor0.field_16) != msg.sender:
    selfdestruct(address(stor0.field_16))
}

function _fallback() payable {
    revert
}

function getResult() {
    if not uint8(stor0.field_0):
        return 0
    if not uint8(stor0.field_8):
        return 0
    return 1
}

function sub_aa27152d(?) {
    if msg.sender == 0xc4c66e27cd45865a5afd5a3a92b969228ce9a3e6:
        uint8(stor0.field_0) = 1
    else:
        if msg.sender == 0xebb57a8f59628522b84977847de0d9cde6af8a02:
            Mask(248, 0, stor0.field_8) = 1
}

function sub_dbd509f0(?) {
    if 0xc4c66e27cd45865a5afd5a3a92b969228ce9a3e6 != msg.sender:
        if msg.sender == 0xebb57a8f59628522b84977847de0d9cde6af8a02:
            if not uint8(stor0.field_8):
                Mask(248, 0, stor0.field_8) = 0
    else:
        if not uint8(stor0.field_0):
            uint8(stor0.field_0) = 0
        else:
            if msg.sender == 0xebb57a8f59628522b84977847de0d9cde6af8a02:
                if not uint8(stor0.field_8):
                    Mask(248, 0, stor0.field_8) = 0
}

function sub_fe7fd57c(?) {
    if uint8(stor0.field_0):
        if uint8(stor0.field_8):
            if block.timestamp > 1546281000:
                if msg.sender == 0xc4c66e27cd45865a5afd5a3a92b969228ce9a3e6:
                    uint8(stor0.field_0) = 0
                    sub_b961a692Address = 0xc4c66e27cd45865a5afd5a3a92b969228ce9a3e6
                else:
                    if msg.sender == 0xebb57a8f59628522b84977847de0d9cde6af8a02:
                        Mask(248, 0, stor0.field_8) = 0
                        sub_b961a692Address = 0xebb57a8f59628522b84977847de0d9cde6af8a02
}



}
