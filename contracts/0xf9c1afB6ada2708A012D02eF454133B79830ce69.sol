contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const supportsFactoryInterface = 1


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
address sub_b777171eAddress;
address sub_2de9b2d5Address;
address proxyRegistryAddress;
array of uint256 baseURI;
uint256 stor8;
uint256 numOptions;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint16 stor23;
uint16 stor23; offset 16
uint16 stor23; offset 32
uint16 stor23; offset 48
uint16 stor23; offset 64
uint16 stor23; offset 80
uint16 stor23; offset 96
uint16 stor23; offset 112
uint16 stor23; offset 128
uint16 stor23; offset 144
uint16 stor23; offset 160
uint16 stor23; offset 176

function sub_2de9b2d5(?) {
    return sub_2de9b2d5Address
}

function isPauser(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function numOptions() {
    return numOptions
}

function paused() {
    return bool(stor2)
}

function ownerOf(uint256 arg1) {
    return owner
}

function baseURI() {
    return baseURI[0 len baseURI.length]
}

function owner() {
    return owner
}

function sub_b777171e(?) {
    return sub_b777171eAddress
}

function proxyRegistryAddress() {
    return proxyRegistryAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_82bd2cbf(?) {
    require msg.sender == owner
    sub_b777171eAddress = arg1
}

function sub_f17af0e7(?) {
    require msg.sender == owner
    sub_2de9b2d5Address = arg1
}

function setProxyRegistryAddress(address arg1) {
    require msg.sender == owner
    proxyRegistryAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function isApprovedForAll(address arg1, address arg2) {
    if owner != arg1:
        return 0
    if arg1 != arg2:
        if owner != arg1:
            return 0
        if proxyRegistryAddress != arg2:
            return 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.0xdb098ead with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function canMint(uint256 arg1) {
    if arg1 >= numOptions:
        return 0
    require ext_code.size(sub_b777171eAddress)
    call sub_b777171eAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == stor10:
        return (ext_call.return_data[0] < stor8 - 12)
    return (ext_call.return_data[0] < stor8 - 1)
}

function mint(uint256 arg1, address arg2) {
    require not stor2
    stor3++
    if proxyRegistryAddress == msg.sender:
        require arg1 < numOptions
        require ext_code.size(sub_b777171eAddress)
        call sub_b777171eAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == stor10:
            require ext_call.return_data[0] < stor8 - 12
            if arg1 == stor11:
                if arg1 != stor10:
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0x95d304b2 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_b777171eAddress)
                    call sub_b777171eAddress.0xdb098ead with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                    emit 0x20b2cfa4: uint16(stor23.field_0)
            else:
                if arg1 == stor12:
                    if arg1 != stor10:
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0x95d304b2 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_b777171eAddress)
                        call sub_b777171eAddress.0xdb098ead with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                        emit 0x20b2cfa4: uint16(stor23.field_16)
                else:
                    if arg1 == stor13:
                        if arg1 != stor10:
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0x95d304b2 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b777171eAddress)
                            call sub_b777171eAddress.0xdb098ead with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                            emit 0x20b2cfa4: uint16(stor23.field_32)
                    else:
                        if arg1 == stor14:
                            if arg1 != stor10:
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0x95d304b2 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b777171eAddress)
                                call sub_b777171eAddress.0xdb098ead with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                emit 0x20b2cfa4: uint16(stor23.field_48)
                        else:
                            if arg1 == stor15:
                                if arg1 != stor10:
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_b777171eAddress)
                                    call sub_b777171eAddress.0xdb098ead with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                    emit 0x20b2cfa4: uint16(stor23.field_64)
                            else:
                                if arg1 == stor16:
                                    if arg1 != stor10:
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_b777171eAddress)
                                        call sub_b777171eAddress.0xdb098ead with:
                                             gas gas_remaining wei
                                            args address(arg2), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                        emit 0x20b2cfa4: uint16(stor23.field_80)
                                else:
                                    if arg1 == stor17:
                                        if arg1 != stor10:
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_b777171eAddress)
                                            call sub_b777171eAddress.0xdb098ead with:
                                                 gas gas_remaining wei
                                                args address(arg2), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                            emit 0x20b2cfa4: uint16(stor23.field_96)
                                    else:
                                        if arg1 == stor18:
                                            if arg1 != stor10:
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_b777171eAddress)
                                                call sub_b777171eAddress.0xdb098ead with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                emit 0x20b2cfa4: uint16(stor23.field_112)
                                        else:
                                            if arg1 == stor19:
                                                if arg1 != stor10:
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(sub_b777171eAddress)
                                                    call sub_b777171eAddress.0xdb098ead with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                    emit 0x20b2cfa4: uint16(stor23.field_128)
                                            else:
                                                if arg1 == stor20:
                                                    if arg1 != stor10:
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(sub_b777171eAddress)
                                                        call sub_b777171eAddress.0xdb098ead with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                        emit 0x20b2cfa4: uint16(stor23.field_144)
                                                else:
                                                    if arg1 == stor21:
                                                        if arg1 != stor10:
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(sub_b777171eAddress)
                                                            call sub_b777171eAddress.0xdb098ead with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                            emit 0x20b2cfa4: uint16(stor23.field_160)
                                                    else:
                                                        if arg1 == stor22:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4: uint16(stor23.field_176)
                                                        else:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4 
                                                                emit 0x0 
                                                            else:
                                                                idx = uint16(stor23.field_0)
                                                                s = 0
                                                                s = 0
                                                                while uint16(idx) <= uint16(stor23.field_176):
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    mem[132] = ext_call.return_data[0]
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[96] = 0xf8b47ea400000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = uint16(idx)
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16(idx)
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    s = idx
                                                                    continue 
                                                                if arg1 != stor10:
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((41002 * None) + (-41002 * uint16(stor23.field_0)) + 41002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((41002 * None) + (-41002 * uint16(stor23.field_0)) + 41002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16((41002 * None) + (-41002 * uint16(stor23.field_0)) + 41002)
        else:
            require ext_call.return_data[0] < stor8 - 1
            if arg1 == stor11:
                if arg1 != stor10:
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0x95d304b2 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_b777171eAddress)
                    call sub_b777171eAddress.0xdb098ead with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                    emit 0x20b2cfa4: uint16(stor23.field_0)
            else:
                if arg1 == stor12:
                    if arg1 != stor10:
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0x95d304b2 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_b777171eAddress)
                        call sub_b777171eAddress.0xdb098ead with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                        emit 0x20b2cfa4: uint16(stor23.field_16)
                else:
                    if arg1 == stor13:
                        if arg1 != stor10:
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0x95d304b2 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b777171eAddress)
                            call sub_b777171eAddress.0xdb098ead with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                            emit 0x20b2cfa4: uint16(stor23.field_32)
                    else:
                        if arg1 == stor14:
                            if arg1 != stor10:
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0x95d304b2 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b777171eAddress)
                                call sub_b777171eAddress.0xdb098ead with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                emit 0x20b2cfa4: uint16(stor23.field_48)
                        else:
                            if arg1 == stor15:
                                if arg1 != stor10:
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_b777171eAddress)
                                    call sub_b777171eAddress.0xdb098ead with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                    emit 0x20b2cfa4: uint16(stor23.field_64)
                            else:
                                if arg1 == stor16:
                                    if arg1 != stor10:
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_b777171eAddress)
                                        call sub_b777171eAddress.0xdb098ead with:
                                             gas gas_remaining wei
                                            args address(arg2), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                        emit 0x20b2cfa4: uint16(stor23.field_80)
                                else:
                                    if arg1 == stor17:
                                        if arg1 != stor10:
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_b777171eAddress)
                                            call sub_b777171eAddress.0xdb098ead with:
                                                 gas gas_remaining wei
                                                args address(arg2), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                            emit 0x20b2cfa4: uint16(stor23.field_96)
                                    else:
                                        if arg1 == stor18:
                                            if arg1 != stor10:
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_b777171eAddress)
                                                call sub_b777171eAddress.0xdb098ead with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                emit 0x20b2cfa4: uint16(stor23.field_112)
                                        else:
                                            if arg1 == stor19:
                                                if arg1 != stor10:
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(sub_b777171eAddress)
                                                    call sub_b777171eAddress.0xdb098ead with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                    emit 0x20b2cfa4: uint16(stor23.field_128)
                                            else:
                                                if arg1 == stor20:
                                                    if arg1 != stor10:
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(sub_b777171eAddress)
                                                        call sub_b777171eAddress.0xdb098ead with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                        emit 0x20b2cfa4: uint16(stor23.field_144)
                                                else:
                                                    if arg1 == stor21:
                                                        if arg1 != stor10:
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(sub_b777171eAddress)
                                                            call sub_b777171eAddress.0xdb098ead with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                            emit 0x20b2cfa4: uint16(stor23.field_160)
                                                    else:
                                                        if arg1 == stor22:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4: uint16(stor23.field_176)
                                                        else:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4 
                                                                emit 0x0 
                                                            else:
                                                                idx = uint16(stor23.field_0)
                                                                s = 0
                                                                s = 0
                                                                while uint16(idx) <= uint16(stor23.field_176):
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    mem[132] = ext_call.return_data[0]
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[96] = 0xf8b47ea400000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = uint16(idx)
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16(idx)
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    s = idx
                                                                    continue 
                                                                if arg1 != stor10:
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((39002 * None) + (-39002 * uint16(stor23.field_0)) + 39002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((39002 * None) + (-39002 * uint16(stor23.field_0)) + 39002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16((39002 * None) + (-39002 * uint16(stor23.field_0)) + 39002)
    else:
        require owner == msg.sender
        require arg1 < numOptions
        require ext_code.size(sub_b777171eAddress)
        call sub_b777171eAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == stor10:
            require ext_call.return_data[0] < stor8 - 12
            if arg1 == stor11:
                if arg1 != stor10:
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0x95d304b2 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_b777171eAddress)
                    call sub_b777171eAddress.0xdb098ead with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                    emit 0x20b2cfa4: uint16(stor23.field_0)
            else:
                if arg1 == stor12:
                    if arg1 != stor10:
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0x95d304b2 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_b777171eAddress)
                        call sub_b777171eAddress.0xdb098ead with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                        emit 0x20b2cfa4: uint16(stor23.field_16)
                else:
                    if arg1 == stor13:
                        if arg1 != stor10:
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0x95d304b2 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b777171eAddress)
                            call sub_b777171eAddress.0xdb098ead with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                            emit 0x20b2cfa4: uint16(stor23.field_32)
                    else:
                        if arg1 == stor14:
                            if arg1 != stor10:
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0x95d304b2 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b777171eAddress)
                                call sub_b777171eAddress.0xdb098ead with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                emit 0x20b2cfa4: uint16(stor23.field_48)
                        else:
                            if arg1 == stor15:
                                if arg1 != stor10:
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_b777171eAddress)
                                    call sub_b777171eAddress.0xdb098ead with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                    emit 0x20b2cfa4: uint16(stor23.field_64)
                            else:
                                if arg1 == stor16:
                                    if arg1 != stor10:
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_b777171eAddress)
                                        call sub_b777171eAddress.0xdb098ead with:
                                             gas gas_remaining wei
                                            args address(arg2), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                        emit 0x20b2cfa4: uint16(stor23.field_80)
                                else:
                                    if arg1 == stor17:
                                        if arg1 != stor10:
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_b777171eAddress)
                                            call sub_b777171eAddress.0xdb098ead with:
                                                 gas gas_remaining wei
                                                args address(arg2), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                            emit 0x20b2cfa4: uint16(stor23.field_96)
                                    else:
                                        if arg1 == stor18:
                                            if arg1 != stor10:
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_b777171eAddress)
                                                call sub_b777171eAddress.0xdb098ead with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                emit 0x20b2cfa4: uint16(stor23.field_112)
                                        else:
                                            if arg1 == stor19:
                                                if arg1 != stor10:
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(sub_b777171eAddress)
                                                    call sub_b777171eAddress.0xdb098ead with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                    emit 0x20b2cfa4: uint16(stor23.field_128)
                                            else:
                                                if arg1 == stor20:
                                                    if arg1 != stor10:
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(sub_b777171eAddress)
                                                        call sub_b777171eAddress.0xdb098ead with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                        emit 0x20b2cfa4: uint16(stor23.field_144)
                                                else:
                                                    if arg1 == stor21:
                                                        if arg1 != stor10:
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(sub_b777171eAddress)
                                                            call sub_b777171eAddress.0xdb098ead with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                            emit 0x20b2cfa4: uint16(stor23.field_160)
                                                    else:
                                                        if arg1 == stor22:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4: uint16(stor23.field_176)
                                                        else:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4 
                                                                emit 0x0 
                                                            else:
                                                                idx = uint16(stor23.field_0)
                                                                s = 0
                                                                s = 0
                                                                while uint16(idx) <= uint16(stor23.field_176):
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    mem[132] = ext_call.return_data[0]
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[96] = 0xf8b47ea400000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = uint16(idx)
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16(idx)
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    s = idx
                                                                    continue 
                                                                if arg1 != stor10:
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((44002 * None) + (-44002 * uint16(stor23.field_0)) + 44002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((44002 * None) + (-44002 * uint16(stor23.field_0)) + 44002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16((44002 * None) + (-44002 * uint16(stor23.field_0)) + 44002)
        else:
            require ext_call.return_data[0] < stor8 - 1
            if arg1 == stor11:
                if arg1 != stor10:
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0x95d304b2 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_b777171eAddress)
                    call sub_b777171eAddress.0xdb098ead with:
                         gas gas_remaining wei
                        args address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_2de9b2d5Address)
                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                         gas gas_remaining wei
                        args uint16(stor23.field_0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                    emit 0x20b2cfa4: uint16(stor23.field_0)
            else:
                if arg1 == stor12:
                    if arg1 != stor10:
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0x95d304b2 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_b777171eAddress)
                        call sub_b777171eAddress.0xdb098ead with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_2de9b2d5Address)
                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                             gas gas_remaining wei
                            args uint16(stor23.field_16)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                        emit 0x20b2cfa4: uint16(stor23.field_16)
                else:
                    if arg1 == stor13:
                        if arg1 != stor10:
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0x95d304b2 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_b777171eAddress)
                            call sub_b777171eAddress.0xdb098ead with:
                                 gas gas_remaining wei
                                args address(arg2), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_2de9b2d5Address)
                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                 gas gas_remaining wei
                                args uint16(stor23.field_32)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                            emit 0x20b2cfa4: uint16(stor23.field_32)
                    else:
                        if arg1 == stor14:
                            if arg1 != stor10:
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0x95d304b2 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_b777171eAddress)
                                call sub_b777171eAddress.0xdb098ead with:
                                     gas gas_remaining wei
                                    args address(arg2), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(sub_2de9b2d5Address)
                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                     gas gas_remaining wei
                                    args uint16(stor23.field_48)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                emit 0x20b2cfa4: uint16(stor23.field_48)
                        else:
                            if arg1 == stor15:
                                if arg1 != stor10:
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(sub_b777171eAddress)
                                    call sub_b777171eAddress.0xdb098ead with:
                                         gas gas_remaining wei
                                        args address(arg2), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(sub_2de9b2d5Address)
                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                         gas gas_remaining wei
                                        args uint16(stor23.field_64)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                    emit 0x20b2cfa4: uint16(stor23.field_64)
                            else:
                                if arg1 == stor16:
                                    if arg1 != stor10:
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(sub_b777171eAddress)
                                        call sub_b777171eAddress.0xdb098ead with:
                                             gas gas_remaining wei
                                            args address(arg2), ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(sub_2de9b2d5Address)
                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                             gas gas_remaining wei
                                            args uint16(stor23.field_80)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                        emit 0x20b2cfa4: uint16(stor23.field_80)
                                else:
                                    if arg1 == stor17:
                                        if arg1 != stor10:
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(sub_b777171eAddress)
                                            call sub_b777171eAddress.0xdb098ead with:
                                                 gas gas_remaining wei
                                                args address(arg2), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(sub_2de9b2d5Address)
                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                 gas gas_remaining wei
                                                args uint16(stor23.field_96)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                            emit 0x20b2cfa4: uint16(stor23.field_96)
                                    else:
                                        if arg1 == stor18:
                                            if arg1 != stor10:
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(sub_b777171eAddress)
                                                call sub_b777171eAddress.0xdb098ead with:
                                                     gas gas_remaining wei
                                                    args address(arg2), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(sub_2de9b2d5Address)
                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                     gas gas_remaining wei
                                                    args uint16(stor23.field_112)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                emit 0x20b2cfa4: uint16(stor23.field_112)
                                        else:
                                            if arg1 == stor19:
                                                if arg1 != stor10:
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(sub_b777171eAddress)
                                                    call sub_b777171eAddress.0xdb098ead with:
                                                         gas gas_remaining wei
                                                        args address(arg2), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(sub_2de9b2d5Address)
                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                         gas gas_remaining wei
                                                        args uint16(stor23.field_128)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                    emit 0x20b2cfa4: uint16(stor23.field_128)
                                            else:
                                                if arg1 == stor20:
                                                    if arg1 != stor10:
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0x95d304b2 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(sub_b777171eAddress)
                                                        call sub_b777171eAddress.0xdb098ead with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(sub_2de9b2d5Address)
                                                        call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                             gas gas_remaining wei
                                                            args uint16(stor23.field_144)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                        emit 0x20b2cfa4: uint16(stor23.field_144)
                                                else:
                                                    if arg1 == stor21:
                                                        if arg1 != stor10:
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0x95d304b2 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(sub_b777171eAddress)
                                                            call sub_b777171eAddress.0xdb098ead with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(sub_2de9b2d5Address)
                                                            call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                 gas gas_remaining wei
                                                                args uint16(stor23.field_160)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                            emit 0x20b2cfa4: uint16(stor23.field_160)
                                                    else:
                                                        if arg1 == stor22:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args uint16(stor23.field_176)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4: uint16(stor23.field_176)
                                                        else:
                                                            if arg1 != stor10:
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0x95d304b2 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 32
                                                                require ext_code.size(sub_b777171eAddress)
                                                                call sub_b777171eAddress.0xdb098ead with:
                                                                     gas gas_remaining wei
                                                                    args address(arg2), ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(sub_2de9b2d5Address)
                                                                call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                     gas gas_remaining wei
                                                                    args 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                emit 0x20b2cfa4 
                                                                emit 0x0 
                                                            else:
                                                                idx = uint16(stor23.field_0)
                                                                s = 0
                                                                s = 0
                                                                while uint16(idx) <= uint16(stor23.field_176):
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    mem[132] = ext_call.return_data[0]
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    mem[96] = 0xf8b47ea400000000000000000000000000000000000000000000000000000000
                                                                    mem[100] = uint16(idx)
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16(idx)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16(idx)
                                                                    idx = idx + 1
                                                                    s = ext_call.return_data[0]
                                                                    s = idx
                                                                    continue 
                                                                if arg1 != stor10:
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0x95d304b2 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((42002 * None) + (-42002 * uint16(stor23.field_0)) + 42002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require return_data.size >= 32
                                                                    require ext_code.size(sub_b777171eAddress)
                                                                    call sub_b777171eAddress.0xdb098ead with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    require ext_code.size(sub_2de9b2d5Address)
                                                                    call sub_2de9b2d5Address.0xf8b47ea4 with:
                                                                         gas gas_remaining wei
                                                                        args uint16((42002 * None) + (-42002 * uint16(stor23.field_0)) + 42002)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0x3045d1db: ext_call.return_data[0], uint64(block.timestamp), arg2
                                                                    emit 0x20b2cfa4: uint16((42002 * None) + (-42002 * uint16(stor23.field_0)) + 42002)
    require stor3 == stor3
}



}
