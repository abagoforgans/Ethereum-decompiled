contract main {




// =====================  Runtime code  =====================


#
#  - sub_09683c03(?)
#  - sub_130d33fe(?)
#  - sub_d757abd2(?)
#
address owner;
uint256 sub_09b62d8b;
address ethPoolAddress;
address sub_53fc513fAddress;
array of address depositLimits;
uint8 stor5;
array of struct sub_ba324e64;
array of uint256 stor7;
array of uint256 stor8;
array of address stor11;
array of uint256 stor14;
array of uint256 stor15;

function sub_09b62d8b(?) {
    return sub_09b62d8b
}

function sub_0caa1a3d(?) {
    require calldata.size - 4 >= 32
    return sub_ba324e64[arg1 << 192].field_1024, sub_ba324e64[arg1 << 192].field_2816 >> 256, 
           uint256(sub_ba324e64[arg1 << 192].field_1536),
           uint256(sub_ba324e64[arg1 << 192].field_3328)
}

function sub_357ed0e1(?) {
    require calldata.size - 4 >= 32
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    return uint8(sub_ba324e64[arg1 << 192].field_768)
}

function sub_367e3e4b(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_ba324e64[arg1 << 192].field_4608)
}

function sub_53fc513f(?) {
    return sub_53fc513fAddress
}

function sub_87afab64(?) {
    require calldata.size - 4 >= 32
    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
    return uint8(sub_ba324e64[arg1 << 192].field_512)
}

function owner() {
    return owner
}

function sub_9126eea3(?) {
    return bool(stor5)
}

function sub_aec2eb1e(?) {
    require calldata.size - 4 >= 32
    return sub_ba324e64[arg1 << 192].field_520
}

function sub_ba324e64(?) {
    require calldata.size - 4 >= 32
    return sub_ba324e64[arg1 << 192].field_1024, sub_ba324e64[arg1 << 192].field_2816 >> 256, 
           uint256(sub_ba324e64[arg1 << 192].field_1280),
           uint256(sub_ba324e64[arg1 << 192].field_3072)
}

function depositLimits(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(depositLimits[arg1])
}

function ethPool() {
    return ethPoolAddress
}

function sub_f90a2f3e(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_ba324e64[arg1 << 192].field_0)
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_521a9a74(?) {
    require msg.sender == owner
    stor5 = 1
}

function sub_f897e2dd(?) {
    require msg.sender == owner
    stor5 = 0
}

function _fallback() payable {
    if ethPoolAddress != msg.sender:
        revert with 0, 'Sender is not EthPool'
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1335a7a3(?) {
    require calldata.size - 4 >= 64
    if sub_ba324e64[arg1 << 192].field_1024 == arg2:
        return uint256(sub_ba324e64[arg1 << 192].field_1536)
    if sub_ba324e64[arg1 << 192].field_2816 != arg2:
        revert with 0, 'Nonexist peer'
    return uint256(sub_ba324e64[arg1 << 192].field_3328)
}

function sub_78cb361e(?) {
    require calldata.size - 4 >= 64
    if sub_ba324e64[arg1 << 192].field_1024 == arg2:
        return uint256(sub_ba324e64[arg1 << 192].field_1280)
    if sub_ba324e64[arg1 << 192].field_2816 != arg2:
        revert with 0, 'Nonexist peer'
    return uint256(sub_ba324e64[arg1 << 192].field_3072)
}

function sub_41a3094d(?) {
    require calldata.size - 4 >= 32
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 1:
        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if not sub_ba324e64[arg1 << 192].field_4864:
        revert with 0, 'No pending withdraw intent'
    if sub_ba324e64[arg1 << 192].field_1024 != msg.sender:
        if sub_ba324e64[arg1 << 192].field_2816 != msg.sender:
            revert with 0, 'msg.sender is not peer'
    sub_ba324e64[arg1 << 192].field_4864 = 0
    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
    emit 0x690c9e46: arg1
}

function sub_e4098a82(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    require ('cd', 36).length == ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        uint256(depositLimits[address(cd[((32 * idx) + cd[4] + 36)])]) = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
}

function sub_1707e055(?) {
    require calldata.size - 4 >= 96
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 1:
        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if sub_ba324e64[arg1 << 192].field_4864:
        revert with 0, 'Pending withdraw intent exists'
    if sub_ba324e64[arg1 << 192].field_1024 == msg.sender:
        require uint256(sub_ba324e64[arg1 << 192].field_3840) + uint256(sub_ba324e64[arg1 << 192].field_1280) >= uint256(sub_ba324e64[arg1 << 192].field_1280)
        require uint256(sub_ba324e64[arg1 << 192].field_3328) >= 0
        require uint256(sub_ba324e64[arg1 << 192].field_2048) <= uint256(sub_ba324e64[arg1 << 192].field_3328) + uint256(sub_ba324e64[arg1 << 192].field_3840) + uint256(sub_ba324e64[arg1 << 192].field_1280)
        require uint256(sub_ba324e64[arg1 << 192].field_1536) <= uint256(sub_ba324e64[arg1 << 192].field_3328) + uint256(sub_ba324e64[arg1 << 192].field_3840) + uint256(sub_ba324e64[arg1 << 192].field_1280) - uint256(sub_ba324e64[arg1 << 192].field_2048)
        if arg2 > uint256(sub_ba324e64[arg1 << 192].field_3328) + uint256(sub_ba324e64[arg1 << 192].field_3840) + uint256(sub_ba324e64[arg1 << 192].field_1280) - uint256(sub_ba324e64[arg1 << 192].field_2048) - uint256(sub_ba324e64[arg1 << 192].field_1536):
            revert with 0, 'Exceed withdraw limit'
    else:
        if sub_ba324e64[arg1 << 192].field_2816 != msg.sender:
            revert with 0, 'Nonexist peer'
        require uint256(sub_ba324e64[arg1 << 192].field_2048) + uint256(sub_ba324e64[arg1 << 192].field_3072) >= uint256(sub_ba324e64[arg1 << 192].field_3072)
        require uint256(sub_ba324e64[arg1 << 192].field_1536) >= 0
        require uint256(sub_ba324e64[arg1 << 192].field_3840) <= uint256(sub_ba324e64[arg1 << 192].field_1536) + uint256(sub_ba324e64[arg1 << 192].field_2048) + uint256(sub_ba324e64[arg1 << 192].field_3072)
        require uint256(sub_ba324e64[arg1 << 192].field_3328) <= uint256(sub_ba324e64[arg1 << 192].field_1536) + uint256(sub_ba324e64[arg1 << 192].field_2048) + uint256(sub_ba324e64[arg1 << 192].field_3072) - uint256(sub_ba324e64[arg1 << 192].field_3840)
        if arg2 > uint256(sub_ba324e64[arg1 << 192].field_1536) + uint256(sub_ba324e64[arg1 << 192].field_2048) + uint256(sub_ba324e64[arg1 << 192].field_3072) - uint256(sub_ba324e64[arg1 << 192].field_3840) - uint256(sub_ba324e64[arg1 << 192].field_3328):
            revert with 0, 'Exceed withdraw limit'
    sub_ba324e64[arg1 << 192].field_4864 = msg.sender
    uint256(sub_ba324e64[arg1 << 192].field_5120) = arg2
    uint256(sub_ba324e64[arg1 << 192].field_5376) = block.number
    uint64(sub_ba324e64[arg1 << 192].field_5632) = arg3
    emit 0xa951951b: arg1 << 192, msg.sender, arg2
}

function sub_8eed39bd(?) payable {
    require calldata.size - 4 >= 96
    require msg.value + arg3 >= arg3
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 1:
        require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
        if uint8(sub_ba324e64[arg1 << 192].field_768) != 2:
            revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if sub_ba324e64[arg1 << 192].field_1024 == arg2:
        if stor5:
            require uint256(sub_ba324e64[arg1 << 192].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_1280) >= uint256(sub_ba324e64[arg1 << 192].field_1280)
            require uint256(sub_ba324e64[arg1 << 192].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_1280) >= 0
            if uint256(sub_ba324e64[arg1 << 192].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_1280) + msg.value + arg3 > uint256(depositLimits[stor6[arg1 << 192].field_512]):
                revert with 0, 'Deposits exceed limit'
        require msg.value + arg3 + uint256(sub_ba324e64[arg1 << 192].field_1280) >= uint256(sub_ba324e64[arg1 << 192].field_1280)
        uint256(sub_ba324e64[arg1 << 192].field_1280) = msg.value + arg3 + uint256(sub_ba324e64[arg1 << 192].field_1280)
    else:
        if sub_ba324e64[arg1 << 192].field_2816 != arg2:
            revert with 0, 'Nonexist peer'
        if stor5:
            require uint256(sub_ba324e64[arg1 << 192].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_3072) >= uint256(sub_ba324e64[arg1 << 192].field_3072)
            require uint256(sub_ba324e64[arg1 << 192].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_3072) >= 0
            if uint256(sub_ba324e64[arg1 << 192].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_3072) + msg.value + arg3 > uint256(depositLimits[stor6[arg1 << 192].field_512]):
                revert with 0, 'Deposits exceed limit'
        require msg.value + arg3 + uint256(sub_ba324e64[arg1 << 192].field_3072) >= uint256(sub_ba324e64[arg1 << 192].field_3072)
        uint256(sub_ba324e64[arg1 << 192].field_3072) = msg.value + arg3 + uint256(sub_ba324e64[arg1 << 192].field_3072)
    emit 0x6997464d: arg1 << 192, sub_ba324e64[arg1 << 192].field_1024, sub_ba324e64[arg1 << 192].field_2816 >> 256, uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_3072)
    if arg3:
        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
        if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
            require ext_code.size(ethPoolAddress)
            call ethPoolAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom EthPool failed'
        else:
            require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
            if uint8(sub_ba324e64[arg1 << 192].field_512) == 2:
                if msg.value:
                    revert with 0, 'msg.value is not 0'
                require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                call sub_ba324e64[arg1 << 192].field_520.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
}

function sub_81740d8f(?) {
    require calldata.size - 4 >= 32
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 1:
        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if not sub_ba324e64[arg1 << 192].field_4864:
        revert with 0, 'Withdraw receiver is 0'
    require uint256(sub_ba324e64[arg1 << 192].field_256) + uint256(sub_ba324e64[arg1 << 192].field_5376) >= uint256(sub_ba324e64[arg1 << 192].field_5376)
    if block.number < uint256(sub_ba324e64[arg1 << 192].field_256) + uint256(sub_ba324e64[arg1 << 192].field_5376):
        revert with 0, 'Dispute not timeout'
    sub_ba324e64[arg1 << 192].field_4864 = 0
    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
    if sub_ba324e64[arg1 << 192].field_1024 == sub_ba324e64[arg1 << 192].field_4864:
        if uint256(sub_ba324e64[arg1 << 192].field_1280) >= uint256(sub_ba324e64[arg1 << 192].field_5120):
            require uint256(sub_ba324e64[arg1 << 192].field_5120) <= uint256(sub_ba324e64[arg1 << 192].field_1280)
            uint256(sub_ba324e64[arg1 << 192].field_1280) -= uint256(sub_ba324e64[arg1 << 192].field_5120)
            emit 0x12312521: arg1 << 192, code.data[24174 len 32] >> 256, sub_ba324e64[arg1 << 192].field_4864, uint64(sub_ba324e64[arg1 << 192].field_5632), uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_3072)
        else:
            require uint256(sub_ba324e64[arg1 << 192].field_1280) <= uint256(sub_ba324e64[arg1 << 192].field_5120)
            uint256(sub_ba324e64[arg1 << 192].field_1280) = 0
            require uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_1536) >= uint256(sub_ba324e64[arg1 << 192].field_1536)
            uint256(sub_ba324e64[arg1 << 192].field_1536) = uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_1536)
            require uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_1280) <= uint256(sub_ba324e64[arg1 << 192].field_3072)
            uint256(sub_ba324e64[arg1 << 192].field_3072) = uint256(sub_ba324e64[arg1 << 192].field_3072) - uint256(sub_ba324e64[arg1 << 192].field_5120) + uint256(sub_ba324e64[arg1 << 192].field_1280)
            emit 0x12312521: arg1 << 192, uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_1280) >> 256, sub_ba324e64[arg1 << 192].field_4864, uint64(sub_ba324e64[arg1 << 192].field_5632), uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_3072)
    else:
        if sub_ba324e64[arg1 << 192].field_2816 != sub_ba324e64[arg1 << 192].field_4864:
            revert with 0, 'Nonexist peer'
        if uint256(sub_ba324e64[arg1 << 192].field_3072) >= uint256(sub_ba324e64[arg1 << 192].field_5120):
            require uint256(sub_ba324e64[arg1 << 192].field_5120) <= uint256(sub_ba324e64[arg1 << 192].field_3072)
            uint256(sub_ba324e64[arg1 << 192].field_3072) -= uint256(sub_ba324e64[arg1 << 192].field_5120)
            emit 0x12312521: arg1 << 192, Mask(512, 0, sub_ba324e64[arg1 << 192].field_5120), sub_ba324e64[arg1 << 192].field_4864, uint64(sub_ba324e64[arg1 << 192].field_5632), uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_3072)
        else:
            require uint256(sub_ba324e64[arg1 << 192].field_3072) <= uint256(sub_ba324e64[arg1 << 192].field_5120)
            uint256(sub_ba324e64[arg1 << 192].field_3072) = 0
            require uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_3328) >= uint256(sub_ba324e64[arg1 << 192].field_3328)
            uint256(sub_ba324e64[arg1 << 192].field_3328) = uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_3328)
            require uint256(sub_ba324e64[arg1 << 192].field_5120) - uint256(sub_ba324e64[arg1 << 192].field_3072) <= uint256(sub_ba324e64[arg1 << 192].field_1280)
            uint256(sub_ba324e64[arg1 << 192].field_1280) = uint256(sub_ba324e64[arg1 << 192].field_1280) - uint256(sub_ba324e64[arg1 << 192].field_5120) + uint256(sub_ba324e64[arg1 << 192].field_3072)
            emit 0x12312521: arg1 << 192, Mask(512, 0, sub_ba324e64[arg1 << 192].field_3072), sub_ba324e64[arg1 << 192].field_4864, uint64(sub_ba324e64[arg1 << 192].field_5632), uint256(sub_ba324e64[arg1 << 192].field_1280), uint256(sub_ba324e64[arg1 << 192].field_3072)
    if not uint64(sub_ba324e64[arg1 << 192].field_5632):
        if not sub_ba324e64[arg1 << 192].field_4864:
            revert with 0, 'transfer to address is 0'
        if uint256(sub_ba324e64[arg1 << 192].field_5120):
            require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
            if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                call sub_ba324e64[arg1 << 192].field_4864 with:
                   value uint256(sub_ba324e64[arg1 << 192].field_5120) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                     gas gas_remaining wei
                    args sub_ba324e64[arg1 << 192].field_4864, uint256(sub_ba324e64[arg1 << 192].field_5120)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
    else:
        require uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_512) <= 2
        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
        if uint8(sub_ba324e64[arg1 << 192].field_512) != uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_512):
            revert with 0, 
                        32,
                        35,
                        0x546f6b656e206d69736d61746368206f6620726563697069656e74206368616e6e65,
                        Mask(200, 0, sub_ba324e64[arg1 << 192].field_4864),
                        uint32(sub_ba324e64[arg1 << 192].field_5664)
        if sub_ba324e64[arg1 << 192].field_520 != sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_520:
            revert with 0, 
                        32,
                        35,
                        0x546f6b656e206d69736d61746368206f6620726563697069656e74206368616e6e65,
                        Mask(200, 0, sub_ba324e64[arg1 << 192].field_4864),
                        uint32(sub_ba324e64[arg1 << 192].field_5664)
        require uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_768) <= 3
        if uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_768) != 1:
            require uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_768) <= 3
            if uint8(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_768) != 2:
                revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
        if sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1024 == sub_ba324e64[arg1 << 192].field_4864:
            if stor5:
                require uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) >= uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280)
                require uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_5120) >= uint256(sub_ba324e64[arg1 << 192].field_5120)
                if uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) + uint256(sub_ba324e64[arg1 << 192].field_5120) > uint256(depositLimits[stor6[uint64(stor6[arg1 << 192].field_5632)].field_512]):
                    revert with 0, 'Deposits exceed limit'
            require uint256(sub_ba324e64[arg1 << 192].field_5120) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) >= uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280)
            uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) += uint256(sub_ba324e64[arg1 << 192].field_5120)
        else:
            if sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_2816 != sub_ba324e64[arg1 << 192].field_4864:
                revert with 0, 'Nonexist peer'
            if stor5:
                require uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) >= uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072)
                require uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_5120) >= uint256(sub_ba324e64[arg1 << 192].field_5120)
                if uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) + uint256(sub_ba324e64[arg1 << 192].field_5120) > uint256(depositLimits[stor6[uint64(stor6[arg1 << 192].field_5632)].field_512]):
                    revert with 0, 'Deposits exceed limit'
            require uint256(sub_ba324e64[arg1 << 192].field_5120) + uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) >= uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072)
            uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072) += uint256(sub_ba324e64[arg1 << 192].field_5120)
        emit 0x6997464d: uint64(sub_ba324e64[arg1 << 192].field_5632), sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1024, sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_2816 >> 256, uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_1280), uint256(sub_ba324e64[uint64(sub_ba324e64[arg1 << 192].field_5632)].field_3072)
}

function sub_93b7b3ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 96
    mem[160] = arg1.length
    mem[192 len arg1.length] = arg1[all]
    mem[arg1.length + 192] = 0
    mem[ceil32(arg1.length) + 192] = 96
    mem[ceil32(arg1.length) + 224] = 96
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 96
    mem[ceil32(arg1.length) + 352] = 160
    mem[ceil32(arg1.length) + 384] = 3
    mem[ceil32(arg1.length) + 416 len 96] = code.data[24142 len 96]
    if var50001:
        require 0 < 3
        mem[ceil32(arg1.length) + 416] = code.data[24142 len 32] + 1
        mem[ceil32(arg1.length) + 320] = 2
        s = 160
        s = mem[192]
        while 2 < arg1.length:
            _3001 = mem[mem[ceil32(arg1.length) + 320] + 192]
            mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
            require 0 < 3
            mem[ceil32(arg1.length) + 416] = mem[ceil32(arg1.length) + 416] + 1
            mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
            s = 160
            s = _3001
            continue 
        mem[ceil32(arg1.length) + 320] = 0
        mem[ceil32(arg1.length) + 512] = code.data[24206 len 32]
        mem[64] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 544
        if not code.data[24206 len 32]:
            mem[ceil32(arg1.length) + 224] = ceil32(arg1.length) + 512
            mem[ceil32(arg1.length) + 480] = 0
            if var91001:
                mem[ceil32(arg1.length) + 320] = 2
                s = 160
                s = mem[192]
                while 2 < arg1.length:
                    _10811 = mem[mem[ceil32(arg1.length) + 320] + 192]
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    s = 160
                    s = _10811
                    continue 
                _10790 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])] = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] = 256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1 and mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] or mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 32] and !(256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _10790 + 576] = address(this.address)
                if not uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _10790 + 20])):
                    revert with 0, 'channelId gets 0'
                require uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _10790 + 20]))].field_768) <= 3
                if uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _10790 + 20]))].field_768):
                    revert with 0, 'Occupied channelId'
                require var156001
                # nil
            else:
                _5004 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])] = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] = 256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1 and mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] or mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 32] and !(256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 576] = address(this.address)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 544] = _5004 + 20
                if not uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5004 + 20])):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5004 + 20]))
                mem[32] = 6
                require uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5004 + 20]))].field_768) <= 3
                if uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5004 + 20]))].field_768):
                    revert with 0, 'Occupied channelId'
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 884] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 916] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 788] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 884
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 820] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 596] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 788
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 628] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 660] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 692] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1236] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1268] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1140] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1236
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1172] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 948] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1140
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 980] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1012] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1044] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1300] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1332] = 96
                mem[64] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1428
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1396] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] = 0
                require var126001
                _14813 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] = 2
                _20578 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                s = _14813
                while 2 < _20578:
                    _20665 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] + 32]
                    mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] + 1
                    mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5004 + 1364] + 1
                    s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                    s = _20665
                    continue 
                revert
        else:
            mem[ceil32(arg1.length) + 544] = 96
            s = ceil32(arg1.length) + 544
            idx = code.data[24206 len 32]
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            mem[ceil32(arg1.length) + 224] = ceil32(arg1.length) + 512
            require 2 < mem[ceil32(arg1.length) + 384]
            mem[ceil32(arg1.length) + 480] = 0
            if not var95001:
                _5873 = mem[64]
                _5874 = mem[mem[ceil32(arg1.length) + 192]]
                mem[mem[64] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])] = mem[mem[ceil32(arg1.length) + 192] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])]
                mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] = 256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] or mem[mem[ceil32(arg1.length) + 192] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] and !(256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1)
                mem[mem[64] + _5874 + 32] = address(this.address)
                _6811 = mem[64]
                mem[mem[64]] = _5873 + _5874 + -mem[64] + 20
                mem[64] = _5873 + _5874 + 52
                if not uint64(sha3(mem[_6811 + 32 len mem[_6811]])):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[_6811 + 32 len mem[_6811]]))
                mem[32] = 6
                require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                if uint8(sub_ba324e64[mem[0]].field_768):
                    revert with 0, 'Occupied channelId'
                mem[64] = _5873 + _5874 + 404
                mem[_5873 + _5874 + 340] = 0
                mem[_5873 + _5874 + 372] = 0
                mem[_5873 + _5874 + 244] = _5873 + _5874 + 340
                mem[_5873 + _5874 + 276] = 96
                mem[_5873 + _5874 + 52] = _5873 + _5874 + 244
                mem[_5873 + _5874 + 84] = 0
                mem[_5873 + _5874 + 116] = 0
                mem[_5873 + _5874 + 148] = 0
                _6990 = mem[ceil32(arg1.length) + 192]
                mem[_5873 + _5874 + 692] = 0
                mem[_5873 + _5874 + 724] = 0
                mem[_5873 + _5874 + 596] = _5873 + _5874 + 692
                mem[_5873 + _5874 + 628] = 96
                mem[_5873 + _5874 + 404] = _5873 + _5874 + 596
                mem[_5873 + _5874 + 436] = 0
                mem[_5873 + _5874 + 468] = 0
                mem[_5873 + _5874 + 500] = 0
                mem[_5873 + _5874 + 756] = 0
                mem[_5873 + _5874 + 788] = 96
                mem[64] = _5873 + _5874 + 884
                mem[_5873 + _5874 + 852] = _6990
                mem[_5873 + _5874 + 820] = 0
                if var130001:
                    _17876 = mem[_6990 + 32]
                    mem[_5873 + _5874 + 820] = 2
                    _22807 = mem[_6990]
                    s = _6990
                    s = _17876
                    while 2 < _22807:
                        _22839 = mem[_6990 + mem[_5873 + _5874 + 820] + 32]
                        mem[_5873 + _5874 + 820] = mem[_5873 + _5874 + 820] + 1
                        mem[_5873 + _5874 + 820] = mem[_5873 + _5874 + 820] + 1
                        s = _6990
                        s = _22839
                        continue 
                require 2 == mem[96]
                if block.number > 0:
                    revert with 0, 'Open deadline passed'
                mem[_5873 + _5874 + 884] = 0
                mem[_5873 + _5874 + 916] = 0
                mem[_5873 + _5874 + 948 len 64] = code.data[24142 len 64]
                mem[64] = _5873 + _5874 + 1076
                require 0 < mem[96]
                mem[_5873 + _5874 + 1012] = mem[mem[128] + 12 len 20]
                require 1 < mem[96]
                mem[_5873 + _5874 + 1044] = mem[mem[160] + 12 len 20]
                if mem[_5873 + _5874 + 1024 len 20] >= mem[_5873 + _5874 + 1056 len 20]:
                    revert with 0, 'Peer addrs are not ascending'
                uint256(sub_ba324e64[mem[0]].field_256) = 0
                uint8(sub_ba324e64[mem[0]].field_768) = 1
                revert
            _9674 = mem[mem[ceil32(arg1.length) + 352] + mem[ceil32(arg1.length) + 320] + 32]
            mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
            mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
            _12152 = mem[mem[ceil32(arg1.length) + 352]]
            _12153 = mem[ceil32(arg1.length) + 320]
            s = mem[ceil32(arg1.length) + 352]
            s = _9674
            while _12153 < _12152:
                _12199 = mem[mem[ceil32(arg1.length) + 352] + mem[ceil32(arg1.length) + 320] + 32]
                mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                s = mem[ceil32(arg1.length) + 352]
                s = _12199
                continue 
            _12182 = mem[64]
            _12183 = mem[mem[ceil32(arg1.length) + 192]]
            mem[mem[64] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])] = mem[mem[ceil32(arg1.length) + 192] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])]
            mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] = 256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] or mem[mem[ceil32(arg1.length) + 192] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] and !(256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1)
            mem[mem[64] + _12183 + 32] = address(this.address)
            _12869 = mem[64]
            mem[mem[64]] = _12183 + 20
            mem[64] = mem[64] + _12183 + 52
            if not uint64(sha3(mem[_12869 + 32 len mem[_12869]])):
                revert with 0, 'channelId gets 0'
            mem[0] = uint64(sha3(mem[_12869 + 32 len mem[_12869]]))
            mem[32] = 6
            require uint8(sub_ba324e64[mem[0]].field_768) <= 3
            if uint8(sub_ba324e64[mem[0]].field_768):
                revert with 0, 'Occupied channelId'
            mem[64] = _12182 + _12183 + 404
            mem[_12182 + _12183 + 340] = 0
            mem[_12182 + _12183 + 372] = 0
            mem[_12182 + _12183 + 244] = _12182 + _12183 + 340
            mem[_12182 + _12183 + 276] = 96
            mem[_12182 + _12183 + 52] = _12182 + _12183 + 244
            mem[_12182 + _12183 + 84] = 0
            mem[_12182 + _12183 + 116] = 0
            mem[_12182 + _12183 + 148] = 0
            _13309 = mem[ceil32(arg1.length) + 192]
            mem[_12182 + _12183 + 692] = 0
            mem[_12182 + _12183 + 724] = 0
            mem[_12182 + _12183 + 596] = _12182 + _12183 + 692
            mem[_12182 + _12183 + 628] = 96
            mem[_12182 + _12183 + 404] = _12182 + _12183 + 596
            mem[_12182 + _12183 + 436] = 0
            mem[_12182 + _12183 + 468] = 0
            mem[_12182 + _12183 + 500] = 0
            mem[_12182 + _12183 + 756] = 0
            mem[_12182 + _12183 + 788] = 96
            mem[_12182 + _12183 + 852] = _13309
            mem[_12182 + _12183 + 820] = 0
            if var160001:
                # nil
            else:
                require 2 == mem[96]
                if block.number > 0:
                    revert with 0, 'Open deadline passed'
                mem[_12182 + _12183 + 884] = 0
                mem[_12182 + _12183 + 916] = 0
                mem[_12182 + _12183 + 948 len 64] = code.data[24142 len 64]
                mem[64] = _12182 + _12183 + 1076
                require 0 < mem[96]
                mem[_12182 + _12183 + 1012] = mem[mem[128] + 12 len 20]
                require 1 < mem[96]
                mem[_12182 + _12183 + 1044] = mem[mem[160] + 12 len 20]
                if mem[_12182 + _12183 + 1024 len 20] >= mem[_12182 + _12183 + 1056 len 20]:
                    revert with 0, 'Peer addrs are not ascending'
                uint256(sub_ba324e64[mem[0]].field_256) = 0
                uint8(sub_ba324e64[mem[0]].field_768) = 1
                revert
    else:
        mem[ceil32(arg1.length) + 320] = 0
        mem[ceil32(arg1.length) + 512] = code.data[24206 len 32]
        mem[64] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 544
        if not code.data[24206 len 32]:
            mem[ceil32(arg1.length) + 224] = ceil32(arg1.length) + 512
            mem[ceil32(arg1.length) + 480] = 0
            if not var62001:
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])] = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] = 256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1 and mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] or mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 32] and !(256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 672] = address(this.address)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 544] = 116
                if not uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len 96], this.address)):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len 96], this.address))
                mem[32] = 6
                require uint8(sub_ba324e64[uint64(('map', ('mem', ('range', ('add', 576, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('code.data', 24206, 32))), 96)), 'address'))].field_768) <= 3
                if uint8(sub_ba324e64[uint64(('map', ('mem', ('range', ('add', 576, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mul', 32, ('code.data', 24206, 32))), 96)), 'address'))].field_768):
                    revert with 0, 'Occupied channelId'
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 980] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1012] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 884] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 980
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 916] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 692] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 884
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 724] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 756] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 788] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1332] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1364] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1236] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1332
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1268] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1044] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1236
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1076] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1108] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1140] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1396] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1428] = 96
                mem[64] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1524
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1492] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] = 0
                if var97001:
                    _8045 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32]
                    mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] = 2
                    _10722 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                    s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                    s = _8045
                    while 2 < _10722:
                        _10845 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] + 32]
                        mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] + 1
                        mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 1460] + 1
                        s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                        s = _10845
                        continue 
            else:
                mem[ceil32(arg1.length) + 320] = 2
                s = 160
                s = mem[192]
                while 2 < arg1.length:
                    _5192 = mem[mem[ceil32(arg1.length) + 320] + 192]
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    s = 160
                    s = _5192
                    continue 
                _5178 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])] = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]])]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] = 256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1 and mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 576] or mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + floor32(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]) + 32] and !(256^(-(mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]] % 32) + 32) - 1)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 576] = address(this.address)
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 544] = _5178 + 20
                if not uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5178 + 20])):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5178 + 20]))
                mem[32] = 6
                require uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5178 + 20]))].field_768) <= 3
                if uint8(sub_ba324e64[uint64(sha3(mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + 576 len _5178 + 20]))].field_768):
                    revert with 0, 'Occupied channelId'
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 884] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 916] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 788] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 884
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 820] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 596] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 788
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 628] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 660] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 692] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1236] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1268] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1140] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1236
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1172] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 948] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1140
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 980] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1012] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1044] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1300] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1332] = 96
                mem[64] = ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1428
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1396] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] = 0
                if var127001:
                    _14810 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + 32]
                    mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] = 2
                    _20511 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]]
                    s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                    s = _14810
                    while 2 < _20511:
                        _20658 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)] + mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] + 32]
                        mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] + 1
                        mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] = mem[ceil32(arg1.length) + (32 * code.data[24206 len 32]) + _5178 + 1364] + 1
                        s = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 224 len -arg1.length + ceil32(arg1.length)]
                        s = _20658
                        continue 
            revert
        mem[ceil32(arg1.length) + 544] = 96
        s = ceil32(arg1.length) + 544
        idx = code.data[24206 len 32]
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        mem[ceil32(arg1.length) + 224] = ceil32(arg1.length) + 512
        if 2 < mem[ceil32(arg1.length) + 384]:
            mem[ceil32(arg1.length) + 480] = 0
            if not var66001:
                _2937 = mem[64]
                _2938 = mem[mem[ceil32(arg1.length) + 192]]
                mem[mem[64] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])] = mem[mem[ceil32(arg1.length) + 192] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])]
                mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] = 256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] or mem[mem[ceil32(arg1.length) + 192] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] and !(256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1)
                mem[mem[64] + _2938 + 32] = address(this.address)
                _3651 = mem[64]
                mem[mem[64]] = _2937 + _2938 + -mem[64] + 20
                mem[64] = _2937 + _2938 + 52
                if not uint64(sha3(mem[_3651 + 32 len mem[_3651]])):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[_3651 + 32 len mem[_3651]]))
                mem[32] = 6
                if uint8(sub_ba324e64[mem[0]].field_768) <= 3:
                    if uint8(sub_ba324e64[mem[0]].field_768):
                        revert with 0, 'Occupied channelId'
                    mem[64] = _2937 + _2938 + 404
                    mem[_2937 + _2938 + 340] = 0
                    mem[_2937 + _2938 + 372] = 0
                    mem[_2937 + _2938 + 244] = _2937 + _2938 + 340
                    mem[_2937 + _2938 + 276] = 96
                    mem[_2937 + _2938 + 52] = _2937 + _2938 + 244
                    mem[_2937 + _2938 + 84] = 0
                    mem[_2937 + _2938 + 116] = 0
                    mem[_2937 + _2938 + 148] = 0
                    _3717 = mem[ceil32(arg1.length) + 192]
                    mem[_2937 + _2938 + 692] = 0
                    mem[_2937 + _2938 + 724] = 0
                    mem[_2937 + _2938 + 596] = _2937 + _2938 + 692
                    mem[_2937 + _2938 + 628] = 96
                    mem[_2937 + _2938 + 404] = _2937 + _2938 + 596
                    mem[_2937 + _2938 + 436] = 0
                    mem[_2937 + _2938 + 468] = 0
                    mem[_2937 + _2938 + 500] = 0
                    mem[_2937 + _2938 + 756] = 0
                    mem[_2937 + _2938 + 788] = 96
                    mem[64] = _2937 + _2938 + 884
                    mem[_2937 + _2938 + 852] = _3717
                    mem[_2937 + _2938 + 820] = 0
                    if var101001:
                        _9665 = mem[_3717 + 32]
                        mem[_2937 + _2938 + 820] = 2
                        _12163 = mem[_3717]
                        s = _3717
                        s = _9665
                        while 2 < _12163:
                            _12220 = mem[_3717 + mem[_2937 + _2938 + 820] + 32]
                            mem[_2937 + _2938 + 820] = mem[_2937 + _2938 + 820] + 1
                            mem[_2937 + _2938 + 820] = mem[_2937 + _2938 + 820] + 1
                            s = _3717
                            s = _12220
                            continue 
                    require 2 == mem[96]
                    if block.number > 0:
                        revert with 0, 'Open deadline passed'
                    mem[_2937 + _2938 + 884] = 0
                    mem[_2937 + _2938 + 916] = 0
                    mem[_2937 + _2938 + 948 len 64] = code.data[24142 len 64]
                    mem[64] = _2937 + _2938 + 1076
                    if 0 < mem[96]:
                        mem[_2937 + _2938 + 1012] = mem[mem[128] + 12 len 20]
                        if 1 < mem[96]:
                            mem[_2937 + _2938 + 1044] = mem[mem[160] + 12 len 20]
                            if mem[_2937 + _2938 + 1024 len 20] >= mem[_2937 + _2938 + 1056 len 20]:
                                revert with 0, 'Peer addrs are not ascending'
                            uint256(sub_ba324e64[mem[0]].field_256) = 0
                            uint8(sub_ba324e64[mem[0]].field_768) = 1
            else:
                _4994 = mem[mem[ceil32(arg1.length) + 352] + mem[ceil32(arg1.length) + 320] + 32]
                mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                _5979 = mem[mem[ceil32(arg1.length) + 352]]
                _5980 = mem[ceil32(arg1.length) + 320]
                s = mem[ceil32(arg1.length) + 352]
                s = _4994
                while _5980 < _5979:
                    _6012 = mem[mem[ceil32(arg1.length) + 352] + mem[ceil32(arg1.length) + 320] + 32]
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    mem[ceil32(arg1.length) + 320] = mem[ceil32(arg1.length) + 320] + 1
                    s = mem[ceil32(arg1.length) + 352]
                    s = _6012
                    continue 
                _5996 = mem[64]
                _5997 = mem[mem[ceil32(arg1.length) + 192]]
                mem[mem[64] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])] = mem[mem[ceil32(arg1.length) + 192] + 32 len floor32(mem[mem[ceil32(arg1.length) + 192]])]
                mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] = 256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] or mem[mem[ceil32(arg1.length) + 192] + floor32(mem[mem[ceil32(arg1.length) + 192]]) + 32] and !(256^(-(mem[mem[ceil32(arg1.length) + 192]] % 32) + 32) - 1)
                mem[mem[64] + _5997 + 32] = address(this.address)
                _6799 = mem[64]
                mem[mem[64]] = _5997 + 20
                mem[64] = mem[64] + _5997 + 52
                if not uint64(sha3(mem[_6799 + 32 len mem[_6799]])):
                    revert with 0, 'channelId gets 0'
                mem[0] = uint64(sha3(mem[_6799 + 32 len mem[_6799]]))
                mem[32] = 6
                if uint8(sub_ba324e64[mem[0]].field_768) <= 3:
                    if uint8(sub_ba324e64[mem[0]].field_768):
                        revert with 0, 'Occupied channelId'
                    mem[64] = _5996 + _5997 + 404
                    mem[_5996 + _5997 + 340] = 0
                    mem[_5996 + _5997 + 372] = 0
                    mem[_5996 + _5997 + 244] = _5996 + _5997 + 340
                    mem[_5996 + _5997 + 276] = 96
                    mem[_5996 + _5997 + 52] = _5996 + _5997 + 244
                    mem[_5996 + _5997 + 84] = 0
                    mem[_5996 + _5997 + 116] = 0
                    mem[_5996 + _5997 + 148] = 0
                    _6985 = mem[ceil32(arg1.length) + 192]
                    mem[_5996 + _5997 + 692] = 0
                    mem[_5996 + _5997 + 724] = 0
                    mem[_5996 + _5997 + 596] = _5996 + _5997 + 692
                    mem[_5996 + _5997 + 628] = 96
                    mem[_5996 + _5997 + 404] = _5996 + _5997 + 596
                    mem[_5996 + _5997 + 436] = 0
                    mem[_5996 + _5997 + 468] = 0
                    mem[_5996 + _5997 + 500] = 0
                    mem[_5996 + _5997 + 756] = 0
                    mem[_5996 + _5997 + 788] = 96
                    mem[64] = _5996 + _5997 + 884
                    mem[_5996 + _5997 + 852] = _6985
                    mem[_5996 + _5997 + 820] = 0
                    if var131001:
                        _17873 = mem[_6985 + 32]
                        mem[_5996 + _5997 + 820] = 2
                        _22804 = mem[_6985]
                        s = _6985
                        s = _17873
                        while 2 < _22804:
                            _22835 = mem[_6985 + mem[_5996 + _5997 + 820] + 32]
                            mem[_5996 + _5997 + 820] = mem[_5996 + _5997 + 820] + 1
                            mem[_5996 + _5997 + 820] = mem[_5996 + _5997 + 820] + 1
                            s = _6985
                            s = _22835
                            continue 
                    require 2 == mem[96]
                    if block.number > 0:
                        revert with 0, 'Open deadline passed'
                    mem[_5996 + _5997 + 884] = 0
                    mem[_5996 + _5997 + 916] = 0
                    mem[_5996 + _5997 + 948 len 64] = code.data[24142 len 64]
                    mem[64] = _5996 + _5997 + 1076
                    if 0 < mem[96]:
                        mem[_5996 + _5997 + 1012] = mem[mem[128] + 12 len 20]
                        if 1 < mem[96]:
                            mem[_5996 + _5997 + 1044] = mem[mem[160] + 12 len 20]
                            if mem[_5996 + _5997 + 1024 len 20] >= mem[_5996 + _5997 + 1056 len 20]:
                                revert with 0, 'Peer addrs are not ascending'
                            uint256(sub_ba324e64[mem[0]].field_256) = 0
                            uint8(sub_ba324e64[mem[0]].field_768) = 1
        revert
}

function sub_2fcaf13e(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[32] = 6
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 2:
        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if sub_ba324e64[arg1 << 192].field_1024 == arg2:
        mem[96 len arg3.length] = arg3[all]
        if uint256(sub_ba324e64[arg1 << 192].field_2304) != sha3(arg3[all]):
            revert with 0, 'List hash mismatch'
        mem[96] = 96
        mem[128] = 0
        mem[160] = arg3.length
        mem[192 len arg3.length] = arg3[all]
        mem[arg3.length + 192] = 0
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = 0
        mem[ceil32(arg3.length) + 256] = 0
        mem[ceil32(arg3.length) + 288] = 96
        mem[ceil32(arg3.length) + 352] = 160
        mem[ceil32(arg3.length) + 384] = 3
        mem[ceil32(arg3.length) + 416 len 96] = code.data[24142 len 96]
        if not var59001:
            mem[ceil32(arg3.length) + 320] = 0
            mem[ceil32(arg3.length) + 512] = code.data[24174 len 32]
            mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544
            if not code.data[24174 len 32]:
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var71001:
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    mem[0] = arg1
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _1790 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _2104 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _2104:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 544]
                        _2136 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _2170 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 544]
                        _2198 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _2170
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _2198
                        emit 0xc7b07c21: arg1 << 192, _2170, sub_ba324e64[arg1 << 192].field_1024, _2198
                        _2104 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1790 + 544]
                        idx = idx + 1
                        s = _2136 + s
                        continue 
                    require (_2136 * _2104) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _2136 * _2104
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _2823 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _2823
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    _2820 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _2846 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _2846) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3026 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3226 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3226:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 544]
                        _3254 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 576] + s >= s
                        require idx < mem[_2820]
                        _3274 = mem[(32 * idx) + _2820 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 544]
                        _3298 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3274
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3298
                        emit 0xc7b07c21: arg1 << 192, _3274, sub_ba324e64[arg1 << 192].field_1024, _3298
                        _3226 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3026 + 544]
                        idx = idx + 1
                        s = _3254 + s
                        continue 
                    require (_3254 * _3226) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3254 * _3226
            else:
                mem[ceil32(arg3.length) + 544 len 32 * code.data[24174 len 32]] = code.data[24142 len 32 * code.data[24174 len 32]]
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var72001:
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    mem[0] = arg1
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _1791 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _2105 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _2105:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 544]
                        _2137 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _2171 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 544]
                        _2201 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _2171
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _2201
                        emit 0xc7b07c21: arg1 << 192, _2171, sub_ba324e64[arg1 << 192].field_1024, _2201
                        _2105 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1791 + 544]
                        idx = idx + 1
                        s = _2137 + s
                        continue 
                    require (_2137 * _2105) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _2137 * _2105
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _2827 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _2827
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    _2824 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _2849 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _2849) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3027 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3227 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3227:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 544]
                        _3255 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 576] + s >= s
                        require idx < mem[_2824]
                        _3275 = mem[(32 * idx) + _2824 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 544]
                        _3301 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3275
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3301
                        emit 0xc7b07c21: arg1 << 192, _3275, sub_ba324e64[arg1 << 192].field_1024, _3301
                        _3227 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3027 + 544]
                        idx = idx + 1
                        s = _3255 + s
                        continue 
                    require (_3255 * _3227) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3255 * _3227
        else:
            require 0 < 3
            mem[ceil32(arg3.length) + 416] = code.data[24142 len 32] + 1
            mem[ceil32(arg3.length) + 320] = 2
            s = 160
            s = mem[192]
            while 2 < arg3.length:
                _1893 = mem[mem[ceil32(arg3.length) + 320] + 192]
                mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                require 0 < 3
                mem[ceil32(arg3.length) + 416] = mem[ceil32(arg3.length) + 416] + 1
                mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                s = 160
                s = _1893
                continue 
            mem[ceil32(arg3.length) + 320] = 0
            mem[ceil32(arg3.length) + 512] = code.data[24174 len 32]
            mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544
            if not code.data[24174 len 32]:
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var100001:
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3028 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3228 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3228:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 544]
                        _3256 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _3276 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 544]
                        _3304 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3276
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3304
                        emit 0xc7b07c21: arg1 << 192, _3276, sub_ba324e64[arg1 << 192].field_1024, _3304
                        _3228 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3028 + 544]
                        idx = idx + 1
                        s = _3256 + s
                        continue 
                    require (_3256 * _3228) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3256 * _3228
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _3601 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _3601
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    _3598 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _3618 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _3618) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3692 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3736 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3736:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 544]
                        _3744 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 576] + s >= s
                        require idx < mem[_3598]
                        _3752 = mem[(32 * idx) + _3598 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 544]
                        _3764 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3752
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3764
                        emit 0xc7b07c21: arg1 << 192, _3752, sub_ba324e64[arg1 << 192].field_1024, _3764
                        _3736 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3692 + 544]
                        idx = idx + 1
                        s = _3744 + s
                        continue 
                    require (_3744 * _3736) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3744 * _3736
            else:
                mem[ceil32(arg3.length) + 544 len 32 * code.data[24174 len 32]] = code.data[24142 len 32 * code.data[24174 len 32]]
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var101001:
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3029 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3229 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3229:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 544]
                        _3257 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _3277 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 544]
                        _3307 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3277
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3307
                        emit 0xc7b07c21: arg1 << 192, _3277, sub_ba324e64[arg1 << 192].field_1024, _3307
                        _3229 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3029 + 544]
                        idx = idx + 1
                        s = _3257 + s
                        continue 
                    require (_3257 * _3229) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3257 * _3229
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _3605 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _3605
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    _3602 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_2560)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _3621 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_2560), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _3621) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3693 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3737 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3737:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 544]
                        _3745 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 576] + s >= s
                        require idx < mem[_3602]
                        _3753 = mem[(32 * idx) + _3602 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 544]
                        _3767 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3753
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 96] = _3767
                        emit 0xc7b07c21: arg1 << 192, _3753, sub_ba324e64[arg1 << 192].field_1024, _3767
                        _3737 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3693 + 544]
                        idx = idx + 1
                        s = _3745 + s
                        continue 
                    require (_3745 * _3737) + uint256(sub_ba324e64[arg1 << 192].field_2048) >= uint256(sub_ba324e64[arg1 << 192].field_2048)
                    uint256(sub_ba324e64[arg1 << 192].field_2048) += _3745 * _3737
    else:
        if sub_ba324e64[arg1 << 192].field_2816 != arg2:
            revert with 0, 'Nonexist peer'
        mem[96 len arg3.length] = arg3[all]
        if uint256(sub_ba324e64[arg1 << 192].field_4096) != sha3(arg3[all]):
            revert with 0, 'List hash mismatch'
        mem[96] = 96
        mem[128] = 0
        mem[160] = arg3.length
        mem[192 len arg3.length] = arg3[all]
        mem[arg3.length + 192] = 0
        mem[ceil32(arg3.length) + 192] = 96
        mem[ceil32(arg3.length) + 224] = 0
        mem[ceil32(arg3.length) + 256] = 0
        mem[ceil32(arg3.length) + 288] = 96
        mem[ceil32(arg3.length) + 352] = 160
        mem[ceil32(arg3.length) + 384] = 3
        mem[ceil32(arg3.length) + 416 len 96] = code.data[24142 len 96]
        if not var60001:
            mem[ceil32(arg3.length) + 320] = 0
            mem[ceil32(arg3.length) + 512] = code.data[24174 len 32]
            mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544
            if not code.data[24174 len 32]:
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var72001:
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    mem[0] = arg1
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _1788 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _2102 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _2102:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 544]
                        _2134 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _2166 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 544]
                        _2190 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _2166
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _2190
                        emit 0xc7b07c21: arg1 << 192, _2166, sub_ba324e64[arg1 << 192].field_2816, _2190
                        _2102 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1788 + 544]
                        idx = idx + 1
                        s = _2134 + s
                        continue 
                    require (_2134 * _2102) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _2134 * _2102
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _2809 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _2809
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    _2806 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _2840 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _2840) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3022 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3222 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3222:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 544]
                        _3250 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 576] + s >= s
                        require idx < mem[_2806]
                        _3270 = mem[(32 * idx) + _2806 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 544]
                        _3286 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3270
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3286
                        emit 0xc7b07c21: arg1 << 192, _3270, sub_ba324e64[arg1 << 192].field_2816, _3286
                        _3222 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3022 + 544]
                        idx = idx + 1
                        s = _3250 + s
                        continue 
                    require (_3250 * _3222) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3250 * _3222
            else:
                mem[ceil32(arg3.length) + 544 len 32 * code.data[24174 len 32]] = code.data[24142 len 32 * code.data[24174 len 32]]
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var73001:
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    mem[0] = arg1
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _1789 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _2103 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _2103:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 544]
                        _2135 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _2167 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 544]
                        _2193 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _2167
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _2193
                        emit 0xc7b07c21: arg1 << 192, _2167, sub_ba324e64[arg1 << 192].field_2816, _2193
                        _2103 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _1789 + 544]
                        idx = idx + 1
                        s = _2135 + s
                        continue 
                    require (_2135 * _2103) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _2135 * _2103
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _2813 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _2813
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    _2810 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _2843 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _2843) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3023 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3223 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3223:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 544]
                        _3251 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 576] + s >= s
                        require idx < mem[_2810]
                        _3271 = mem[(32 * idx) + _2810 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 544]
                        _3289 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3271
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3289
                        emit 0xc7b07c21: arg1 << 192, _3271, sub_ba324e64[arg1 << 192].field_2816, _3289
                        _3223 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3023 + 544]
                        idx = idx + 1
                        s = _3251 + s
                        continue 
                    require (_3251 * _3223) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3251 * _3223
        else:
            require 0 < 3
            mem[ceil32(arg3.length) + 416] = code.data[24142 len 32] + 1
            mem[ceil32(arg3.length) + 320] = 2
            s = 160
            s = mem[192]
            while 2 < arg3.length:
                _1882 = mem[mem[ceil32(arg3.length) + 320] + 192]
                mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                require 0 < 3
                mem[ceil32(arg3.length) + 416] = mem[ceil32(arg3.length) + 416] + 1
                mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                s = 160
                s = _1882
                continue 
            mem[ceil32(arg3.length) + 320] = 0
            mem[ceil32(arg3.length) + 512] = code.data[24174 len 32]
            mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544
            if not code.data[24174 len 32]:
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var101001:
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3024 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3224 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3224:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 544]
                        _3252 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _3272 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 544]
                        _3292 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3272
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3292
                        emit 0xc7b07c21: arg1 << 192, _3272, sub_ba324e64[arg1 << 192].field_2816, _3292
                        _3224 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3024 + 544]
                        idx = idx + 1
                        s = _3252 + s
                        continue 
                    require (_3252 * _3224) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3252 * _3224
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _3593 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _3593
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    _3590 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _3612 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _3612) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3690 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3734 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3734:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 544]
                        _3742 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 576] + s >= s
                        require idx < mem[_3590]
                        _3750 = mem[(32 * idx) + _3590 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 544]
                        _3758 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3750
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3758
                        emit 0xc7b07c21: arg1 << 192, _3750, sub_ba324e64[arg1 << 192].field_2816, _3758
                        _3734 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3690 + 544]
                        idx = idx + 1
                        s = _3742 + s
                        continue 
                    require (_3742 * _3734) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3742 * _3734
            else:
                mem[ceil32(arg3.length) + 544 len 32 * code.data[24174 len 32]] = code.data[24142 len 32 * code.data[24174 len 32]]
                mem[ceil32(arg3.length) + 192] = ceil32(arg3.length) + 512
                mem[ceil32(arg3.length) + 448] = 0
                if not var102001:
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = code.data[24174 len 32]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(code.data[24174 len 32])] = mem[ceil32(arg3.length) + 544 len floor32(code.data[24174 len 32])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * code.data[24174 len 32]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3025 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3225 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3225:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 544]
                        _3253 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 576] + s >= s
                        require idx < mem[ceil32(arg3.length) + 512]
                        _3273 = mem[(32 * idx) + ceil32(arg3.length) + 544]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 544]
                        _3295 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3273
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3295
                        emit 0xc7b07c21: arg1 << 192, _3273, sub_ba324e64[arg1 << 192].field_2816, _3295
                        _3225 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3025 + 544]
                        idx = idx + 1
                        s = _3253 + s
                        continue 
                    require (_3253 * _3225) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3253 * _3225
                else:
                    mem[ceil32(arg3.length) + 320] = 2
                    s = 160
                    s = mem[192]
                    while 2 < arg3.length:
                        _3597 = mem[mem[ceil32(arg3.length) + 320] + 192]
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        mem[ceil32(arg3.length) + 320] = mem[ceil32(arg3.length) + 320] + 1
                        s = 160
                        s = _3597
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    _3594 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]
                    mem[0] = arg1
                    mem[32] = 6
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544] = 0x7cac39cf00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 580] = uint256(sub_ba324e64[arg1 << 192].field_4352)
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 548] = 64
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    _3615 = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 644 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])] = mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)] + 32 len floor32(mem[Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 224 len -arg3.length + ceil32(arg3.length)]])]
                    require ext_code.size(sub_53fc513fAddress)
                    staticcall sub_53fc513fAddress.0x7cac39cf with:
                            gas gas_remaining wei
                           args 64, uint256(sub_ba324e64[arg1 << 192].field_4352), mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 612 len (32 * _3615) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(arg3.length) + (32 * code.data[24174 len 32]) + ceil32(return_data.size) + 544
                    require return_data.size >= 32
                    _3691 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 <= 4294967296
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 32 <= return_data.size
                    require mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544] <= 4294967296 and mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + (32 * mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]) + 32 <= return_data.size
                    _3735 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + 544 len 4], 0 + 544]
                    idx = 0
                    s = 0
                    while idx < _3735:
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 544]
                        _3743 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 576]
                        require mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 576] + s >= s
                        require idx < mem[_3594]
                        _3751 = mem[(32 * idx) + _3594 + 32]
                        require idx < mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 544]
                        _3761 = mem[(32 * idx) + ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 576]
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = _3751
                        mem[mem[64] + 64] = sub_ba324e64[arg1 << 192].field_2816
                        mem[mem[64] + 96] = _3761
                        emit 0xc7b07c21: arg1 << 192, _3751, sub_ba324e64[arg1 << 192].field_2816, _3761
                        _3735 = mem[ceil32(arg3.length) + (32 * code.data[24174 len 32]) + _3691 + 544]
                        idx = idx + 1
                        s = _3743 + s
                        continue 
                    require (_3743 * _3735) + uint256(sub_ba324e64[arg1 << 192].field_3840) >= uint256(sub_ba324e64[arg1 << 192].field_3840)
                    uint256(sub_ba324e64[arg1 << 192].field_3840) += _3743 * _3735
}

function sub_4102b9a8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 96
    mem[128] = arg1.length
    mem[160 len arg1.length] = arg1[all]
    mem[arg1.length + 160] = 0
    mem[ceil32(arg1.length) + 160] = 96
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 96
    mem[ceil32(arg1.length) + 288] = 128
    mem[ceil32(arg1.length) + 320] = 2
    mem[ceil32(arg1.length) + 352 len 64] = code.data[24142 len 64]
    if var51001:
        require 0 < 2
        mem[ceil32(arg1.length) + 352] = code.data[24142 len 32] + 1
        mem[ceil32(arg1.length) + 256] = 2
        s = 128
        s = mem[160]
        while 2 < arg1.length:
            _2640 = mem[mem[ceil32(arg1.length) + 256] + 160]
            mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
            require 0 < 2
            mem[ceil32(arg1.length) + 352] = mem[ceil32(arg1.length) + 352] + 1
            mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
            s = 128
            s = _2640
            continue 
        mem[ceil32(arg1.length) + 256] = 0
        mem[ceil32(arg1.length) + 416] = code.data[24174 len 32]
        if not code.data[24174 len 32]:
            mem[ceil32(arg1.length) + 160] = ceil32(arg1.length) + 416
            mem[ceil32(arg1.length) + 384] = 0
            if var91001:
                mem[ceil32(arg1.length) + 256] = 2
                s = 128
                s = mem[160]
                while 2 < arg1.length:
                    _8021 = mem[mem[ceil32(arg1.length) + 256] + 160]
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    s = 128
                    s = _8021
                    continue 
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 928] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 992] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 800] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 544] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768
                mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1056] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 576] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 608] = 0
                require 0 < mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 192 len -arg1.length + ceil32(arg1.length)]]
                # nil
            else:
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 928] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 992] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 800] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 544] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768
                mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1056] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 576] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 608] = 0
                require 0 < code.data[24174 len 32]
                _4377 = mem[mem[ceil32(arg1.length) + 448]]
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1120] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1152] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1568] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1632] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1440] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1184] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1696] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1216] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1248] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1728] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1760] = 96
                mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1856
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1824] = _4377
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 0
                if not var132001:
                    idx = 0
                    s = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                    while idx < code.data[24174 len 32]:
                        _9711 = mem[s]
                        mem[0] = mem[s + 24 len 8]
                        mem[32] = 6
                        _9712 = sha3(mem[0], 6)
                        require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                        if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                            revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _9787 = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        u = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + 32
                        v = mem[64]
                        t = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])])
                        _10712 = sha3(mem[mem[64] len _9787])
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _10733 = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]
                        if mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                            revert with 0, 'Check co-sigs failed'
                        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                        mem[mem[64] + 60] = _10712
                        _10796 = mem[64]
                        mem[mem[64]] = 60
                        mem[64] = mem[64] + 92
                        _10798 = sha3(mem[_10796 + 32 len mem[_10796]])
                        t = 0
                        while t < 2:
                            require t < mem[_10733]
                            if mem[mem[(32 * t) + _10733 + 32]] != 65:
                                require t < 2
                                if stor[(7 * t) + _9712 + 4]:
                                    revert with 0, 'Check co-sigs failed'
                            else:
                                _11939 = mem[mem[(32 * t) + _10733 + 32] + 32]
                                _11940 = mem[mem[(32 * t) + _10733 + 32] + 64]
                                _11941 = mem[mem[(32 * t) + _10733 + 32] + 96]
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) - 256 >= 27:
                                    require t < 2
                                    if stor[(7 * t) + _9712 + 4]:
                                        revert with 0, 'Check co-sigs failed'
                                else:
                                    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) - 256) + 27):
                                        _12031 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_12031 + 32] = _10798
                                        mem[_12031 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11941')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11941')), 0) - 256) + 27)
                                        mem[_12031 + 96] = _11939
                                        mem[_12031 + 128] = _11940
                                        signer = erecover(_10798, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11941')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11941')), 0) - 256) + 27 << 248, _11939, _11940) 
                                        mem[_12031] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require t < 2
                                        if stor[(7 * t) + _9712 + 4] != address(signer):
                                            revert with 0, 'Check co-sigs failed'
                                    else:
                                        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10733')), 32))), 32))), 0) - 256) + 27) != 28:
                                            require t < 2
                                            if stor[(7 * t) + _9712 + 4]:
                                                revert with 0, 'Check co-sigs failed'
                                        else:
                                            _12056 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_12056 + 32] = _10798
                                            mem[_12056 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11941')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11941')), 0) - 256) + 27)
                                            mem[_12056 + 96] = _11939
                                            mem[_12056 + 128] = _11940
                                            signer = erecover(_10798, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11941')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11941')), 0) - 256) + 27 << 248, _11939, _11940) 
                                            mem[_12056] = signer
                                            if not erecover.result:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require t < 2
                                            if stor[(7 * t) + _9712 + 4] != address(signer):
                                                revert with 0, 'Check co-sigs failed'
                            t = t + 1
                            continue 
                        if address(depositLimits[_9712]) == mem[s + 44 len 20]:
                            if mem[s + 64] <= stor7[_9712]:
                                revert with 0, 'lseqNum error'
                            stor7[_9712] = mem[s + 64]
                            stor8[_9712] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx != code.data[24174 len 32] - 1:
                                require idx < code.data[24174 len 32] - 1
                                require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                                # nil
                            else:
                                _12219 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12219 len 64] = code.data[24142 len 64]
                                _12266 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12266] = stor7[_9712]
                                mem[_12266 + 32] = stor14[_9712]
                                _12311 = mem[64]
                                mem[mem[64]] = uint64(_9711)
                                t = 0
                                while t < 64:
                                    mem[t + _12311 + 32] = mem[t + _12266]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _12311 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if stor11[_9712] != mem[s + 44 len 20]:
                                revert with 0, 'Nonexist peer'
                            if mem[s + 64] <= stor14[_9712]:
                                revert with 0, 'lseqNum error'
                            stor14[_9712] = mem[s + 64]
                            stor15[_9712] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx != code.data[24174 len 32] - 1:
                                require idx < code.data[24174 len 32] - 1
                                require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                                # nil
                            else:
                                _12265 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12265 len 64] = code.data[24142 len 64]
                                _12309 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12309] = stor7[_9712]
                                mem[_12309 + 32] = stor14[_9712]
                                _12335 = mem[64]
                                mem[mem[64]] = uint64(_9711)
                                t = 0
                                while t < 64:
                                    mem[t + _12335 + 32] = mem[t + _12309]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _12335 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                _9688 = mem[_4377 + 32]
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 2
                _11278 = mem[_4377]
                s = _4377
                s = _9688
                while 2 < _11278:
                    _11323 = mem[_4377 + mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 32]
                    mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                    mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                    s = _4377
                    s = _11323
                    continue 
                # nil
        else:
            mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 96
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 96
            mem[var64001] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448
            s = var64001
            idx = var64002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 96
                mem[s + 32] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448
                s = s + 32
                idx = idx - 1
                continue 
            mem[ceil32(arg1.length) + 160] = ceil32(arg1.length) + 416
            require 1 < mem[ceil32(arg1.length) + 320]
            mem[ceil32(arg1.length) + 384] = 0
            if var98001:
                _8531 = mem[mem[ceil32(arg1.length) + 288] + mem[ceil32(arg1.length) + 256] + 32]
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                _10085 = mem[mem[ceil32(arg1.length) + 288]]
                _10086 = mem[ceil32(arg1.length) + 256]
                s = mem[ceil32(arg1.length) + 288]
                s = _8531
                while _10086 < _10085:
                    _10189 = mem[mem[ceil32(arg1.length) + 288] + mem[ceil32(arg1.length) + 256] + 32]
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    s = mem[ceil32(arg1.length) + 288]
                    s = _10189
                    continue 
                _10167 = mem[ceil32(arg1.length) + 416]
                _10186 = mem[64]
                mem[64] = mem[64] + 320
                mem[_10186] = 0
                mem[_10186 + 32] = 0
                mem[_10186 + 64] = 0
                _10195 = mem[64]
                mem[64] = mem[64] + 128
                _10204 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10204] = 0
                mem[_10204 + 32] = 0
                mem[_10195] = _10204
                _10253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10253] = 0
                mem[_10253 + 32] = 0
                mem[_10195 + 32] = _10253
                mem[_10186 + 96] = _10195
                _10291 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10291] = 96
                mem[_10291 + 32] = 0
                mem[_10186 + 128] = _10291
                mem[_10186 + 160] = 0
                require 0 < mem[ceil32(arg1.length) + 416]
                _10334 = mem[mem[ceil32(arg1.length) + 448]]
                _10372 = mem[64]
                mem[64] = mem[64] + 320
                mem[_10372] = 0
                mem[_10372 + 32] = 0
                mem[_10372 + 64] = 0
                _10378 = mem[64]
                mem[64] = mem[64] + 128
                _10402 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10402] = 0
                mem[_10402 + 32] = 0
                mem[_10378] = _10402
                _10423 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10423] = 0
                mem[_10423 + 32] = 0
                mem[_10378 + 32] = _10423
                mem[_10372 + 96] = _10378
                mem[_10372 + 128] = mem[64]
                mem[_10372 + 160] = 0
                mem[mem[64] + 32] = _10334
                mem[mem[64]] = 0
                if var168001:
                    # nil
                else:
                    if 0 >= _10167:
                    require uint8(sub_ba324e64[0].field_768) <= 3
                    if uint8(sub_ba324e64[0].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require 0 < mem[ceil32(arg1.length) + 416]
                    # nil
            else:
                _5828 = mem[ceil32(arg1.length) + 416]
                _5837 = mem[64]
                mem[64] = mem[64] + 320
                mem[_5837] = 0
                mem[_5837 + 32] = 0
                mem[_5837 + 64] = 0
                _5852 = mem[64]
                mem[64] = mem[64] + 128
                _5862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5862] = 0
                mem[_5862 + 32] = 0
                mem[_5852] = _5862
                _5891 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5891] = 0
                mem[_5891 + 32] = 0
                mem[_5852 + 32] = _5891
                mem[_5837 + 96] = _5852
                _5922 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5922] = 96
                mem[_5922 + 32] = 0
                mem[_5837 + 128] = _5922
                mem[_5837 + 160] = 0
                require 0 < mem[ceil32(arg1.length) + 416]
                _5946 = mem[mem[ceil32(arg1.length) + 448]]
                _5960 = mem[64]
                mem[64] = mem[64] + 320
                mem[_5960] = 0
                mem[_5960 + 32] = 0
                mem[_5960 + 64] = 0
                _5980 = mem[64]
                mem[64] = mem[64] + 128
                _5988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5988] = 0
                mem[_5988 + 32] = 0
                mem[_5980] = _5988
                _6001 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6001] = 0
                mem[_6001 + 32] = 0
                mem[_5980 + 32] = _6001
                mem[_5960 + 96] = _5980
                _6034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6034] = 96
                mem[_6034 + 32] = 0
                mem[_5960 + 128] = _6034
                mem[_5960 + 160] = 0
                _6077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6077] = 0
                mem[_6077 + 32] = 96
                _6115 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6115 + 32] = _5946
                mem[_6115] = 0
                if not var139001:
                    if var167001 >= _5828:
                    mem[0] = mem[var167002 + 24 len 8]
                    mem[32] = 6
                    require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                    if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require var167001 < mem[ceil32(arg1.length) + 416]
                    mem[mem[64] len floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]])] = mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]] + 32 len floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]])]
                    mem[mem[64] + floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]]) + -(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32) + 32 len mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32] = mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]] + floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]]) + -(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32) + 64 len mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32]
                    require var167001 < mem[ceil32(arg1.length) + 416]
                    if mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448] + 32]] != 2:
                        revert with 0, 'Check co-sigs failed'
                    # nil
                else:
                    _11826 = mem[_5946 + 32]
                    mem[_6115] = 2
                    _13572 = mem[_5946]
                    s = _5946
                    s = _11826
                    while 2 < _13572:
                        _13606 = mem[_5946 + mem[_6115] + 32]
                        mem[_6115] = mem[_6115] + 1
                        mem[_6115] = mem[_6115] + 1
                        s = _5946
                        s = _13606
                        continue 
                    if 0 >= _5828:
                    mem[0] = mem[_5960 + 24 len 8]
                    mem[32] = 6
                    require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                    if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require 0 < mem[mem[ceil32(arg1.length) + 160]]
                    # nil
    else:
        mem[ceil32(arg1.length) + 256] = 0
        mem[ceil32(arg1.length) + 416] = code.data[24174 len 32]
        mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448
        if not code.data[24174 len 32]:
            mem[ceil32(arg1.length) + 160] = ceil32(arg1.length) + 416
            mem[ceil32(arg1.length) + 384] = 0
            if not var62001:
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 928] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 992] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 800] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 544] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768
                mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1056] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 576] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 608] = 0
                require 0 < code.data[24174 len 32]
                _2047 = mem[mem[ceil32(arg1.length) + 448]]
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1120] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1152] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1568] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1632] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1440] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1184] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1696] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1216] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1248] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1728] = 0
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1760] = 96
                mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1856
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1824] = _2047
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 0
                if not var103001:
                    idx = 0
                    s = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                    while idx < code.data[24174 len 32]:
                        _5809 = mem[s]
                        mem[0] = mem[s + 24 len 8]
                        mem[32] = 6
                        _5810 = sha3(mem[0], 6)
                        require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                        if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                            revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _5844 = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        u = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + 32
                        v = mem[64]
                        t = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])])
                        _6636 = sha3(mem[mem[64] len _5844])
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _6651 = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]
                        if mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                            revert with 0, 'Check co-sigs failed'
                        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                        mem[mem[64] + 60] = _6636
                        _6676 = mem[64]
                        mem[mem[64]] = 60
                        mem[64] = mem[64] + 92
                        _6678 = sha3(mem[_6676 + 32 len mem[_6676]])
                        t = 0
                        while t < 2:
                            require t < mem[_6651]
                            if mem[mem[(32 * t) + _6651 + 32]] != 65:
                                require t < 2
                                if stor[(7 * t) + _5810 + 4]:
                                    revert with 0, 'Check co-sigs failed'
                            else:
                                _7656 = mem[mem[(32 * t) + _6651 + 32] + 32]
                                _7657 = mem[mem[(32 * t) + _6651 + 32] + 64]
                                _7658 = mem[mem[(32 * t) + _6651 + 32] + 96]
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) - 256 >= 27:
                                    require t < 2
                                    if stor[(7 * t) + _5810 + 4]:
                                        revert with 0, 'Check co-sigs failed'
                                else:
                                    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) - 256) + 27):
                                        _7725 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_7725 + 32] = _6678
                                        mem[_7725 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_7658')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_7658')), 0) - 256) + 27)
                                        mem[_7725 + 96] = _7656
                                        mem[_7725 + 128] = _7657
                                        signer = erecover(_6678, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_7658')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_7658')), 0) - 256) + 27 << 248, _7656, _7657) 
                                        mem[_7725] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require t < 2
                                        if stor[(7 * t) + _5810 + 4] != address(signer):
                                            revert with 0, 'Check co-sigs failed'
                                    else:
                                        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_6651')), 32))), 32))), 0) - 256) + 27) != 28:
                                            require t < 2
                                            if stor[(7 * t) + _5810 + 4]:
                                                revert with 0, 'Check co-sigs failed'
                                        else:
                                            _7742 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_7742 + 32] = _6678
                                            mem[_7742 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_7658')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_7658')), 0) - 256) + 27)
                                            mem[_7742 + 96] = _7656
                                            mem[_7742 + 128] = _7657
                                            signer = erecover(_6678, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_7658')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_7658')), 0) - 256) + 27 << 248, _7656, _7657) 
                                            mem[_7742] = signer
                                            if not erecover.result:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require t < 2
                                            if stor[(7 * t) + _5810 + 4] != address(signer):
                                                revert with 0, 'Check co-sigs failed'
                            t = t + 1
                            continue 
                        if address(depositLimits[_5810]) == mem[s + 44 len 20]:
                            if mem[s + 64] <= stor7[_5810]:
                                revert with 0, 'lseqNum error'
                            stor7[_5810] = mem[s + 64]
                            stor8[_5810] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx == code.data[24174 len 32] - 1:
                                _7833 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7833 len 64] = code.data[24142 len 64]
                                _7848 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7848] = stor7[_5810]
                                mem[_7848 + 32] = stor14[_5810]
                                _7883 = mem[64]
                                mem[mem[64]] = uint64(_5809)
                                t = 0
                                while t < 64:
                                    mem[t + _7883 + 32] = mem[t + _7848]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _7883 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                            require idx < code.data[24174 len 32] - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            _7832 = mem[mem[(32 * idx + 1) + mem[ceil32(arg1.length) + 160] + 32]]
                            _7882 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_7882] = 0
                            mem[_7882 + 32] = 0
                            mem[_7882 + 64] = 0
                            _7901 = mem[64]
                            mem[64] = mem[64] + 128
                            _7917 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7917] = 0
                            mem[_7917 + 32] = 0
                            mem[_7901] = _7917
                            _7941 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7941] = 0
                            mem[_7941 + 32] = 0
                            mem[_7901 + 32] = _7941
                            mem[_7882 + 96] = _7901
                            _8002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8002] = 96
                            mem[_8002 + 32] = 0
                            mem[_7882 + 128] = _8002
                            mem[_7882 + 160] = 0
                            _8046 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8046] = 0
                            mem[_8046 + 32] = 96
                            _8081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8081 + 32] = _7832
                            mem[_8081] = 0
                            if var159001:
                                # nil
                            else:
                                if uint64(_5809) > 0:
                                    revert with 0, 'Non-ascending channelIds'
                                if uint64(_5809) < 0:
                                    _10804 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10804 len 64] = code.data[24142 len 64]
                                    _10816 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10816] = stor7[_5810]
                                    mem[_10816 + 32] = stor14[_5810]
                                    _10840 = mem[64]
                                    mem[mem[64]] = uint64(_5809)
                                    s = 0
                                    while s < 64:
                                        mem[s + _10840 + 32] = mem[s + _10816]
                                        s = s + 32
                                        continue 
                                    emit 0xfebd8cec: mem[mem[64] len _10840 + -mem[64] + 96]
                                idx = idx + 1
                                s = _7882
                                continue 
                        else:
                            if stor11[_5810] != mem[s + 44 len 20]:
                                revert with 0, 'Nonexist peer'
                            if mem[s + 64] <= stor14[_5810]:
                                revert with 0, 'lseqNum error'
                            stor14[_5810] = mem[s + 64]
                            stor15[_5810] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx == code.data[24174 len 32] - 1:
                                _7847 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7847 len 64] = code.data[24142 len 64]
                                _7881 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7881] = stor7[_5810]
                                mem[_7881 + 32] = stor14[_5810]
                                _7900 = mem[64]
                                mem[mem[64]] = uint64(_5809)
                                t = 0
                                while t < 64:
                                    mem[t + _7900 + 32] = mem[t + _7881]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _7900 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                            require idx < code.data[24174 len 32] - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            _7846 = mem[mem[(32 * idx + 1) + mem[ceil32(arg1.length) + 160] + 32]]
                            _7899 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_7899] = 0
                            mem[_7899 + 32] = 0
                            mem[_7899 + 64] = 0
                            _7916 = mem[64]
                            mem[64] = mem[64] + 128
                            _7927 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7927] = 0
                            mem[_7927 + 32] = 0
                            mem[_7916] = _7927
                            _7952 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7952] = 0
                            mem[_7952 + 32] = 0
                            mem[_7916 + 32] = _7952
                            mem[_7899 + 96] = _7916
                            _8025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8025] = 96
                            mem[_8025 + 32] = 0
                            mem[_7899 + 128] = _8025
                            mem[_7899 + 160] = 0
                            _8060 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8060] = 0
                            mem[_8060 + 32] = 96
                            _8092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8092 + 32] = _7846
                            mem[_8092] = 0
                            if var160001:
                                # nil
                            else:
                                if uint64(_5809) > 0:
                                    revert with 0, 'Non-ascending channelIds'
                                if uint64(_5809) < 0:
                                    _10802 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10802 len 64] = code.data[24142 len 64]
                                    _10815 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_10815] = stor7[_5810]
                                    mem[_10815 + 32] = stor14[_5810]
                                    _10839 = mem[64]
                                    mem[mem[64]] = uint64(_5809)
                                    s = 0
                                    while s < 64:
                                        mem[s + _10839 + 32] = mem[s + _10815]
                                        s = s + 32
                                        continue 
                                    emit 0xfebd8cec: mem[mem[64] len _10839 + -mem[64] + 96]
                                idx = idx + 1
                                s = _7899
                                continue 
                else:
                    _5802 = mem[_2047 + 32]
                    mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 2
                    _6992 = mem[_2047]
                    s = _2047
                    s = _5802
                    while 2 < _6992:
                        _7050 = mem[_2047 + mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 32]
                        mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                        mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                        s = _2047
                        s = _7050
                        continue 
                    idx = 0
                    s = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                    while idx < code.data[24174 len 32]:
                        _9692 = mem[s]
                        mem[0] = mem[s + 24 len 8]
                        mem[32] = 6
                        _9693 = sha3(mem[0], 6)
                        require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                        if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                            revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _9775 = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        u = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + 32
                        v = mem[64]
                        t = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])])
                        _10683 = sha3(mem[mem[64] len _9775])
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _10726 = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]
                        if mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                            revert with 0, 'Check co-sigs failed'
                        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                        mem[mem[64] + 60] = _10683
                        _10776 = mem[64]
                        mem[mem[64]] = 60
                        mem[64] = mem[64] + 92
                        _10778 = sha3(mem[_10776 + 32 len mem[_10776]])
                        t = 0
                        while t < 2:
                            require t < mem[_10726]
                            if mem[mem[(32 * t) + _10726 + 32]] != 65:
                                require t < 2
                                if stor[(7 * t) + _9693 + 4]:
                                    revert with 0, 'Check co-sigs failed'
                            else:
                                _11911 = mem[mem[(32 * t) + _10726 + 32] + 32]
                                _11912 = mem[mem[(32 * t) + _10726 + 32] + 64]
                                _11913 = mem[mem[(32 * t) + _10726 + 32] + 96]
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) - 256 >= 27:
                                    require t < 2
                                    if stor[(7 * t) + _9693 + 4]:
                                        revert with 0, 'Check co-sigs failed'
                                else:
                                    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) - 256) + 27):
                                        _12022 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_12022 + 32] = _10778
                                        mem[_12022 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11913')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11913')), 0) - 256) + 27)
                                        mem[_12022 + 96] = _11911
                                        mem[_12022 + 128] = _11912
                                        signer = erecover(_10778, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11913')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11913')), 0) - 256) + 27 << 248, _11911, _11912) 
                                        mem[_12022] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require t < 2
                                        if stor[(7 * t) + _9693 + 4] != address(signer):
                                            revert with 0, 'Check co-sigs failed'
                                    else:
                                        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10726')), 32))), 32))), 0) - 256) + 27) != 28:
                                            require t < 2
                                            if stor[(7 * t) + _9693 + 4]:
                                                revert with 0, 'Check co-sigs failed'
                                        else:
                                            _12043 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_12043 + 32] = _10778
                                            mem[_12043 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11913')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11913')), 0) - 256) + 27)
                                            mem[_12043 + 96] = _11911
                                            mem[_12043 + 128] = _11912
                                            signer = erecover(_10778, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11913')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11913')), 0) - 256) + 27 << 248, _11911, _11912) 
                                            mem[_12043] = signer
                                            if not erecover.result:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require t < 2
                                            if stor[(7 * t) + _9693 + 4] != address(signer):
                                                revert with 0, 'Check co-sigs failed'
                            t = t + 1
                            continue 
                        if address(depositLimits[_9693]) == mem[s + 44 len 20]:
                            if mem[s + 64] <= stor7[_9693]:
                                revert with 0, 'lseqNum error'
                            stor7[_9693] = mem[s + 64]
                            stor8[_9693] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx != code.data[24174 len 32] - 1:
                                require idx < code.data[24174 len 32] - 1
                                require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                                # nil
                            else:
                                _12197 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12197 len 64] = code.data[24142 len 64]
                                _12232 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12232] = stor7[_9693]
                                mem[_12232 + 32] = stor14[_9693]
                                _12292 = mem[64]
                                mem[mem[64]] = uint64(_9692)
                                t = 0
                                while t < 64:
                                    mem[t + _12292 + 32] = mem[t + _12232]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _12292 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                        else:
                            if stor11[_9693] != mem[s + 44 len 20]:
                                revert with 0, 'Nonexist peer'
                            if mem[s + 64] <= stor14[_9693]:
                                revert with 0, 'lseqNum error'
                            stor14[_9693] = mem[s + 64]
                            stor15[_9693] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx != code.data[24174 len 32] - 1:
                                require idx < code.data[24174 len 32] - 1
                                require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                                # nil
                            else:
                                _12231 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12231 len 64] = code.data[24142 len 64]
                                _12290 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12290] = stor7[_9693]
                                mem[_12290 + 32] = stor14[_9693]
                                _12325 = mem[64]
                                mem[mem[64]] = uint64(_9692)
                                t = 0
                                while t < 64:
                                    mem[t + _12325 + 32] = mem[t + _12290]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _12325 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
            mem[ceil32(arg1.length) + 256] = 2
            s = 128
            s = mem[160]
            while 2 < arg1.length:
                _4461 = mem[mem[ceil32(arg1.length) + 256] + 160]
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                s = 128
                s = _4461
                continue 
            _4453 = mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 192 len -arg1.length + ceil32(arg1.length)]]
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 928] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 896
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 992] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 800] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 960
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 544] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 768
            mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024] = 96
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1056] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 576] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1024
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 608] = 0
            require 0 < mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 192 len -arg1.length + ceil32(arg1.length)]]
            _4530 = mem[mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 192 len -arg1.length + ceil32(arg1.length)] + 32]]
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1120] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1152] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1568] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1536
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1632] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1440] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1600
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1184] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1408
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664] = 96
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1696] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1216] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1664
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1248] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1728] = 0
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1760] = 96
            mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1856
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1824] = _4530
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 0
            if not var132001:
                idx = 0
                s = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1088
                while idx < _4453:
                    _9694 = mem[s]
                    mem[0] = mem[s + 24 len 8]
                    mem[32] = 6
                    _9695 = sha3(mem[0], 6)
                    require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                    if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require idx < mem[mem[ceil32(arg1.length) + 160]]
                    _9779 = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                    u = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + 32
                    v = mem[64]
                    t = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])])
                    _10690 = sha3(mem[mem[64] len _9779])
                    require idx < mem[mem[ceil32(arg1.length) + 160]]
                    _10728 = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]
                    if mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                        revert with 0, 'Check co-sigs failed'
                    mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                    mem[mem[64] + 60] = _10690
                    _10780 = mem[64]
                    mem[mem[64]] = 60
                    mem[64] = mem[64] + 92
                    _10782 = sha3(mem[_10780 + 32 len mem[_10780]])
                    t = 0
                    while t < 2:
                        require t < mem[_10728]
                        if mem[mem[(32 * t) + _10728 + 32]] != 65:
                            require t < 2
                            if stor[(7 * t) + _9695 + 4]:
                                revert with 0, 'Check co-sigs failed'
                        else:
                            _11915 = mem[mem[(32 * t) + _10728 + 32] + 32]
                            _11916 = mem[mem[(32 * t) + _10728 + 32] + 64]
                            _11917 = mem[mem[(32 * t) + _10728 + 32] + 96]
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) - 256 >= 27:
                                require t < 2
                                if stor[(7 * t) + _9695 + 4]:
                                    revert with 0, 'Check co-sigs failed'
                            else:
                                if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) - 256) + 27):
                                    _12024 = mem[64]
                                    mem[mem[64]] = 0
                                    mem[64] = mem[64] + 32
                                    mem[_12024 + 32] = _10782
                                    mem[_12024 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11917')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11917')), 0) - 256) + 27)
                                    mem[_12024 + 96] = _11915
                                    mem[_12024 + 128] = _11916
                                    signer = erecover(_10782, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11917')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11917')), 0) - 256) + 27 << 248, _11915, _11916) 
                                    mem[_12024] = signer
                                    if not erecover.result:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require t < 2
                                    if stor[(7 * t) + _9695 + 4] != address(signer):
                                        revert with 0, 'Check co-sigs failed'
                                else:
                                    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_10728')), 32))), 32))), 0) - 256) + 27) != 28:
                                        require t < 2
                                        if stor[(7 * t) + _9695 + 4]:
                                            revert with 0, 'Check co-sigs failed'
                                    else:
                                        _12048 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_12048 + 32] = _10782
                                        mem[_12048 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11917')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11917')), 0) - 256) + 27)
                                        mem[_12048 + 96] = _11915
                                        mem[_12048 + 128] = _11916
                                        signer = erecover(_10782, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_11917')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_11917')), 0) - 256) + 27 << 248, _11915, _11916) 
                                        mem[_12048] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require t < 2
                                        if stor[(7 * t) + _9695 + 4] != address(signer):
                                            revert with 0, 'Check co-sigs failed'
                        t = t + 1
                        continue 
                    if address(depositLimits[_9695]) == mem[s + 44 len 20]:
                        if mem[s + 64] <= stor7[_9695]:
                            revert with 0, 'lseqNum error'
                        stor7[_9695] = mem[s + 64]
                        stor8[_9695] = mem[mem[mem[s + 96] + 32] + 32]
                        if idx != _4453 - 1:
                            require idx < _4453 - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            # nil
                        else:
                            _12206 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12206 len 64] = code.data[24142 len 64]
                            _12244 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12244] = stor7[_9695]
                            mem[_12244 + 32] = stor14[_9695]
                            _12299 = mem[64]
                            mem[mem[64]] = uint64(_9694)
                            t = 0
                            while t < 64:
                                mem[t + _12299 + 32] = mem[t + _12244]
                                t = t + 32
                                continue 
                            emit 0xfebd8cec: mem[mem[64] len _12299 + -mem[64] + 96]
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        if stor11[_9695] != mem[s + 44 len 20]:
                            revert with 0, 'Nonexist peer'
                        if mem[s + 64] <= stor14[_9695]:
                            revert with 0, 'lseqNum error'
                        stor14[_9695] = mem[s + 64]
                        stor15[_9695] = mem[mem[mem[s + 96] + 32] + 32]
                        if idx != _4453 - 1:
                            require idx < _4453 - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            # nil
                        else:
                            _12243 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12243 len 64] = code.data[24142 len 64]
                            _12297 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12297] = stor7[_9695]
                            mem[_12297 + 32] = stor14[_9695]
                            _12328 = mem[64]
                            mem[mem[64]] = uint64(_9694)
                            t = 0
                            while t < 64:
                                mem[t + _12328 + 32] = mem[t + _12297]
                                t = t + 32
                                continue 
                            emit 0xfebd8cec: mem[mem[64] len _12328 + -mem[64] + 96]
                            idx = idx + 1
                            s = s
                            continue 
            _9685 = mem[_4530 + 32]
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = 2
            _11271 = mem[_4530]
            s = _4530
            s = _9685
            while 2 < _11271:
                _11320 = mem[_4530 + mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 32]
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] = mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 1792] + 1
                s = _4530
                s = _11320
                continue 
            # nil
        else:
            mem[64] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 512
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 96
            mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 96
            mem[var35001] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448
            s = var35001
            idx = var35002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448] = 96
                mem[ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 480] = 96
                mem[s + 32] = ceil32(arg1.length) + (32 * code.data[24174 len 32]) + 448
                s = s + 32
                idx = idx - 1
                continue 
            mem[ceil32(arg1.length) + 160] = ceil32(arg1.length) + 416
            require 1 < mem[ceil32(arg1.length) + 320]
            mem[ceil32(arg1.length) + 384] = 0
            if not var69001:
                _3065 = mem[ceil32(arg1.length) + 416]
                _3066 = mem[64]
                mem[64] = mem[64] + 320
                mem[_3066] = 0
                mem[_3066 + 32] = 0
                mem[_3066 + 64] = 0
                _3074 = mem[64]
                mem[64] = mem[64] + 128
                _3080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3080] = 0
                mem[_3080 + 32] = 0
                mem[_3074] = _3080
                _3094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3094] = 0
                mem[_3094 + 32] = 0
                mem[_3074 + 32] = _3094
                mem[_3066 + 96] = _3074
                _3112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3112] = 96
                mem[_3112 + 32] = 0
                mem[_3066 + 128] = _3112
                mem[_3066 + 160] = 0
                require 0 < mem[ceil32(arg1.length) + 416]
                _3130 = mem[mem[ceil32(arg1.length) + 448]]
                _3139 = mem[64]
                mem[64] = mem[64] + 320
                mem[_3139] = 0
                mem[_3139 + 32] = 0
                mem[_3139 + 64] = 0
                _3151 = mem[64]
                mem[64] = mem[64] + 128
                _3153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3153] = 0
                mem[_3153 + 32] = 0
                mem[_3151] = _3153
                _3163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3163] = 0
                mem[_3163 + 32] = 0
                mem[_3151 + 32] = _3163
                mem[_3139 + 96] = _3151
                _3180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3180] = 96
                mem[_3180 + 32] = 0
                mem[_3139 + 128] = _3180
                mem[_3139 + 160] = 0
                _3199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3199] = 0
                mem[_3199 + 32] = 96
                _3215 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3215 + 32] = _3130
                mem[_3215] = 0
                if not var110001:
                    idx = 0
                    s = _3139
                    while idx < _3065:
                        _7618 = mem[s]
                        mem[0] = mem[s + 24 len 8]
                        mem[32] = 6
                        _7619 = sha3(mem[0], 6)
                        require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                        if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                            revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _7662 = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        u = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + 32
                        v = mem[64]
                        t = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]
                        while t >= 32:
                            mem[v] = mem[u]
                            u = u + 32
                            v = v + 32
                            t = t - 32
                            continue 
                        mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32]]])])
                        _8550 = sha3(mem[mem[64] len _7662])
                        require idx < mem[mem[ceil32(arg1.length) + 160]]
                        _8564 = mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]
                        if mem[mem[mem[(32 * idx) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                            revert with 0, 'Check co-sigs failed'
                        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                        mem[mem[64] + 60] = _8550
                        _8611 = mem[64]
                        mem[mem[64]] = 60
                        mem[64] = mem[64] + 92
                        _8613 = sha3(mem[_8611 + 32 len mem[_8611]])
                        t = 0
                        while t < 2:
                            require t < mem[_8564]
                            if mem[mem[(32 * t) + _8564 + 32]] != 65:
                                require t < 2
                                if stor[(7 * t) + _7619 + 4]:
                                    revert with 0, 'Check co-sigs failed'
                            else:
                                _9781 = mem[mem[(32 * t) + _8564 + 32] + 32]
                                _9782 = mem[mem[(32 * t) + _8564 + 32] + 64]
                                _9783 = mem[mem[(32 * t) + _8564 + 32] + 96]
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) - 256 >= 27:
                                    require t < 2
                                    if stor[(7 * t) + _7619 + 4]:
                                        revert with 0, 'Check co-sigs failed'
                                else:
                                    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) - 256) + 27):
                                        _9863 = mem[64]
                                        mem[mem[64]] = 0
                                        mem[64] = mem[64] + 32
                                        mem[_9863 + 32] = _8613
                                        mem[_9863 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_9783')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_9783')), 0) - 256) + 27)
                                        mem[_9863 + 96] = _9781
                                        mem[_9863 + 128] = _9782
                                        signer = erecover(_8613, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_9783')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_9783')), 0) - 256) + 27 << 248, _9781, _9782) 
                                        mem[_9863] = signer
                                        if not erecover.result:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require t < 2
                                        if stor[(7 * t) + _7619 + 4] != address(signer):
                                            revert with 0, 'Check co-sigs failed'
                                    else:
                                        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 96, ('mem', ('range', ('add', 32, ('mask_shl', 251, 0, 5, ('var', 2)), ('var', '_8564')), 32))), 32))), 0) - 256) + 27) != 28:
                                            require t < 2
                                            if stor[(7 * t) + _7619 + 4]:
                                                revert with 0, 'Check co-sigs failed'
                                        else:
                                            _9878 = mem[64]
                                            mem[mem[64]] = 0
                                            mem[64] = mem[64] + 32
                                            mem[_9878 + 32] = _8613
                                            mem[_9878 + 64] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_9783')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_9783')), 0) - 256) + 27)
                                            mem[_9878 + 96] = _9781
                                            mem[_9878 + 128] = _9782
                                            signer = erecover(_8613, (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_9783')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_9783')), 0) - 256) + 27 << 248, _9781, _9782) 
                                            mem[_9878] = signer
                                            if not erecover.result:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require t < 2
                                            if stor[(7 * t) + _7619 + 4] != address(signer):
                                                revert with 0, 'Check co-sigs failed'
                            t = t + 1
                            continue 
                        if address(depositLimits[_7619]) == mem[s + 44 len 20]:
                            if mem[s + 64] <= stor7[_7619]:
                                revert with 0, 'lseqNum error'
                            stor7[_7619] = mem[s + 64]
                            stor8[_7619] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx == _3065 - 1:
                                _9976 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9976 len 64] = code.data[24142 len 64]
                                _9997 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9997] = stor7[_7619]
                                mem[_9997 + 32] = stor14[_7619]
                                _10030 = mem[64]
                                mem[mem[64]] = uint64(_7618)
                                t = 0
                                while t < 64:
                                    mem[t + _10030 + 32] = mem[t + _9997]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _10030 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                            require idx < _3065 - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            _9975 = mem[mem[(32 * idx + 1) + mem[ceil32(arg1.length) + 160] + 32]]
                            _10029 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_10029] = 0
                            mem[_10029 + 32] = 0
                            mem[_10029 + 64] = 0
                            _10047 = mem[64]
                            mem[64] = mem[64] + 128
                            _10062 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10062] = 0
                            mem[_10062 + 32] = 0
                            mem[_10047] = _10062
                            _10101 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10101] = 0
                            mem[_10101 + 32] = 0
                            mem[_10047 + 32] = _10101
                            mem[_10029 + 96] = _10047
                            _10170 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10170] = 96
                            mem[_10170 + 32] = 0
                            mem[_10029 + 128] = _10170
                            mem[_10029 + 160] = 0
                            _10213 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10213] = 0
                            mem[_10213 + 32] = 96
                            _10275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10275 + 32] = _9975
                            mem[_10275] = 0
                            if var166001:
                                # nil
                            else:
                                if uint64(_7618) > 0:
                                    revert with 0, 'Non-ascending channelIds'
                                if uint64(_7618) >= 0:
                                    idx = idx + 1
                                    s = _10029
                                    continue 
                                # nil
                        else:
                            if stor11[_7619] != mem[s + 44 len 20]:
                                revert with 0, 'Nonexist peer'
                            if mem[s + 64] <= stor14[_7619]:
                                revert with 0, 'lseqNum error'
                            stor14[_7619] = mem[s + 64]
                            stor15[_7619] = mem[mem[mem[s + 96] + 32] + 32]
                            if idx == _3065 - 1:
                                _9996 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_9996 len 64] = code.data[24142 len 64]
                                _10028 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_10028] = stor7[_7619]
                                mem[_10028 + 32] = stor14[_7619]
                                _10046 = mem[64]
                                mem[mem[64]] = uint64(_7618)
                                t = 0
                                while t < 64:
                                    mem[t + _10046 + 32] = mem[t + _10028]
                                    t = t + 32
                                    continue 
                                emit 0xfebd8cec: mem[mem[64] len _10046 + -mem[64] + 96]
                                idx = idx + 1
                                s = s
                                continue 
                            require idx < _3065 - 1
                            require idx + 1 < mem[mem[ceil32(arg1.length) + 160]]
                            _9995 = mem[mem[(32 * idx + 1) + mem[ceil32(arg1.length) + 160] + 32]]
                            _10045 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_10045] = 0
                            mem[_10045 + 32] = 0
                            mem[_10045 + 64] = 0
                            _10061 = mem[64]
                            mem[64] = mem[64] + 128
                            _10076 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10076] = 0
                            mem[_10076 + 32] = 0
                            mem[_10061] = _10076
                            _10113 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10113] = 0
                            mem[_10113 + 32] = 0
                            mem[_10061 + 32] = _10113
                            mem[_10045 + 96] = _10061
                            _10190 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10190] = 96
                            mem[_10190 + 32] = 0
                            mem[_10045 + 128] = _10190
                            mem[_10045 + 160] = 0
                            _10238 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10238] = 0
                            mem[_10238 + 32] = 96
                            _10284 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10284 + 32] = _9995
                            mem[_10284] = 0
                            if var167001:
                                # nil
                            else:
                                if uint64(_7618) > 0:
                                    revert with 0, 'Non-ascending channelIds'
                                if uint64(_7618) >= 0:
                                    idx = idx + 1
                                    s = _10045
                                    continue 
                                # nil
                _7596 = mem[_3130 + 32]
                mem[_3215] = 2
                _9046 = mem[_3130]
                s = _3130
                s = _7596
                while 2 < _9046:
                    _9094 = mem[_3130 + mem[_3215] + 32]
                    mem[_3215] = mem[_3215] + 1
                    mem[_3215] = mem[_3215] + 1
                    s = _3130
                    s = _9094
                    continue 
                if var172001 >= _3065:
                mem[0] = mem[var172002 + 24 len 8]
                mem[32] = 6
                require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                    revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                require var172001 < mem[mem[ceil32(arg1.length) + 160]]
                mem[mem[64] len floor32(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]])] = mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]] + 32 len floor32(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]])]
                mem[mem[64] + floor32(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 32 len mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]] % 32] = mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]] + floor32(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]]) + -(mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]] % 32) + 64 len mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32]]] % 32]
                require var172001 < mem[mem[ceil32(arg1.length) + 160]]
                if mem[mem[mem[(32 * var172001) + mem[ceil32(arg1.length) + 160] + 32] + 32]] != 2:
                    revert with 0, 'Check co-sigs failed'
                # nil
            else:
                _4997 = mem[mem[ceil32(arg1.length) + 288] + mem[ceil32(arg1.length) + 256] + 32]
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                _6009 = mem[mem[ceil32(arg1.length) + 288]]
                _6010 = mem[ceil32(arg1.length) + 256]
                s = mem[ceil32(arg1.length) + 288]
                s = _4997
                while _6010 < _6009:
                    _6059 = mem[mem[ceil32(arg1.length) + 288] + mem[ceil32(arg1.length) + 256] + 32]
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    mem[ceil32(arg1.length) + 256] = mem[ceil32(arg1.length) + 256] + 1
                    s = mem[ceil32(arg1.length) + 288]
                    s = _6059
                    continue 
                _6048 = mem[ceil32(arg1.length) + 416]
                _6056 = mem[64]
                mem[64] = mem[64] + 320
                mem[_6056] = 0
                mem[_6056 + 32] = 0
                mem[_6056 + 64] = 0
                _6070 = mem[64]
                mem[64] = mem[64] + 128
                _6083 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6083] = 0
                mem[_6083 + 32] = 0
                mem[_6070] = _6083
                _6113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6113] = 0
                mem[_6113 + 32] = 0
                mem[_6070 + 32] = _6113
                mem[_6056 + 96] = _6070
                _6139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6139] = 96
                mem[_6139 + 32] = 0
                mem[_6056 + 128] = _6139
                mem[_6056 + 160] = 0
                require 0 < mem[ceil32(arg1.length) + 416]
                _6188 = mem[mem[ceil32(arg1.length) + 448]]
                _6209 = mem[64]
                mem[64] = mem[64] + 320
                mem[_6209] = 0
                mem[_6209 + 32] = 0
                mem[_6209 + 64] = 0
                _6217 = mem[64]
                mem[64] = mem[64] + 128
                _6230 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6230] = 0
                mem[_6230 + 32] = 0
                mem[_6217] = _6230
                _6249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6249] = 0
                mem[_6249 + 32] = 0
                mem[_6217 + 32] = _6249
                mem[_6209 + 96] = _6217
                _6275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6275] = 96
                mem[_6275 + 32] = 0
                mem[_6209 + 128] = _6275
                mem[_6209 + 160] = 0
                _6292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6292] = 0
                mem[_6292 + 32] = 96
                _6307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6307 + 32] = _6188
                mem[_6307] = 0
                if not var139001:
                    if var167001 >= _6048:
                    mem[0] = mem[var167002 + 24 len 8]
                    mem[32] = 6
                    require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                    if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require var167001 < mem[ceil32(arg1.length) + 416]
                    mem[mem[64] len floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]])] = mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]] + 32 len floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]])]
                    mem[mem[64] + floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]]) + -(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32) + 32 len mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32] = mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]] + floor32(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]]) + -(mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32) + 64 len mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448]]] % 32]
                    require var167001 < mem[ceil32(arg1.length) + 416]
                    if mem[mem[mem[(32 * var167001) + ceil32(arg1.length) + 448] + 32]] != 2:
                        revert with 0, 'Check co-sigs failed'
                    # nil
                else:
                    _11823 = mem[_6188 + 32]
                    mem[_6307] = 2
                    _13565 = mem[_6188]
                    s = _6188
                    s = _11823
                    while 2 < _13565:
                        _13603 = mem[_6188 + mem[_6307] + 32]
                        mem[_6307] = mem[_6307] + 1
                        mem[_6307] = mem[_6307] + 1
                        s = _6188
                        s = _13603
                        continue 
                    if 0 >= _6048:
                    mem[0] = mem[_6209 + 24 len 8]
                    mem[32] = 6
                    require uint8(sub_ba324e64[mem[0]].field_768) <= 3
                    if uint8(sub_ba324e64[mem[0]].field_768) != 1:
                        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
                    require 0 < mem[mem[ceil32(arg1.length) + 160]]
                    # nil
}

function sub_1fe2bcf3(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 6
    require uint8(sub_ba324e64[arg1 << 192].field_768) <= 3
    if uint8(sub_ba324e64[arg1 << 192].field_768) != 2:
        revert with 0, 32, 20, 0xfe4368616e6e656c20737461747573206572726f720000000000000000000000
    if block.number < uint256(sub_ba324e64[arg1 << 192].field_0):
        revert with 0, 'Settle is not finalized'
    if not uint256(sub_ba324e64[arg1 << 192].field_2304):
        if not uint256(sub_ba324e64[arg1 << 192].field_4096):
            mem[96 len 64] = code.data[24142 len 64]
            mem[160 len 64] = code.data[24142 len 64]
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[var26002] = var26001
            mem[var28002] = var28001
            if not var28003 - 1:
                mem[64] = 1088
                s = 1024
                idx = 0
                while idx < 2:
                    _136 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_136] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_136 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_136 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _137 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_137] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_137 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_137 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_137 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_136 + 96] = _137
                    mem[s] = _136
                    s = s + 32
                    idx = idx + 1
                    continue 
                _150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_150 len 64] = code.data[24142 len 64]
                _154 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32] >= mem[mem[1024] + 32]
                require mem[mem[1056] + 64] >= 0
                mem[_154] = mem[mem[1056] + 64] + mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32]
                require mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32] >= mem[mem[1056] + 32]
                require mem[mem[1024] + 64] >= 0
                mem[_154 + 32] = mem[mem[1024] + 64] + mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _154] >= mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] <= mem[(32 * idx) + _154]
                        require idx < 2
                        mem[(32 * idx) + _154] = mem[(32 * idx) + _154] - mem[mem[(32 * idx) + 1024] + 64] - mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_154 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _342 = mem[_154]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_154]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_154] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _342
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _342
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_154 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_154 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_154 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1248] = 0
            mem[1280] = 0
            mem[1312] = 0
            mem[1344] = 0
            mem[var34002] = var34001
            mem[var36002] = var36001
            if not var36003 - 1:
                mem[64] = 1440
                s = 1376
                idx = 0
                while idx < 2:
                    _524 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_524] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_524 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_524 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _525 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_525] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_525 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_525 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_525 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_524 + 96] = _525
                    mem[s] = _524
                    s = s + 32
                    idx = idx + 1
                    continue 
                _538 = mem[64]
                mem[64] = mem[64] + 64
                mem[_538 len 64] = code.data[24142 len 64]
                _542 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32] >= mem[mem[1376] + 32]
                require mem[mem[1408] + 64] >= 0
                mem[_542] = mem[mem[1408] + 64] + mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32]
                require mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32] >= mem[mem[1408] + 32]
                require mem[mem[1376] + 64] >= 0
                mem[_542 + 32] = mem[mem[1376] + 64] + mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _542] >= mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] <= mem[(32 * idx) + _542]
                        require idx < 2
                        mem[(32 * idx) + _542] = mem[(32 * idx) + _542] - mem[mem[(32 * idx) + 1376] + 64] - mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_542 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _730 = mem[_542]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_542]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_542] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _730
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _730
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_542 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_542 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_542 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1376] = 0
            mem[1408] = 0
            mem[1440] = 0
            mem[1600] = 0
            mem[1632] = 0
            mem[1664] = 0
            mem[1696] = 0
            mem[var42002] = var42001
            mem[var44002] = var44001
            if not var44003 - 1:
                mem[64] = 1792
                s = 1728
                idx = 0
                while idx < 2:
                    _912 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_912] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_912 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_912 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _913 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_913] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_913 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_913 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_913 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_912 + 96] = _913
                    mem[s] = _912
                    s = s + 32
                    idx = idx + 1
                    continue 
                _926 = mem[64]
                mem[64] = mem[64] + 64
                mem[_926 len 64] = code.data[24142 len 64]
                _930 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32] >= mem[mem[1728] + 32]
                require mem[mem[1760] + 64] >= 0
                mem[_930] = mem[mem[1760] + 64] + mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32]
                require mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32] >= mem[mem[1760] + 32]
                require mem[mem[1728] + 64] >= 0
                mem[_930 + 32] = mem[mem[1728] + 64] + mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _930] >= mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] <= mem[(32 * idx) + _930]
                        require idx < 2
                        mem[(32 * idx) + _930] = mem[(32 * idx) + _930] - mem[mem[(32 * idx) + 1728] + 64] - mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_930 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1118 = mem[_930]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_930]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_930] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1118
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1118
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_930 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_930 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_930 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1728] = 0
            mem[1760] = 0
            mem[1792] = 0
            mem[1952] = 0
            mem[1984] = 0
            mem[2016] = 0
            mem[2048] = 0
            mem[var50002] = var50001
            mem[var52002] = var52001
            if var52003 - 1:
                # nil
            else:
                mem[64] = 2144
                s = 2080
                idx = 0
                while idx < 2:
                    _1300 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1300] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_1300 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_1300 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _1301 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1301] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_1301 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_1301 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_1301 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_1300 + 96] = _1301
                    mem[s] = _1300
                    s = s + 32
                    idx = idx + 1
                    continue 
                _1314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1314 len 64] = code.data[24142 len 64]
                _1318 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32] >= mem[mem[2080] + 32]
                require mem[mem[2112] + 64] >= 0
                mem[_1318] = mem[mem[2112] + 64] + mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32]
                require mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32] >= mem[mem[2112] + 32]
                require mem[mem[2080] + 64] >= 0
                mem[_1318 + 32] = mem[mem[2080] + 64] + mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] >= mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _1318] >= mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] <= mem[(32 * idx) + _1318]
                        require idx < 2
                        mem[(32 * idx) + _1318] = mem[(32 * idx) + _1318] - mem[mem[(32 * idx) + 2080] + 64] - mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_1318 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1506 = mem[_1318]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_1318]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_1318] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1506
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1506
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_1318 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_1318 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_1318 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
        else:
            if block.number <= uint256(sub_ba324e64[arg1 << 192].field_4352):
                revert with 0, 'Payments are not finalized'
            mem[96 len 64] = code.data[24142 len 64]
            mem[160 len 64] = code.data[24142 len 64]
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[var27002] = var27001
            mem[var29002] = var29001
            if not var29003 - 1:
                mem[64] = 1088
                s = 1024
                idx = 0
                while idx < 2:
                    _140 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_140] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_140 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_140 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _141 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_141] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_141 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_141 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_141 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_140 + 96] = _141
                    mem[s] = _140
                    s = s + 32
                    idx = idx + 1
                    continue 
                _151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_151 len 64] = code.data[24142 len 64]
                _159 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32] >= mem[mem[1024] + 32]
                require mem[mem[1056] + 64] >= 0
                mem[_159] = mem[mem[1056] + 64] + mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32]
                require mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32] >= mem[mem[1056] + 32]
                require mem[mem[1024] + 64] >= 0
                mem[_159 + 32] = mem[mem[1024] + 64] + mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _159] >= mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] <= mem[(32 * idx) + _159]
                        require idx < 2
                        mem[(32 * idx) + _159] = mem[(32 * idx) + _159] - mem[mem[(32 * idx) + 1024] + 64] - mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_159 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _343 = mem[_159]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_159]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_159] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _343
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _343
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_159 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_159 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_159 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1248] = 0
            mem[1280] = 0
            mem[1312] = 0
            mem[1344] = 0
            mem[var35002] = var35001
            mem[var37002] = var37001
            if not var37003 - 1:
                mem[64] = 1440
                s = 1376
                idx = 0
                while idx < 2:
                    _528 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_528] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_528 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_528 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _529 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_529] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_529 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_529 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_529 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_528 + 96] = _529
                    mem[s] = _528
                    s = s + 32
                    idx = idx + 1
                    continue 
                _539 = mem[64]
                mem[64] = mem[64] + 64
                mem[_539 len 64] = code.data[24142 len 64]
                _547 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32] >= mem[mem[1376] + 32]
                require mem[mem[1408] + 64] >= 0
                mem[_547] = mem[mem[1408] + 64] + mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32]
                require mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32] >= mem[mem[1408] + 32]
                require mem[mem[1376] + 64] >= 0
                mem[_547 + 32] = mem[mem[1376] + 64] + mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _547] >= mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] <= mem[(32 * idx) + _547]
                        require idx < 2
                        mem[(32 * idx) + _547] = mem[(32 * idx) + _547] - mem[mem[(32 * idx) + 1376] + 64] - mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_547 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _731 = mem[_547]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_547]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_547] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _731
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _731
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_547 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_547 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_547 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1376] = 0
            mem[1408] = 0
            mem[1440] = 0
            mem[1600] = 0
            mem[1632] = 0
            mem[1664] = 0
            mem[1696] = 0
            mem[var43002] = var43001
            mem[var45002] = var45001
            if not var45003 - 1:
                mem[64] = 1792
                s = 1728
                idx = 0
                while idx < 2:
                    _916 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_916] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_916 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_916 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _917 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_917] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_917 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_917 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_917 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_916 + 96] = _917
                    mem[s] = _916
                    s = s + 32
                    idx = idx + 1
                    continue 
                _927 = mem[64]
                mem[64] = mem[64] + 64
                mem[_927 len 64] = code.data[24142 len 64]
                _935 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32] >= mem[mem[1728] + 32]
                require mem[mem[1760] + 64] >= 0
                mem[_935] = mem[mem[1760] + 64] + mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32]
                require mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32] >= mem[mem[1760] + 32]
                require mem[mem[1728] + 64] >= 0
                mem[_935 + 32] = mem[mem[1728] + 64] + mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _935] >= mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] <= mem[(32 * idx) + _935]
                        require idx < 2
                        mem[(32 * idx) + _935] = mem[(32 * idx) + _935] - mem[mem[(32 * idx) + 1728] + 64] - mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_935 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1119 = mem[_935]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_935]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_935] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1119
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1119
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_935 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_935 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_935 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1728] = 0
            mem[1760] = 0
            mem[1792] = 0
            mem[1952] = 0
            mem[1984] = 0
            mem[2016] = 0
            mem[2048] = 0
            mem[var51002] = var51001
            mem[var53002] = var53001
            if var53003 - 1:
                # nil
            else:
                mem[64] = 2144
                s = 2080
                idx = 0
                while idx < 2:
                    _1304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1304] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_1304 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_1304 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _1305 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1305] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_1305 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_1305 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_1305 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_1304 + 96] = _1305
                    mem[s] = _1304
                    s = s + 32
                    idx = idx + 1
                    continue 
                _1315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1315 len 64] = code.data[24142 len 64]
                _1323 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32] >= mem[mem[2080] + 32]
                require mem[mem[2112] + 64] >= 0
                mem[_1323] = mem[mem[2112] + 64] + mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32]
                require mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32] >= mem[mem[2112] + 32]
                require mem[mem[2080] + 64] >= 0
                mem[_1323 + 32] = mem[mem[2080] + 64] + mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] >= mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _1323] >= mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] <= mem[(32 * idx) + _1323]
                        require idx < 2
                        mem[(32 * idx) + _1323] = mem[(32 * idx) + _1323] - mem[mem[(32 * idx) + 2080] + 64] - mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_1323 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1507 = mem[_1323]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_1323]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_1323] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1507
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1507
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_1323 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_1323 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_1323 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
    else:
        if block.number <= uint256(sub_ba324e64[arg1 << 192].field_2560):
            revert with 0, 'Payments are not finalized'
        if not uint256(sub_ba324e64[arg1 << 192].field_4096):
            mem[96 len 64] = code.data[24142 len 64]
            mem[160 len 64] = code.data[24142 len 64]
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[var27002] = var27001
            mem[var29002] = var29001
            if not var29003 - 1:
                mem[64] = 1088
                s = 1024
                idx = 0
                while idx < 2:
                    _144 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_144] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_144 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_144 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _145 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_145] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_145 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_145 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_145 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_144 + 96] = _145
                    mem[s] = _144
                    s = s + 32
                    idx = idx + 1
                    continue 
                _152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_152 len 64] = code.data[24142 len 64]
                _164 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32] >= mem[mem[1024] + 32]
                require mem[mem[1056] + 64] >= 0
                mem[_164] = mem[mem[1056] + 64] + mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32]
                require mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32] >= mem[mem[1056] + 32]
                require mem[mem[1024] + 64] >= 0
                mem[_164 + 32] = mem[mem[1024] + 64] + mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _164] >= mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] <= mem[(32 * idx) + _164]
                        require idx < 2
                        mem[(32 * idx) + _164] = mem[(32 * idx) + _164] - mem[mem[(32 * idx) + 1024] + 64] - mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_164 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _344 = mem[_164]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_164]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_164] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _344
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _344
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_164 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_164 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_164 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1248] = 0
            mem[1280] = 0
            mem[1312] = 0
            mem[1344] = 0
            mem[var35002] = var35001
            mem[var37002] = var37001
            if not var37003 - 1:
                mem[64] = 1440
                s = 1376
                idx = 0
                while idx < 2:
                    _532 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_532] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_532 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_532 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _533 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_533] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_533 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_533 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_533 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_532 + 96] = _533
                    mem[s] = _532
                    s = s + 32
                    idx = idx + 1
                    continue 
                _540 = mem[64]
                mem[64] = mem[64] + 64
                mem[_540 len 64] = code.data[24142 len 64]
                _552 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32] >= mem[mem[1376] + 32]
                require mem[mem[1408] + 64] >= 0
                mem[_552] = mem[mem[1408] + 64] + mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32]
                require mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32] >= mem[mem[1408] + 32]
                require mem[mem[1376] + 64] >= 0
                mem[_552 + 32] = mem[mem[1376] + 64] + mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _552] >= mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] <= mem[(32 * idx) + _552]
                        require idx < 2
                        mem[(32 * idx) + _552] = mem[(32 * idx) + _552] - mem[mem[(32 * idx) + 1376] + 64] - mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_552 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _732 = mem[_552]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_552]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_552] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _732
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _732
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_552 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_552 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_552 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1376] = 0
            mem[1408] = 0
            mem[1440] = 0
            mem[1600] = 0
            mem[1632] = 0
            mem[1664] = 0
            mem[1696] = 0
            mem[var43002] = var43001
            mem[var45002] = var45001
            if not var45003 - 1:
                mem[64] = 1792
                s = 1728
                idx = 0
                while idx < 2:
                    _920 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_920] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_920 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_920 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _921 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_921] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_921 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_921 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_921 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_920 + 96] = _921
                    mem[s] = _920
                    s = s + 32
                    idx = idx + 1
                    continue 
                _928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_928 len 64] = code.data[24142 len 64]
                _940 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32] >= mem[mem[1728] + 32]
                require mem[mem[1760] + 64] >= 0
                mem[_940] = mem[mem[1760] + 64] + mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32]
                require mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32] >= mem[mem[1760] + 32]
                require mem[mem[1728] + 64] >= 0
                mem[_940 + 32] = mem[mem[1728] + 64] + mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _940] >= mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] <= mem[(32 * idx) + _940]
                        require idx < 2
                        mem[(32 * idx) + _940] = mem[(32 * idx) + _940] - mem[mem[(32 * idx) + 1728] + 64] - mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_940 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1120 = mem[_940]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_940]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_940] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1120
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1120
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_940 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_940 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_940 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1728] = 0
            mem[1760] = 0
            mem[1792] = 0
            mem[1952] = 0
            mem[1984] = 0
            mem[2016] = 0
            mem[2048] = 0
            mem[var51002] = var51001
            mem[var53002] = var53001
            if var53003 - 1:
                # nil
            else:
                mem[64] = 2144
                s = 2080
                idx = 0
                while idx < 2:
                    _1308 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1308] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_1308 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_1308 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _1309 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1309] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_1309 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_1309 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_1309 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_1308 + 96] = _1309
                    mem[s] = _1308
                    s = s + 32
                    idx = idx + 1
                    continue 
                _1316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1316 len 64] = code.data[24142 len 64]
                _1328 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32] >= mem[mem[2080] + 32]
                require mem[mem[2112] + 64] >= 0
                mem[_1328] = mem[mem[2112] + 64] + mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32]
                require mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32] >= mem[mem[2112] + 32]
                require mem[mem[2080] + 64] >= 0
                mem[_1328 + 32] = mem[mem[2080] + 64] + mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] >= mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _1328] >= mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] <= mem[(32 * idx) + _1328]
                        require idx < 2
                        mem[(32 * idx) + _1328] = mem[(32 * idx) + _1328] - mem[mem[(32 * idx) + 2080] + 64] - mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_1328 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1508 = mem[_1328]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_1328]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_1328] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1508
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1508
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_1328 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_1328 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_1328 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
        else:
            if block.number <= uint256(sub_ba324e64[arg1 << 192].field_4352):
                revert with 0, 'Payments are not finalized'
            mem[96 len 64] = code.data[24142 len 64]
            mem[160 len 64] = code.data[24142 len 64]
            mem[672] = 0
            mem[704] = 0
            mem[736] = 0
            mem[896] = 0
            mem[928] = 0
            mem[960] = 0
            mem[992] = 0
            mem[var28002] = var28001
            mem[var30002] = var30001
            if not var30003 - 1:
                mem[64] = 1088
                s = 1024
                idx = 0
                while idx < 2:
                    _148 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_148] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_148 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_148 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _149 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_149] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_149 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_149 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_149 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_148 + 96] = _149
                    mem[s] = _148
                    s = s + 32
                    idx = idx + 1
                    continue 
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153 len 64] = code.data[24142 len 64]
                _169 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32] >= mem[mem[1024] + 32]
                require mem[mem[1056] + 64] >= 0
                mem[_169] = mem[mem[1056] + 64] + mem[mem[mem[1056] + 96] + 32] + mem[mem[1024] + 32]
                require mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32] >= mem[mem[1056] + 32]
                require mem[mem[1024] + 64] >= 0
                mem[_169 + 32] = mem[mem[1024] + 64] + mem[mem[mem[1024] + 96] + 32] + mem[mem[1056] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _169] >= mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1024] + 64] + mem[mem[mem[(32 * idx) + 1024] + 96] + 32] <= mem[(32 * idx) + _169]
                        require idx < 2
                        mem[(32 * idx) + _169] = mem[(32 * idx) + _169] - mem[mem[(32 * idx) + 1024] + 64] - mem[mem[mem[(32 * idx) + 1024] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_169 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _345 = mem[_169]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_169]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_169] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _345
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _345
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_169 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_169 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_169 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1024] = 0
            mem[1056] = 0
            mem[1088] = 0
            mem[1248] = 0
            mem[1280] = 0
            mem[1312] = 0
            mem[1344] = 0
            mem[var36002] = var36001
            mem[var38002] = var38001
            if not var38003 - 1:
                mem[64] = 1440
                s = 1376
                idx = 0
                while idx < 2:
                    _536 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_536] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_536 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_536 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _537 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_537] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_537 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_537 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_537 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_536 + 96] = _537
                    mem[s] = _536
                    s = s + 32
                    idx = idx + 1
                    continue 
                _541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_541 len 64] = code.data[24142 len 64]
                _557 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32] >= mem[mem[1376] + 32]
                require mem[mem[1408] + 64] >= 0
                mem[_557] = mem[mem[1408] + 64] + mem[mem[mem[1408] + 96] + 32] + mem[mem[1376] + 32]
                require mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32] >= mem[mem[1408] + 32]
                require mem[mem[1376] + 64] >= 0
                mem[_557 + 32] = mem[mem[1376] + 64] + mem[mem[mem[1376] + 96] + 32] + mem[mem[1408] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _557] >= mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1376] + 64] + mem[mem[mem[(32 * idx) + 1376] + 96] + 32] <= mem[(32 * idx) + _557]
                        require idx < 2
                        mem[(32 * idx) + _557] = mem[(32 * idx) + _557] - mem[mem[(32 * idx) + 1376] + 64] - mem[mem[mem[(32 * idx) + 1376] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_557 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _733 = mem[_557]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_557]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_557] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _733
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _733
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_557 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_557 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_557 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1376] = 0
            mem[1408] = 0
            mem[1440] = 0
            mem[1600] = 0
            mem[1632] = 0
            mem[1664] = 0
            mem[1696] = 0
            mem[var44002] = var44001
            mem[var46002] = var46001
            if not var46003 - 1:
                mem[64] = 1792
                s = 1728
                idx = 0
                while idx < 2:
                    _924 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_924] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_924 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_924 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _925 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_925] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_925 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_925 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_925 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_924 + 96] = _925
                    mem[s] = _924
                    s = s + 32
                    idx = idx + 1
                    continue 
                _929 = mem[64]
                mem[64] = mem[64] + 64
                mem[_929 len 64] = code.data[24142 len 64]
                _945 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32] >= mem[mem[1728] + 32]
                require mem[mem[1760] + 64] >= 0
                mem[_945] = mem[mem[1760] + 64] + mem[mem[mem[1760] + 96] + 32] + mem[mem[1728] + 32]
                require mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32] >= mem[mem[1760] + 32]
                require mem[mem[1728] + 64] >= 0
                mem[_945 + 32] = mem[mem[1728] + 64] + mem[mem[mem[1728] + 96] + 32] + mem[mem[1760] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] >= mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _945] >= mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 1728] + 64] + mem[mem[mem[(32 * idx) + 1728] + 96] + 32] <= mem[(32 * idx) + _945]
                        require idx < 2
                        mem[(32 * idx) + _945] = mem[(32 * idx) + _945] - mem[mem[(32 * idx) + 1728] + 64] - mem[mem[mem[(32 * idx) + 1728] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_945 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1121 = mem[_945]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_945]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_945] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1121
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1121
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_945 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_945 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_945 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
            mem[1728] = 0
            mem[1760] = 0
            mem[1792] = 0
            mem[1952] = 0
            mem[1984] = 0
            mem[2016] = 0
            mem[2048] = 0
            mem[var52002] = var52001
            mem[var54002] = var54001
            if var54003 - 1:
                # nil
            else:
                mem[64] = 2144
                s = 2080
                idx = 0
                while idx < 2:
                    _1312 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1312] = sub_ba324e64[arg1 << 192][idx].field_1024
                    mem[_1312 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_1280)
                    mem[_1312 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_1536)
                    _1313 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1313] = uint256(sub_ba324e64[arg1 << 192][idx].field_1792)
                    mem[_1313 + 32] = uint256(sub_ba324e64[arg1 << 192][idx].field_2048)
                    mem[_1313 + 64] = uint256(sub_ba324e64[arg1 << 192][idx].field_2304)
                    mem[_1313 + 96] = uint256(sub_ba324e64[arg1 << 192][idx].field_2560)
                    mem[_1312 + 96] = _1313
                    mem[s] = _1312
                    s = s + 32
                    idx = idx + 1
                    continue 
                _1317 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1317 len 64] = code.data[24142 len 64]
                _1333 = mem[64]
                mem[64] = mem[64] + 64
                require mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32] >= mem[mem[2080] + 32]
                require mem[mem[2112] + 64] >= 0
                mem[_1333] = mem[mem[2112] + 64] + mem[mem[mem[2112] + 96] + 32] + mem[mem[2080] + 32]
                require mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32] >= mem[mem[2112] + 32]
                require mem[mem[2080] + 64] >= 0
                mem[_1333 + 32] = mem[mem[2080] + 64] + mem[mem[mem[2080] + 96] + 32] + mem[mem[2112] + 32]
                idx = 0
                while idx < 2:
                    require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] >= mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                    require idx < 2
                    if mem[(32 * idx) + _1333] >= mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32]:
                        require idx < 2
                        require mem[mem[(32 * idx) + 2080] + 64] + mem[mem[mem[(32 * idx) + 2080] + 96] + 32] <= mem[(32 * idx) + _1333]
                        require idx < 2
                        mem[(32 * idx) + _1333] = mem[(32 * idx) + _1333] - mem[mem[(32 * idx) + 2080] + 64] - mem[mem[mem[(32 * idx) + 2080] + 96] + 32]
                        idx = idx + 1
                        continue 
                    uint256(sub_ba324e64[arg1 << 192].field_0) = 0
                    uint8(sub_ba324e64[arg1 << 192].field_768) = 1
                    uint256(sub_ba324e64[arg1 << 192].field_1792) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2048) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2304) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_2560) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3584) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_3840) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4096) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_4352) = 0
                    sub_ba324e64[arg1 << 192].field_4864 = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5120) = 0
                    uint256(sub_ba324e64[arg1 << 192].field_5376) = 0
                    uint64(sub_ba324e64[arg1 << 192].field_5632) = 0
                    emit 0x9f42c538: arg1
                uint8(sub_ba324e64[arg1 << 192].field_768) = 3
                mem[mem[64]] = arg1
                mem[mem[64] + 32 len 64] = mem[_1333 len 64]
                emit 0xd1ca6910: arg1 << 192, mem[mem[64] + 32 len 64]
                _1509 = mem[_1333]
                if not sub_ba324e64[arg1 << 192].field_1024:
                    revert with 0, 'transfer to address is 0'
                if mem[_1333]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_1024 with:
                           value mem[_1333] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        mem[mem[64] + 4] = sub_ba324e64[arg1 << 192].field_1024
                        mem[mem[64] + 36] = _1509
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_1024, _1509
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if not sub_ba324e64[arg1 << 192].field_2816:
                    revert with 0, 'transfer to address is 0'
                if mem[_1333 + 32]:
                    require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                    if uint8(sub_ba324e64[arg1 << 192].field_512) == 1:
                        call sub_ba324e64[arg1 << 192].field_2816 with:
                           value mem[_1333 + 32] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint8(sub_ba324e64[arg1 << 192].field_512) <= 2
                        require uint8(sub_ba324e64[arg1 << 192].field_512) == 2
                        require ext_code.size(sub_ba324e64[arg1 << 192].field_520)
                        call sub_ba324e64[arg1 << 192].field_520.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_ba324e64[arg1 << 192].field_2816, mem[_1333 + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
}



}
