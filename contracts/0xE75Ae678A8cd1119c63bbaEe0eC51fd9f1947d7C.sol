contract main {




// =====================  Runtime code  =====================


#
#  - sub_8d4b8468(?)
#  - sub_d46ba433(?)
#
bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
uint256 stor51;
address owner;
address stor153;
address stor154;
address stor155;
mapping of uint8 stor156;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_6c7e78e6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor153 = arg1
}

function sub_c96e9234(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor154 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeRecipient(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor155 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    stor51 = 1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor154 = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
        else:
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
            else:
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if not uint8(stor0.field_8):
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor154 = arg2
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor155 = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        stor51 = 1
        uint8(stor0.field_0) = 1
        Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
        Mask(240, 0, stor0.field_16) = 0
        stor0.field_256 % 1 = 0
        stor0.field_256 % 1 = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        owner = arg1
        emit OwnershipTransferred(0, arg1);
        Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
        stor153 = arg2
        Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if uint8(stor0.field_8):
            stor51 = 1
            uint8(stor0.field_0) = 1
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            Mask(240, 0, stor0.field_16) = 0
            stor0.field_256 % 1 = 0
            stor0.field_256 % 1 = 0
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            stor153 = arg2
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
        else:
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            stor51 = 1
            uint8(stor0.field_0) = 1
            Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
            Mask(240, 0, stor0.field_16) = 0
            stor0.field_256 % 1 = 0
            stor0.field_256 % 1 = 0
            if uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                stor153 = arg2
                Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
            else:
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    stor153 = arg2
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                else:
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = arg1
                    emit OwnershipTransferred(0, arg1);
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    stor153 = arg2
                    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
                    if uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                    else:
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_8):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                        else:
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                            else:
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                if not uint8(stor0.field_8):
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    owner = arg1
    emit OwnershipTransferred(0, arg1);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor154 = arg3
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor155 = arg4
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_ef30db21(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 512
    require ('cd', 4)[11] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[11] + 35
    require cd[(cd[4] + ('cd', 4)[11] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 640 >= 608 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 640 <= test266151307()
    require cd[4] + ('cd', 4)[11] + cd[(cd[4] + ('cd', 4)[11] + 4)] + 36 <= calldata.size
    mem[640 len cd[(cd[4] + ('cd', 4)[11] + 4)]] = call.data[cd[4] + ('cd', 4)[11] + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 640] = 0
    mem[480] = 608
    require ('cd', 4)[12] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[12] + 35
    require cd[(cd[4] + ('cd', 4)[12] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 672 >= 640 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 672 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 640] = cd[(cd[4] + ('cd', 4)[12] + 4)]
    require cd[4] + ('cd', 4)[12] + cd[(cd[4] + ('cd', 4)[12] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672 len cd[(cd[4] + ('cd', 4)[12] + 4)]] = call.data[cd[4] + ('cd', 4)[12] + 36 len cd[(cd[4] + ('cd', 4)[12] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[12] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672] = 0
    mem[512] = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 640
    require ('cd', 4)[13] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[13] + 35
    require cd[(cd[4] + ('cd', 4)[13] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 704 >= 672 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 704 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 672] = cd[(cd[4] + ('cd', 4)[13] + 4)]
    require cd[4] + ('cd', 4)[13] + cd[(cd[4] + ('cd', 4)[13] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 704 len cd[(cd[4] + ('cd', 4)[13] + 4)]] = call.data[cd[4] + ('cd', 4)[13] + 36 len cd[(cd[4] + ('cd', 4)[13] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[13] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 704] = 0
    mem[544] = ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + 672
    require ('cd', 4)[14] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[14] + 35
    require cd[(cd[4] + ('cd', 4)[14] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 736 >= 704 and ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 736 <= test266151307()
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 704] = cd[(cd[4] + ('cd', 4)[14] + 4)]
    require cd[4] + ('cd', 4)[14] + cd[(cd[4] + ('cd', 4)[14] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 736 len cd[(cd[4] + ('cd', 4)[14] + 4)]] = call.data[cd[4] + ('cd', 4)[14] + 36 len cd[(cd[4] + ('cd', 4)[14] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 736] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 736] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 768] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 800] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 832 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])] = call.data[cd[4] + ('cd', 4)[11] + 36 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 832] = 256^(-(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 32) - 1 and mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 832] or call.data[cd[4] + ('cd', 4)[11] + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 36 len cd[(cd[4] + ('cd', 4)[11] + 4)] % 32], Mask(8 * -(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 32, -(8 * -(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 32) + 256, 0) << (8 * -(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 32) - 256 and !(256^(-(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 32) - 1)
    _128 = sha3(call.data[cd[4] + ('cd', 4)[11] + 36 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])], mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 832 len cd[(cd[4] + ('cd', 4)[11] + 4)] % 32])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 832 len floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672 len floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + 832] = !(256^(-(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32) + 32) - 1) and mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + 672] or 256^(-(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32) + 32) - 1 and mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + 832]
    _239 = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 832 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 864] = ('cd', 4).length
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 896] = address(('cd', 4)[1])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 916] = address(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 936] = ('cd', 4)[9]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 968] = _128
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1000] = _239
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 832] = 168
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 736] = sha3(('cd', 4).length, address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[9], _128, _239)
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])] = call.data[cd[4] + ('cd', 4)[11] + 36 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + -(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + 1064 len cd[(cd[4] + ('cd', 4)[11] + 4)] % 32] = mem[-(cd[(cd[4] + ('cd', 4)[11] + 4)] % 32) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672 len cd[(cd[4] + ('cd', 4)[11] + 4)] % 32]
    _343 = sha3(call.data[cd[4] + ('cd', 4)[11] + 36 len floor32(cd[(cd[4] + ('cd', 4)[11] + 4)])], mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 1032 len cd[(cd[4] + ('cd', 4)[11] + 4)] % 32])
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + 672 len floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])])]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + -(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32) + 1064 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32] = mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + -(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32) + floor32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]) + 704 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])] % 32]
    mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 768] = sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]]))
    if Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[13] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + cd[(cd[4] + ('cd', 4)[13] + 4)] + 736 len -cd[(cd[4] + ('cd', 4)[13] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)])] != 65:
        revert with 0, 'LENGTH_65_REQUIRED'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]]))), 0, mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 736], mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + 768]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(('cd', 4)[1]):
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               3
    if not ('cd', 4)[3]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               1
    if not ('cd', 4)[4]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               2
    if stor[sha3(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])], 157)] >= ('cd', 4)[7]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               7
    if stor156[('cd', 4).length][('cd', 4)[0]][address(('cd', 4)[1])][address(('cd', 4)[2])][('cd', 4)[3]][('cd', 4)[4]][('cd', 4)[5]][('cd', 4)[6]][('cd', 4)[7]][('cd', 4)[8]][('cd', 4)[9]][('cd', 4)[10]][_343][sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               6
    if not ('cd', 4)[8]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               4
    if block.timestamp < ('cd', 4)[8]:
        return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
               mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
               sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
               4
    return Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 32, 0, 0), 
           mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + cd[(cd[4] + ('cd', 4)[14] + 4)] + 768 len -cd[(cd[4] + ('cd', 4)[14] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)])],
           sha3(('cd', 4).length, ('cd', 4)[0], address(('cd', 4)[1]), address(('cd', 4)[2]), ('cd', 4)[3], ('cd', 4)[4], ('cd', 4)[5], ('cd', 4)[6], ('cd', 4)[7], ('cd', 4)[8], ('cd', 4)[9], ('cd', 4)[10], _343, sha3(mem[ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[12] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[13] + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[14] + 4)]) + 1032 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)]) + cd[(cd[4] + ('cd', 4)[11] + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4)[11] + 4)] + 672 len -cd[(cd[4] + ('cd', 4)[11] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[11] + 4)])]])),
           5
}



}
