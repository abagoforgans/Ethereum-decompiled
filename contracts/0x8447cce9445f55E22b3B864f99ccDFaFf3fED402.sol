contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
uint256 stor3;
address sub_0e675d13Address;
address sub_996bf1bdAddress;
address referrersAddress;
uint8 stor7; offset 160
uint128 stor7; offset 160
address sub_d95b18ebAddress;
uint256 sub_4a8f8570;
uint256 stor9;
mapping of uint8 stor10;
uint8 sub_a8665ac5;
uint8 sub_63e964f5; offset 8

function sub_0e675d13(?) {
    return sub_0e675d13Address
}

function referrers() {
    return referrersAddress
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_4a8f8570(?) {
    return sub_4a8f8570
}

function sub_5282f59a(?) {
    return bool(uint8(stor7.field_160))
}

function paused() {
    return bool(stor2)
}

function sub_63e964f5(?) {
    return sub_63e964f5
}

function sub_70f46b82(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function owner() {
    return owner
}

function sub_996bf1bd(?) {
    return sub_996bf1bdAddress
}

function sub_a8665ac5(?) {
    return sub_a8665ac5
}

function sub_d95b18eb(?) {
    return sub_d95b18ebAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_4cdb312d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor9 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_254ed464(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    referrersAddress = arg1
}

function sub_2e875794(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_0e675d13Address = arg1
}

function sub_65f892ad(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_996bf1bdAddress = arg1
}

function setValidater(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d95b18ebAddress = arg1
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

function setPayableOption(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor10[arg1] = uint8(arg2)
}

function sub_76393f91(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_4a8f8570 = arg1
    emit 0xf2e2bef8: sub_4a8f8570
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_16fceb39(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
    emit 0x696c2128: bool(uint8(stor7.field_160))
}

function sub_48098db3(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        if arg1 == 1:
            require arg1 != 3
    sub_63e964f5 = arg1
    emit 0xf9f1f4c9: sub_63e964f5
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function withdrawEther() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_65fe6fd4(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require not stor2
    stor3++
    require stor10[msg.value]
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require sub_d95b18ebAddress
    mem[ceil32(arg3.length) + 160] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg3.length) + 188] = msg.sender + arg1
    mem[ceil32(arg3.length) + 128] = 60
    if arg3.length != 65:
        if sub_d95b18ebAddress != 0:
            revert with 0, 'invalid signature'
    else:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
            signer = erecover(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            if address(signer) != sub_d95b18ebAddress:
                revert with 0, 'invalid signature'
        else:
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                if sub_d95b18ebAddress != 0:
                    revert with 0, 'invalid signature'
            else:
                signer = erecover(sha3(mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != sub_d95b18ebAddress:
                    revert with 0, 'invalid signature'
    if arg2 != msg.sender:
        if not arg2:
            require ext_code.size(sub_0e675d13Address)
            staticcall sub_0e675d13Address.0xfbba7b62 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
            else:
                if not msg.value:
                    require 0 <= msg.value
                    require ext_code.size(sub_996bf1bdAddress)
                    call sub_996bf1bdAddress.0xe274e18e with:
                         gas gas_remaining wei
                        args arg1 << 240, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
                else:
                    require msg.value
                    require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                    require msg.value * sub_4a8f8570 / 100 <= msg.value
                    require ext_code.size(sub_996bf1bdAddress)
                    call sub_996bf1bdAddress.0xe274e18e with:
                       value msg.value * sub_4a8f8570 / 100 wei
                         gas gas_remaining wei
                        args arg1 << 240, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, arg2, arg1
        else:
            require ext_code.size(referrersAddress)
            staticcall referrersAddress.isReferrer(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_0e675d13Address)
                staticcall sub_0e675d13Address.0xfbba7b62 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
                else:
                    if not msg.value:
                        require 0 <= msg.value
                        require ext_code.size(sub_996bf1bdAddress)
                        call sub_996bf1bdAddress.0xe274e18e with:
                             gas gas_remaining wei
                            args arg1 << 240, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
                    else:
                        require msg.value
                        require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                        require msg.value * sub_4a8f8570 / 100 <= msg.value
                        require ext_code.size(sub_996bf1bdAddress)
                        call sub_996bf1bdAddress.0xe274e18e with:
                           value msg.value * sub_4a8f8570 / 100 wei
                             gas gas_remaining wei
                            args arg1 << 240, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, arg2, arg1
            else:
                if not msg.value:
                    require 0 <= msg.value
                    call arg2 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0e675d13Address)
                    staticcall sub_0e675d13Address.0xfbba7b62 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
                    else:
                        if not msg.value:
                            require 0 <= msg.value
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, arg2, arg1
                        else:
                            require msg.value
                            require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                            require msg.value * sub_4a8f8570 / 100 <= msg.value
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                               value msg.value * sub_4a8f8570 / 100 wei
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, arg2, arg1
                else:
                    require msg.value
                    require msg.value * stor9 / msg.value == stor9
                    require msg.value * stor9 / 100 <= msg.value
                    call arg2 with:
                       value msg.value * stor9 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0e675d13Address)
                    staticcall sub_0e675d13Address.0xfbba7b62 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, 0, msg.value - (msg.value * stor9 / 100), block.timestamp, msg.sender, arg2, arg1
                    else:
                        if not msg.value:
                            require 0 <= msg.value - (msg.value * stor9 / 100)
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, 0, msg.value - (msg.value * stor9 / 100), block.timestamp, msg.sender, arg2, arg1
                        else:
                            require msg.value
                            require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                            require msg.value * sub_4a8f8570 / 100 <= msg.value - (msg.value * stor9 / 100)
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                               value msg.value * sub_4a8f8570 / 100 wei
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * stor9 / 100) - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, arg2, arg1
    else:
        if not arg2:
            require ext_code.size(sub_0e675d13Address)
            staticcall sub_0e675d13Address.0xfbba7b62 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
            else:
                if not msg.value:
                    require 0 <= msg.value
                    require ext_code.size(sub_996bf1bdAddress)
                    call sub_996bf1bdAddress.0xe274e18e with:
                         gas gas_remaining wei
                        args arg1 << 240, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
                else:
                    require msg.value
                    require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                    require msg.value * sub_4a8f8570 / 100 <= msg.value
                    require ext_code.size(sub_996bf1bdAddress)
                    call sub_996bf1bdAddress.0xe274e18e with:
                       value msg.value * sub_4a8f8570 / 100 wei
                         gas gas_remaining wei
                        args arg1 << 240, msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, 0, arg1
        else:
            require ext_code.size(referrersAddress)
            staticcall referrersAddress.isReferrer(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_0e675d13Address)
                staticcall sub_0e675d13Address.0xfbba7b62 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
                else:
                    if not msg.value:
                        require 0 <= msg.value
                        require ext_code.size(sub_996bf1bdAddress)
                        call sub_996bf1bdAddress.0xe274e18e with:
                             gas gas_remaining wei
                            args arg1 << 240, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
                    else:
                        require msg.value
                        require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                        require msg.value * sub_4a8f8570 / 100 <= msg.value
                        require ext_code.size(sub_996bf1bdAddress)
                        call sub_996bf1bdAddress.0xe274e18e with:
                           value msg.value * sub_4a8f8570 / 100 wei
                             gas gas_remaining wei
                            args arg1 << 240, msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, 0, arg1
            else:
                if not msg.value:
                    require 0 <= msg.value
                    call arg2 with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0e675d13Address)
                    staticcall sub_0e675d13Address.0xfbba7b62 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
                    else:
                        if not msg.value:
                            require 0 <= msg.value
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, 0, 0, msg.value, block.timestamp, msg.sender, 0, arg1
                        else:
                            require msg.value
                            require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                            require msg.value * sub_4a8f8570 / 100 <= msg.value
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                               value msg.value * sub_4a8f8570 / 100 wei
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, 0, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, 0, arg1
                else:
                    require msg.value
                    require msg.value * stor9 / msg.value == stor9
                    require msg.value * stor9 / 100 <= msg.value
                    call arg2 with:
                       value msg.value * stor9 / 100 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_0e675d13Address)
                    staticcall sub_0e675d13Address.0xfbba7b62 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, 0, msg.value - (msg.value * stor9 / 100), block.timestamp, msg.sender, 0, arg1
                    else:
                        if not msg.value:
                            require 0 <= msg.value - (msg.value * stor9 / 100)
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, 0, msg.value - (msg.value * stor9 / 100), block.timestamp, msg.sender, 0, arg1
                        else:
                            require msg.value
                            require msg.value * sub_4a8f8570 / msg.value == sub_4a8f8570
                            require msg.value * sub_4a8f8570 / 100 <= msg.value - (msg.value * stor9 / 100)
                            require ext_code.size(sub_996bf1bdAddress)
                            call sub_996bf1bdAddress.0xe274e18e with:
                               value msg.value * sub_4a8f8570 / 100 wei
                                 gas gas_remaining wei
                                args arg1 << 240, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x829afbf7: sub_a8665ac5, msg.value, msg.value * stor9 / 100, msg.value * sub_4a8f8570 / 100, msg.value - (msg.value * stor9 / 100) - (msg.value * sub_4a8f8570 / 100), block.timestamp, msg.sender, 0, arg1
    require stor3 == stor3
}



}
