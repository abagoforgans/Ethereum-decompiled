contract main {




// =====================  Runtime code  =====================


const sub_f83c3289(?) = 3


address owner;
address oracleAddress;
array of uint256 stor10;
mapping of struct sub_0b52b415;
mapping of address sub_166ea3c2;
address platformAddress;
address holderAddress;
address stor4;
address stor5;
uint256 sub_744d1795;
uint256 sub_550d5a4f;
uint256 holderPercent;
uint32 sub_86a3cd27;

function sub_0b52b415(?) {
    require calldata.size - 4 >= 32
    return sub_0b52b415[arg1 << 224].field_512
}

function sub_166ea3c2(?) {
    require calldata.size - 4 >= 32
    return sub_166ea3c2[arg1]
}

function sub_2203fba7(?) {
    require calldata.size - 4 >= 32
    return sub_0b52b415[arg1 << 224].field_32
}

function sub_2789d290(?) {
    require calldata.size - 4 >= 32
    return sub_166ea3c2[address(arg1)]
}

function sub_550d5a4f(?) {
    return sub_550d5a4f
}

function sub_73b9540a(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor10.length
    return sub_73b9540a[uint8(arg1)]
}

function sub_744d1795(?) {
    return sub_744d1795
}

function sub_86a3cd27(?) {
    return sub_86a3cd27
}

function owner() {
    return owner
}

function sub_96326b65(?) {
    require calldata.size - 4 >= 32
    return sub_0b52b415[arg1 << 224].field_256
}

function holderAddress() {
    return holderAddress
}

function holderPercent() {
    return holderPercent
}

function oracleAddress() {
    return oracleAddress
}

function platformAddress() {
    return platformAddress
}

function sub_eef66713(?) {
    require calldata.size - 4 >= 32
    return sub_0b52b415[arg1].field_0, sub_0b52b415[arg1].field_0, sub_0b52b415[arg1].field_256, sub_0b52b415[arg1].field_512
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_0efec2bc(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5 = arg1
}

function sub_a39acca0(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor4 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_84b7a3f6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    oracleAddress = arg1
    return 1
}

function setHolderAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    holderAddress = arg1
}

function setPlatformAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    platformAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_960960ce(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, '', mem[164]
    if arg1 > 1000:
        revert with 0, '', mem[164]
    sub_550d5a4f = arg1
}

function sub_ff001b32(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, '', mem[164]
    if arg1 > 1000:
        revert with 0, '', mem[164]
    sub_744d1795 = arg1
}

function setHolderPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0, '', mem[164]
    if arg1 > 1000:
        revert with 0, '', mem[164]
    holderPercent = arg1
}

function sub_ffb26076(?) {
    require calldata.size - 4 >= 64
    require msg.sender == oracleAddress
    if sub_166ea3c2[address(arg1)]:
        revert with 0, '', mem[164]
    sub_166ea3c2[address(arg1)] = arg2
    emit ReferralAdded(address(arg2), address(arg1), block.timestamp);
}

function withdrawEther(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.0x94081e21 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_879bc912(?) {
    require calldata.size - 4 >= 32
    require msg.sender == oracleAddress
    sub_0b52b415[arg1 << 224].field_0 = 0
    sub_0b52b415[arg1 << 224].field_256 = 0
    sub_0b52b415[arg1 << 224].field_512 = 0
    emit 0xea3bb2bf: arg1 << 224, sub_0b52b415[arg1 << 224].field_0, sub_0b52b415[arg1 << 224].field_256, sub_0b52b415[arg1 << 224].field_512, block.timestamp
}

function sub_663ada8c(?) {
    require calldata.size - 4 >= 128
    require msg.sender == oracleAddress
    if arg4 < 0:
        revert with 0, '', mem[164]
    if arg4 > 1000:
        revert with 0, '', mem[164]
    if not sub_0b52b415[arg1 << 224].field_32:
        stor10.length++
        stor10[stor10.length.field_3].field_0 = arg1 * 256^(4 * stor10.length % 8) or stor10[stor10.length.field_3].field_0 and !(test266151307() * 256^(4 * stor10.length % 8))
    sub_0b52b415[arg1 << 224].field_0 = arg1
    sub_0b52b415[arg1 << 224].field_32 = arg2
    sub_0b52b415[arg1 << 224].field_256 = arg3
    sub_0b52b415[arg1 << 224].field_512 = arg4
    emit 0xa6401b8c: arg1 << 224, address(arg2), address(arg3), arg4, block.timestamp
}

function sub_5968327d(?) {
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = uint32(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = uint32(stor10.field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
        idx = idx + 32
        s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
        continue 
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return Array(len=stor10.length, data=mem[128 len floor32(stor10.length)], mem[(32 * stor10.length) + floor32(stor10.length) + 192 len (32 * stor10.length) - floor32(stor10.length)]), 
}

function sub_07807102(?) {
    require calldata.size - 4 >= 96
    if stor4 != msg.sender:
        revert with 0, '', mem[164]
    if sub_0b52b415[arg3 << 224].field_32:
        if not holderPercent:
            if not sub_744d1795:
                if not sub_550d5a4f:
                    if sub_0b52b415[arg3 << 224].field_512:
                        if sub_0b52b415[arg3 << 224].field_512:
                            require not 0 / sub_0b52b415[arg3 << 224].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[arg3 << 224].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[arg3 << 224].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[arg3 << 224].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / sub_0b52b415[arg3 << 224].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000), sub_0b52b415[arg3 << 224].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, 0, block.timestamp
            else:
                require arg2 * sub_744d1795 / sub_744d1795 == arg2
                if not sub_550d5a4f:
                    if sub_0b52b415[arg3 << 224].field_512:
                        if sub_0b52b415[arg3 << 224].field_512:
                            require not 0 / sub_0b52b415[arg3 << 224].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[arg3 << 224].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[arg3 << 224].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[arg3 << 224].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / sub_0b52b415[arg3 << 224].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000), sub_0b52b415[arg3 << 224].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, arg2 * sub_744d1795 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, arg2 * sub_744d1795 / 1000, block.timestamp
            require ext_code.size(stor5)
            call stor5.0x94081e21 with:
                 gas gas_remaining wei
                args holderAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer commission to holder was fail'
            emit 0xb8fbf00d: address(arg1), holderAddress, 0, block.timestamp
        else:
            require arg2 * holderPercent / holderPercent == arg2
            if not sub_744d1795:
                if not sub_550d5a4f:
                    if sub_0b52b415[arg3 << 224].field_512:
                        if sub_0b52b415[arg3 << 224].field_512:
                            require not 0 / sub_0b52b415[arg3 << 224].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[arg3 << 224].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[arg3 << 224].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[arg3 << 224].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / sub_0b52b415[arg3 << 224].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000), sub_0b52b415[arg3 << 224].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, 0, block.timestamp
            else:
                require arg2 * sub_744d1795 / sub_744d1795 == arg2
                if not sub_550d5a4f:
                    if sub_0b52b415[arg3 << 224].field_512:
                        if sub_0b52b415[arg3 << 224].field_512:
                            require not 0 / sub_0b52b415[arg3 << 224].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[arg3 << 224].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[arg3 << 224].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[arg3 << 224].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, 0, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / sub_0b52b415[arg3 << 224].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[arg3 << 224].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000, sub_0b52b415[arg3 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[arg3 << 224].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[arg3 << 224].field_512 / 1000), sub_0b52b415[arg3 << 224].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, arg2 * sub_744d1795 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, arg2 * sub_744d1795 / 1000, block.timestamp
            require ext_code.size(stor5)
            call stor5.0x94081e21 with:
                 gas gas_remaining wei
                args holderAddress, arg2 * holderPercent / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer commission to holder was fail'
            emit 0xb8fbf00d: address(arg1), holderAddress, arg2 * holderPercent / 1000, block.timestamp
    else:
        if not holderPercent:
            if not sub_744d1795:
                if not sub_550d5a4f:
                    if sub_0b52b415[stor9].field_512:
                        if sub_0b52b415[stor9].field_512:
                            require not 0 / sub_0b52b415[stor9].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[stor9].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[stor9].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[stor9].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, 0, block.timestamp
            else:
                require arg2 * sub_744d1795 / sub_744d1795 == arg2
                if not sub_550d5a4f:
                    if sub_0b52b415[stor9].field_512:
                        if sub_0b52b415[stor9].field_512:
                            require not 0 / sub_0b52b415[stor9].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[stor9].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[stor9].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[stor9].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, arg2 * sub_744d1795 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, arg2 * sub_744d1795 / 1000, block.timestamp
            require ext_code.size(stor5)
            call stor5.0x94081e21 with:
                 gas gas_remaining wei
                args holderAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer commission to holder was fail'
            emit 0xb8fbf00d: address(arg1), holderAddress, 0, block.timestamp
        else:
            require arg2 * holderPercent / holderPercent == arg2
            if not sub_744d1795:
                if not sub_550d5a4f:
                    if sub_0b52b415[stor9].field_512:
                        if sub_0b52b415[stor9].field_512:
                            require not 0 / sub_0b52b415[stor9].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[stor9].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[stor9].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[stor9].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, 0, block.timestamp
            else:
                require arg2 * sub_744d1795 / sub_744d1795 == arg2
                if not sub_550d5a4f:
                    if sub_0b52b415[stor9].field_512:
                        if sub_0b52b415[stor9].field_512:
                            require not 0 / sub_0b52b415[stor9].field_512
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_256, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker reserve was fail'
                        emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args sub_0b52b415[stor9].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'transfer commission to broker was fail'
                    emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                else:
                    require arg2 * sub_550d5a4f / sub_550d5a4f == arg2
                    if not sub_0b52b415[stor9].field_512:
                        require ext_code.size(stor5)
                        call stor5.0x94081e21 with:
                             gas gas_remaining wei
                            args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer commission to broker was fail'
                        emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        if not sub_0b52b415[stor9].field_512:
                            require 0 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, arg2 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg2 * sub_550d5a4f / 1000
                            require arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg2 * sub_550d5a4f / 1000
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xf0d97f66: address(arg1), sub_0b52b415[stor9].field_256, arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker was fail'
                            emit 0x308a6a15: address(arg1), sub_0b52b415[stor9].field_0, (arg2 * sub_550d5a4f / 1000) - (arg2 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                require ext_code.size(stor5)
                call stor5.0x94081e21 with:
                     gas gas_remaining wei
                    args platformAddress, arg2 * sub_744d1795 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'transfer commission to platform was fail'
                emit 0x8b25c984: address(arg1), platformAddress, arg2 * sub_744d1795 / 1000, block.timestamp
            require ext_code.size(stor5)
            call stor5.0x94081e21 with:
                 gas gas_remaining wei
                args holderAddress, arg2 * holderPercent / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'transfer commission to holder was fail'
            emit 0xb8fbf00d: address(arg1), holderAddress, arg2 * holderPercent / 1000, block.timestamp
}

function sub_106805c6(?) {
    require calldata.size - 4 >= 64
    if stor4 != msg.sender:
        revert with 0, '', mem[164]
    if arg1:
        if sub_0b52b415[arg2 << 224].field_32:
            if not sub_744d1795:
                if not holderPercent:
                    if not sub_550d5a4f:
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                        else:
                            if sub_0b52b415[arg2 << 224].field_512:
                                require not 0 / sub_0b52b415[arg2 << 224].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                            emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[arg2 << 224].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / sub_0b52b415[arg2 << 224].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000), sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, 0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, 0, block.timestamp
                else:
                    require arg1 * holderPercent / holderPercent == arg1
                    if not sub_550d5a4f:
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                        else:
                            if sub_0b52b415[arg2 << 224].field_512:
                                require not 0 / sub_0b52b415[arg2 << 224].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                            emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[arg2 << 224].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / sub_0b52b415[arg2 << 224].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000), sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, 0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, arg1 * holderPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, arg1 * holderPercent / 1000, block.timestamp
            else:
                require arg1 * sub_744d1795 / sub_744d1795 == arg1
                if not holderPercent:
                    if not sub_550d5a4f:
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                        else:
                            if sub_0b52b415[arg2 << 224].field_512:
                                require not 0 / sub_0b52b415[arg2 << 224].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                            emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[arg2 << 224].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / sub_0b52b415[arg2 << 224].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000), sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, arg1 * sub_744d1795 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, arg1 * sub_744d1795 / 1000, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, 0, block.timestamp
                else:
                    require arg1 * holderPercent / holderPercent == arg1
                    if not sub_550d5a4f:
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                        else:
                            if sub_0b52b415[arg2 << 224].field_512:
                                require not 0 / sub_0b52b415[arg2 << 224].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[arg2 << 224].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[420]
                            emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[arg2 << 224].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, 0, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / sub_0b52b415[arg2 << 224].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[arg2 << 224].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000, sub_0b52b415[arg2 << 224].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[arg2 << 224].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[arg2 << 224].field_512 / 1000), sub_0b52b415[arg2 << 224].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, arg1 * sub_744d1795 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[arg2 << 224].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, arg1 * sub_744d1795 / 1000, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, arg1 * holderPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, arg1 * holderPercent / 1000, block.timestamp
        else:
            if not sub_744d1795:
                if not holderPercent:
                    if not sub_550d5a4f:
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                        else:
                            if sub_0b52b415[stor9].field_512:
                                require not 0 / sub_0b52b415[stor9].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                            emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[stor9].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, 0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, 0, block.timestamp
                else:
                    require arg1 * holderPercent / holderPercent == arg1
                    if not sub_550d5a4f:
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                        else:
                            if sub_0b52b415[stor9].field_512:
                                require not 0 / sub_0b52b415[stor9].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                            emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[stor9].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, 0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, arg1 * holderPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, arg1 * holderPercent / 1000, block.timestamp
            else:
                require arg1 * sub_744d1795 / sub_744d1795 == arg1
                if not holderPercent:
                    if not sub_550d5a4f:
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                        else:
                            if sub_0b52b415[stor9].field_512:
                                require not 0 / sub_0b52b415[stor9].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                            emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[stor9].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, arg1 * sub_744d1795 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, arg1 * sub_744d1795 / 1000, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, 0, block.timestamp
                else:
                    require arg1 * holderPercent / holderPercent == arg1
                    if not sub_550d5a4f:
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                        else:
                            if sub_0b52b415[stor9].field_512:
                                require not 0 / sub_0b52b415[stor9].field_512
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_256, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer commission to broker reserve was fail'
                            emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                        ('bool', ('ext_call.return_data', 0, 32))
                        emit 0xa91c41ad: sub_0b52b415[stor9].field_0, 0, sub_0b52b415[stor9].field_0, block.timestamp
                    else:
                        require arg1 * sub_550d5a4f / sub_550d5a4f == arg1
                        if not sub_0b52b415[stor9].field_512:
                            require ext_code.size(stor5)
                            call stor5.0x94081e21 with:
                                 gas gas_remaining wei
                                args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '', mem[548]
                            emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                        else:
                            if not sub_0b52b415[stor9].field_512:
                                require 0 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, 0, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, arg1 * sub_550d5a4f / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                            else:
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / sub_0b52b415[stor9].field_512 == arg1 * sub_550d5a4f / 1000
                                require arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000 <= arg1 * sub_550d5a4f / 1000
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'transfer commission to broker reserve was fail'
                                emit 0xb704f35d: sub_0b52b415[stor9].field_256, arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000, sub_0b52b415[stor9].field_0, block.timestamp
                                require ext_code.size(stor5)
                                call stor5.0x94081e21 with:
                                     gas gas_remaining wei
                                    args sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                                emit 0xa91c41ad: sub_0b52b415[stor9].field_0, (arg1 * sub_550d5a4f / 1000) - (arg1 * sub_550d5a4f / 1000 * sub_0b52b415[stor9].field_512 / 1000), sub_0b52b415[stor9].field_0, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args platformAddress, arg1 * sub_744d1795 / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', sub_0b52b415[stor9].field_0, Mask(32, 224, block.timestamp) >> 224
                    emit 0x7fff6159: platformAddress, arg1 * sub_744d1795 / 1000, block.timestamp
                    require ext_code.size(stor5)
                    call stor5.0x94081e21 with:
                         gas gas_remaining wei
                        args holderAddress, arg1 * holderPercent / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, '', Mask(224, 0, block.timestamp), Mask(32, 224, block.timestamp) >> 224
                    emit 0x9eff218a: holderAddress, arg1 * holderPercent / 1000, block.timestamp
}



}
