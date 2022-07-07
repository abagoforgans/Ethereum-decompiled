contract main {




// =====================  Runtime code  =====================


#
#  - sub_c0865042(?)
#
const VERSION = '1.0.0'


address authorityAddress;
uint8 stor1; offset 160
address owner;
address escrowAddress;
address sub_687cd9c1Address;
address reserveAddress;
address feeWalletAddress;
address configAddress;
address sub_2b612988Address;
array of struct orders;
mapping of struct sub_c559f686;
mapping of uint8 stor10;
array of struct sub_6dec3260;
mapping of uint8 stor12;
mapping of uint8 stor13;

function sub_2b612988(?) {
    return sub_2b612988Address
}

function isDefaulted(bytes32 arg1) {
    return bool(stor13[arg1])
}

function getOrder(bytes32 arg1) {
    return sub_c559f686[arg1].field_0, 
           sub_c559f686[arg1].field_256,
           sub_c559f686[arg1].field_512,
           sub_c559f686[arg1].field_768,
           sub_c559f686[arg1].field_1024,
           sub_c559f686[arg1].field_1280,
           sub_c559f686[arg1].field_1536,
           sub_c559f686[arg1].field_2048,
           sub_c559f686[arg1].field_2304,
           sub_c559f686[arg1].field_2560,
           sub_c559f686[arg1].field_2816
}

function sub_687cd9c1(?) {
    return sub_687cd9c1Address
}

function sub_6dec3260(?) {
    require arg2 < sub_6dec3260[arg1].field_0
    return sub_6dec3260[arg1][arg2].field_0
}

function stopped() {
    return bool(stor1)
}

function config() {
    return configAddress
}

function sub_81767155(?) {
    return bool(stor12[arg1])
}

function sub_8723555e(?) {
    return bool(stor10[arg1])
}

function owner() {
    return owner
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return orders[arg1].field_0
}

function authority() {
    return authorityAddress
}

function sub_c559f686(?) {
    return sub_c559f686[arg1].field_0, 
           sub_c559f686[arg1].field_256,
           sub_c559f686[arg1].field_512,
           sub_c559f686[arg1].field_768,
           sub_c559f686[arg1].field_1024,
           sub_c559f686[arg1].field_1280,
           sub_c559f686[arg1].field_1536,
           sub_c559f686[arg1].field_1792,
           sub_c559f686[arg1].field_2048,
           sub_c559f686[arg1].field_2304,
           sub_c559f686[arg1].field_2560,
           sub_c559f686[arg1].field_2816,
           sub_c559f686[arg1].field_3072
}

function reserve() {
    return reserveAddress
}

function escrow() {
    return escrowAddress
}

function feeWallet() {
    return feeWalletAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() {
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function getAllOrders() {
    if not orders.length:
        mem[(32 * orders.length) + 128] = 32
        mem[(32 * orders.length) + 160] = orders.length
        mem[(32 * orders.length) + 192 len floor32(orders.length)] = mem[128 len floor32(orders.length)]
        return memory
          from (32 * orders.length) + 128
           len (96 * orders.length) + 64
    mem[128] = uint256(orders.field_0)
    idx = 128
    s = 0
    while (32 * orders.length) + 96 > idx:
        mem[idx + 32] = orders[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * orders.length) + 192 len floor32(orders.length)] = mem[128 len floor32(orders.length)]
    return Array(len=orders.length, data=mem[128 len floor32(orders.length)], mem[(32 * orders.length) + floor32(orders.length) + 192 len (32 * orders.length) - floor32(orders.length)]), 
}

function setConfig(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    configAddress = arg1
}

function setEscrow(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    escrowAddress = arg1
}

function setReserve(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    reserveAddress = arg1
}

function setFeeWallet(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    feeWalletAddress = arg1
}

function sub_6d8a7b9d(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not address(arg1):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    sub_2b612988Address = address(arg1)
}

function setAccountFactory(address arg1) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, this.address, call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'DSAuth::_ SENDER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    sub_687cd9c1Address = arg1
}

function sub_20cd1649(?) {
    if not sub_c559f686[arg1].field_1536:
        require -sub_c559f686[arg1].field_2560 <= 0
        require sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560 >= sub_c559f686[arg1].field_1024
        return (sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560)
    require sub_c559f686[arg1].field_1536
    require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
    require (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560 <= sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18
    require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560 >= sub_c559f686[arg1].field_1024
    return (sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560)
}

function sub_359abaed(?) {
    if not sub_6dec3260[address(arg1)].field_0:
        mem[(32 * sub_6dec3260[address(arg1)].field_0) + 128] = 32
        mem[(32 * sub_6dec3260[address(arg1)].field_0) + 160] = sub_6dec3260[address(arg1)].field_0
        mem[(32 * sub_6dec3260[address(arg1)].field_0) + 192 len floor32(sub_6dec3260[address(arg1)].field_0)] = mem[128 len floor32(sub_6dec3260[address(arg1)].field_0)]
        return memory
          from (32 * sub_6dec3260[address(arg1)].field_0) + 128
           len (96 * sub_6dec3260[address(arg1)].field_0) + 64
    mem[128] = sub_6dec3260[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * sub_6dec3260[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = sub_6dec3260[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_6dec3260[address(arg1)].field_0) + 192 len floor32(sub_6dec3260[address(arg1)].field_0)] = mem[128 len floor32(sub_6dec3260[address(arg1)].field_0)]
    return Array(len=sub_6dec3260[address(arg1)].field_0, data=mem[128 len floor32(sub_6dec3260[address(arg1)].field_0)], mem[(32 * sub_6dec3260[address(arg1)].field_0) + floor32(sub_6dec3260[address(arg1)].field_0) + 192 len (32 * sub_6dec3260[address(arg1)].field_0) - floor32(sub_6dec3260[address(arg1)].field_0)]), 
}

function sub_0b7e2e97(?) {
    mem[608 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Kernel::_ INVALID_ADMIN_ACCOUNT'
    if not stor10[arg1]:
        emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 20, 'ORDER_DOES_NOT_EXIST', arg1
    else:
        if stor12[arg1]:
            emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 20, 'ORDER_ALREADY_REPAID', arg1
        else:
            if stor13[arg1]:
                emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 23, 'ORDER_ALREADY_DEFAULTED', arg1
            else:
                mem[628 len 64] = this.address, arg1, Mask(96, 160, arg2) >> 160
                mem[692 len 20] = address(arg2)
                mem[660 len arg3.length] = arg3[all]
                mem[ceil32(arg3.length) + 692] = '\x19Ethereum Signed Message:\n32'
                mem[ceil32(arg3.length) + 720] = sha3(this.address, arg1, arg2)
                mem[ceil32(arg3.length) + 660] = 60
                mem[ceil32(arg3.length) + 752] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, Mask(32, 224, sha3(this.address, arg1, arg2)) >> 224
                if arg3.length != 65:
                    require ext_code.size(sub_c559f686[arg1].field_0)
                    call sub_c559f686[arg1].field_0.isUser(address arg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) - 256) + 27):
                        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) - 256) + 27 << 248, mem[660], address(arg2), mem[712 len 12]) 
                        if not erecover.result:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_c559f686[arg1].field_0)
                        call sub_c559f686[arg1].field_0.isUser(address arg1) with:
                             gas gas_remaining wei
                            args address(signer)
                    else:
                        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) - 256) + 27) != 28:
                            require ext_code.size(sub_c559f686[arg1].field_0)
                            call sub_c559f686[arg1].field_0.isUser(address arg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, arg1, arg2)), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 724, 32))), 0) - 256) + 27 << 248, mem[660], address(arg2), mem[712 len 12]) 
                            if not erecover.result:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_c559f686[arg1].field_0)
                            call sub_c559f686[arg1].field_0.isUser(address arg1) with:
                                 gas gas_remaining wei
                                args address(signer)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 34, 'SIGNER_NOT_AUTHORIZED_WITH_ACCOU', 'NT', arg1
                else:
                    require ext_code.size(sub_c559f686[arg1].field_512)
                    call sub_c559f686[arg1].field_512.0x70a08231 with:
                         gas gas_remaining wei
                        args sub_c559f686[arg1].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 31, 'INSUFFICIENT_BALANCE_IN_ACCOUNT', arg1
                    else:
                        if not sub_c559f686[arg1].field_1536:
                            require -sub_c559f686[arg1].field_2560 <= 0
                            require sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560 >= sub_c559f686[arg1].field_1024
                            if sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560 > arg2:
                                emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 22, 'INSUFFICIENT_REPAYMENT', arg1
                            else:
                                if sub_c559f686[arg1].field_2560 > 0:
                                    require ext_code.size(escrowAddress)
                                    call escrowAddress.0x5e61e1c8 with:
                                         gas gas_remaining wei
                                        args sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, -sub_c559f686[arg1].field_2560, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(escrowAddress)
                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_1280
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12[stor9[arg1].field_3072] = 1
                                emit 0x2d538ae5: arg2, sub_c559f686[arg1].field_3072
                        else:
                            require sub_c559f686[arg1].field_1536
                            require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                            require (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560 <= sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18
                            require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560 >= sub_c559f686[arg1].field_1024
                            if sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560 > arg2:
                                emit 0xdb0b3415: 64, 128, 13, 0x4b65726e656c3a3a7265706179000000000000000000000000000000000000, 22, 'INSUFFICIENT_REPAYMENT', arg1
                            else:
                                if sub_c559f686[arg1].field_2560 > 0:
                                    require ext_code.size(escrowAddress)
                                    call escrowAddress.0x5e61e1c8 with:
                                         gas gas_remaining wei
                                        args sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560, (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) - sub_c559f686[arg1].field_2560, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(escrowAddress)
                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, sub_c559f686[arg1].field_1280
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                stor12[stor9[arg1].field_3072] = 1
                                emit 0x2d538ae5: arg2, sub_c559f686[arg1].field_3072
}

function sub_acfd6ce6(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Kernel::_ INVALID_ADMIN_ACCOUNT'
    if not stor10[arg1]:
        emit 0xdb0b3415: 64, 128, 15, 'Kernel::process', 20, 'ORDER_DOES_NOT_EXIST', arg1
    else:
        if stor12[arg1]:
            emit 0xdb0b3415: 64, 128, 15, 'Kernel::process', 20, 'ORDER_ALREADY_REPAID', arg1
        else:
            if stor13[arg1]:
                emit 0xdb0b3415: 64, 128, 15, 'Kernel::process', 23, 'ORDER_ALREADY_DEFAULTED', arg1
            else:
                if block.timestamp > sub_c559f686[arg1].field_2048:
                    stor13[arg1] = 1
                    if not sub_c559f686[arg1].field_1536:
                        require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                        require ext_code.size(sub_2b612988Address)
                        call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                            if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                            else:
                                require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                        else:
                            if sub_c559f686[arg1].field_2560 > 0:
                                require ext_code.size(escrowAddress)
                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                            require -sub_c559f686[arg1].field_2560 <= 0
                            require ext_code.size(reserveAddress)
                            call reserveAddress.0x106689a5 with:
                                 gas gas_remaining wei
                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(escrowAddress)
                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                    else:
                        require sub_c559f686[arg1].field_1536
                        require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                        require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                        require ext_code.size(sub_2b612988Address)
                        call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18):
                            if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                            else:
                                require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                        else:
                            if sub_c559f686[arg1].field_2560 > 0:
                                require ext_code.size(escrowAddress)
                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                     gas gas_remaining wei
                                    args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                            require -sub_c559f686[arg1].field_2560 <= 0
                            require ext_code.size(reserveAddress)
                            call reserveAddress.0x106689a5 with:
                                 gas gas_remaining wei
                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(escrowAddress)
                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                 gas gas_remaining wei
                                args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x98e393d0: 'DUE_DATE_PASSED', sub_c559f686[arg1].field_3072
                else:
                    if not arg2:
                        if not sub_c559f686[arg1].field_1536:
                            require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                            if 0 >= sub_c559f686[arg1].field_1024:
                                stor13[arg1] = 0
                            else:
                                stor13[arg1] = 1
                                if not sub_c559f686[arg1].field_1536:
                                    require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                else:
                                    require sub_c559f686[arg1].field_1536
                                    require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                                    require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18):
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x98e393d0: 'COLLATERAL_UNSAFE', sub_c559f686[arg1].field_3072
                        else:
                            require sub_c559f686[arg1].field_1536
                            require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                            require 3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 3 == sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18
                            require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                            require 3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 100 >= 0
                            if 0 >= sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) + (3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 100):
                                stor13[arg1] = 0
                            else:
                                stor13[arg1] = 1
                                if not sub_c559f686[arg1].field_1536:
                                    require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                else:
                                    require sub_c559f686[arg1].field_1536
                                    require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                                    require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18):
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x98e393d0: 'COLLATERAL_UNSAFE', sub_c559f686[arg1].field_3072
                    else:
                        require arg2
                        require sub_c559f686[arg1].field_1280 * arg2 / arg2 == sub_c559f686[arg1].field_1280
                        if not sub_c559f686[arg1].field_1536:
                            require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                            if sub_c559f686[arg1].field_1280 * arg2 / 10^18 >= sub_c559f686[arg1].field_1024:
                                stor13[arg1] = 0
                            else:
                                stor13[arg1] = 1
                                if not sub_c559f686[arg1].field_1536:
                                    require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                else:
                                    require sub_c559f686[arg1].field_1536
                                    require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                                    require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18):
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x98e393d0: 'COLLATERAL_UNSAFE', sub_c559f686[arg1].field_3072
                        else:
                            require sub_c559f686[arg1].field_1536
                            require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                            require 3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 3 == sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18
                            require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                            require 3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 100 >= 0
                            if sub_c559f686[arg1].field_1280 * arg2 / 10^18 >= sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) + (3 * sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18 / 100):
                                stor13[arg1] = 0
                            else:
                                stor13[arg1] = 1
                                if not sub_c559f686[arg1].field_1536:
                                    require sub_c559f686[arg1].field_1024 >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                else:
                                    require sub_c559f686[arg1].field_1536
                                    require sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / sub_c559f686[arg1].field_1536 == sub_c559f686[arg1].field_1024
                                    require sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18) >= sub_c559f686[arg1].field_1024
                                    require ext_code.size(sub_2b612988Address)
                                    call sub_2b612988Address.tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_512, sub_c559f686[arg1].field_1280, sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < sub_c559f686[arg1].field_1024 + (sub_c559f686[arg1].field_1024 * sub_c559f686[arg1].field_1536 / 10^18):
                                        if ext_call.return_data[0] < sub_c559f686[arg1].field_1024:
                                            require sub_c559f686[arg1].field_1024 - ext_call.return_data[0] <= sub_c559f686[arg1].field_1024
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], 0, sub_c559f686[arg1].field_1024 - ext_call.return_data[0]
                                        else:
                                            require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0], ext_call.return_data[0] - sub_c559f686[arg1].field_1024, 0
                                    else:
                                        if sub_c559f686[arg1].field_2560 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args sub_c559f686[arg1].field_512, feeWalletAddress, sub_c559f686[arg1].field_2560
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_2560 <= ext_call.return_data[0]
                                        require ext_call.return_data[0] - sub_c559f686[arg1].field_1024 <= ext_call.return_data[0]
                                        require -sub_c559f686[arg1].field_2560 <= 0
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_512, escrowAddress, ext_call.return_data[0] - sub_c559f686[arg1].field_2560, ext_call.return_data[0] - sub_c559f686[arg1].field_1024 - sub_c559f686[arg1].field_2560, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args sub_c559f686[arg1].field_768, sub_c559f686[arg1].field_0, ext_call.return_data[32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit 0x98e393d0: 'COLLATERAL_UNSAFE', sub_c559f686[arg1].field_3072
}



}
