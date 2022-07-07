contract main {




// =====================  Runtime code  =====================


#
#  - sub_67222326(?)
#  - sub_ebac0bd9(?)
#
address authorityAddress;
uint8 stor1; offset 160
address owner;
address escrowAddress;
address sub_687cd9c1Address;
address reserveAddress;
address feeWalletAddress;
address configAddress;
array of struct orders;
mapping of struct trade;
mapping of uint8 stor9;
array of struct sub_6dec3260;
mapping of uint256 sub_162cfaac;
mapping of uint8 stor12;
mapping of uint8 stor13;

function sub_162cfaac(?) {
    return sub_162cfaac[arg1]
}

function isDefaulted(bytes32 arg1) {
    return bool(stor13[arg1])
}

function sub_431025e1(?) {
    return bool(stor12[arg1])
}

function getOrder(bytes32 arg1) {
    return trade[arg1].field_0, 
           trade[arg1].field_256,
           trade[arg1].field_512,
           trade[arg1].field_768,
           trade[arg1].field_2304,
           trade[arg1].field_2560,
           trade[arg1].field_2816,
           trade[arg1].field_3072,
           trade[arg1].field_3584,
           trade[arg1].field_3840,
           trade[arg1].field_4096
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

function sub_8723555e(?) {
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function getTrade(bytes32 arg1) {
    return trade[arg1].field_1024, trade[arg1].field_1280, trade[arg1].field_1536, trade[arg1].field_1792, trade[arg1].field_2048
}

function orders(uint256 arg1) {
    require arg1 < orders.length
    return orders[arg1].field_0
}

function authority() {
    return authorityAddress
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

function sub_c559f686(?) {
    return trade[arg1].field_0, 
           trade[arg1].field_256,
           trade[arg1].field_512,
           trade[arg1].field_768,
           96,
           trade[arg1].field_2304,
           trade[arg1].field_2560,
           trade[arg1].field_2816,
           trade[arg1].field_3072,
           trade[arg1].field_3328,
           trade[arg1].field_3584,
           trade[arg1].field_3840,
           trade[arg1].field_4096,
           trade[arg1].field_4352
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

function sub_4459c9a3(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MKernel::_ INVALID_ADMIN_ACCOUN'
    if not address(arg2):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    if not stor9[arg1]:
        emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 20, 0x5f4f524445525f444f45535f4e4f545f45584953540000000000000000000000, arg1
    else:
        if stor12[arg1]:
            emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 24, 0x4f524445525f414c52454144595f4c49515549444154454400000000000000, arg1
        else:
            if stor13[arg1]:
                emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 23, 0x4f524445525f414c52454144595f44454641554c5445440000000000000000, arg1
            else:
                require ext_code.size(trade[arg1].field_1024)
                call trade[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining wei
                    args escrowAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_162cfaac[arg1]:
                    emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 36, 0x73494e53554646494349454e545f54524144455f42414c414e43455f494e5f45, 0x43524f5700000000000000000000000000000000000000000000000000000000, arg1
                else:
                    require ext_code.size(trade[arg1].field_768)
                    call trade[arg1].field_768.0x70a08231 with:
                         gas gas_remaining wei
                        args escrowAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < trade[arg1].field_2560:
                        emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 41, 0x53494e53554646494349454e545f434f4c4c41544552414c5f42414c414e4345, 0x54494e5f455343524f5700000000000000000000000000000000000000000000, arg1
                    else:
                        if block.timestamp <= trade[arg1].field_3072:
                            emit 0xdb0b3415: 64, 128, 30, 0x4d4b65726e656c3a3a70726f636573735472616465466f7245787069727900, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                        else:
                            stor13[stor8[arg1].field_4352] = 1
                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                            require trade[arg1].field_3840 >= 0
                            require ext_code.size(address(arg2))
                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 64
                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                require -ext_call.return_data[0] <= 0
                                if trade[arg1].field_768 == trade[arg1].field_512:
                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                        if trade[arg1].field_3840 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                        if trade[arg1].field_3840 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                else:
                                    require ext_code.size(address(arg2))
                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                            else:
                                                require -trade[arg1].field_2304 <= 0
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                        else:
                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                require ext_code.size(escrowAddress)
                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(reserveAddress)
                                            call reserveAddress.0x106689a5 with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                    else:
                                        if trade[arg1].field_3840 > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        require ext_code.size(reserveAddress)
                                        call reserveAddress.0x106689a5 with:
                                             gas gas_remaining wei
                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[32] > 0:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                            else:
                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                if trade[arg1].field_3840 > 0:
                                    require ext_code.size(escrowAddress)
                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(reserveAddress)
                                call reserveAddress.0x106689a5 with:
                                     gas gas_remaining wei
                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if trade[arg1].field_2560 > 0:
                                    require ext_code.size(escrowAddress)
                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                         gas gas_remaining wei
                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                else:
                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                        require ext_code.size(escrowAddress)
                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                             gas gas_remaining wei
                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                    else:
                                        require ext_code.size(address(arg2))
                                        call address(arg2).']N\' with:
                                             gas gas_remaining wei
                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                        else:
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            require ext_code.size(escrowAddress)
                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                 gas gas_remaining wei
                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                            emit 0x98e393d0: Array(len=23, data='MKERNEL_DUE_DATE_PASSED'), trade[arg1].field_4352
}

function sub_c046229e(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MKernel::_ INVALID_ADMIN_ACCOUN'
    if not address(arg2):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    if not stor9[arg1]:
        emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 20, 0x5f4f524445525f444f45535f4e4f545f45584953540000000000000000000000, arg1
    else:
        if stor12[arg1]:
            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 24, 0x4f524445525f414c52454144595f4c49515549444154454400000000000000, arg1
        else:
            if stor13[arg1]:
                emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 23, 0x4f524445525f414c52454144595f44454641554c5445440000000000000000, arg1
            else:
                require ext_code.size(trade[arg1].field_1024)
                call trade[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining wei
                    args escrowAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_162cfaac[arg1]:
                    emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 36, 0x73494e53554646494349454e545f54524144455f42414c414e43455f494e5f45, 0x43524f5700000000000000000000000000000000000000000000000000000000, arg1
                else:
                    require ext_code.size(trade[arg1].field_768)
                    call trade[arg1].field_768.0x70a08231 with:
                         gas gas_remaining wei
                        args escrowAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < trade[arg1].field_2560:
                        emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 41, 0x53494e53554646494349454e545f434f4c4c41544552414c5f42414c414e4345, 0x54494e5f455343524f5700000000000000000000000000000000000000000000, arg1
                    else:
                        if 0 == trade[arg1].field_1792:
                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                        else:
                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                            require trade[arg1].field_3840 >= 0
                            if not call.data[100]:
                                if not trade[arg1].field_1792:
                                    if not arg3:
                                        if 0 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                    else:
                                        require arg3
                                        require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if 0 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                else:
                                    require trade[arg1].field_1792
                                    require trade[arg1].field_2304 * trade[arg1].field_1792 / trade[arg1].field_1792 == trade[arg1].field_2304
                                    if not arg3:
                                        require trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18 >= 0
                                        if 0 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                    else:
                                        require arg3
                                        require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                        require trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18 >= 0
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if 0 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18) + (trade[arg1].field_2304 * arg3 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                            else:
                                require call.data[100]
                                require sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / call.data[100] == sub_162cfaac[stor8[arg1].field_4352]
                                if not trade[arg1].field_1792:
                                    if not arg3:
                                        if sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                    else:
                                        require arg3
                                        require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                else:
                                    require trade[arg1].field_1792
                                    require trade[arg1].field_2304 * trade[arg1].field_1792 / trade[arg1].field_1792 == trade[arg1].field_2304
                                    if not arg3:
                                        require trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18 >= 0
                                        if sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
                                    else:
                                        require arg3
                                        require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                        require trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18 >= 0
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * trade[arg1].field_1792 / 10^18) + (trade[arg1].field_2304 * arg3 / 10^18):
                                            emit 0xdb0b3415: 64, 160, 34, 0x4d4b65726e656c3a3a70726f636573735472616465466f7253746f7050726f, 0x6974000000000000000000000000000000000000000000000000000000000000, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor12[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0xc614d231: trade[arg1].field_4352
}

function sub_7959f20a(?) {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require ext_code.size(configAddress)
    call configAddress.0x9c14ee29 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'MKernel::_ INVALID_ADMIN_ACCOUN'
    if not address(arg2):
        revert with 0, 'Utils::_ INVALID_ADDRESS'
    if not stor9[arg1]:
        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 20, 0x5f4f524445525f444f45535f4e4f545f45584953540000000000000000000000, arg1
    else:
        if stor12[arg1]:
            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 24, 0x4f524445525f414c52454144595f4c49515549444154454400000000000000, arg1
        else:
            if stor13[arg1]:
                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 23, 0x4f524445525f414c52454144595f44454641554c5445440000000000000000, arg1
            else:
                require ext_code.size(trade[arg1].field_1024)
                call trade[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining wei
                    args escrowAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < sub_162cfaac[arg1]:
                    emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 36, 0x73494e53554646494349454e545f54524144455f42414c414e43455f494e5f45, 0x43524f5700000000000000000000000000000000000000000000000000000000, arg1
                else:
                    require ext_code.size(trade[arg1].field_768)
                    call trade[arg1].field_768.0x70a08231 with:
                         gas gas_remaining wei
                        args escrowAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < trade[arg1].field_2560:
                        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 41, 0x53494e53554646494349454e545f434f4c4c41544552414c5f42414c414e4345, 0x54494e5f455343524f5700000000000000000000000000000000000000000000, arg1
                    else:
                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                        require trade[arg1].field_3840 >= 0
                        if not call.data[68]:
                            if not call.data[100]:
                                if not arg3:
                                    if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < 0:
                                        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                    else:
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor13[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                else:
                                    require arg3
                                    require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                    require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                    if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < 0:
                                        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor13[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                            else:
                                require call.data[100]
                                require sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / call.data[100] == sub_162cfaac[stor8[arg1].field_4352]
                                if not arg3:
                                    if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                    else:
                                        require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor13[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                else:
                                    require arg3
                                    require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                    require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                    if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                        emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            stor13[stor8[arg1].field_4352] = 1
                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                            require trade[arg1].field_3840 >= 0
                                            require ext_code.size(address(arg2))
                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                 gas gas_remaining wei
                                                args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                require -ext_call.return_data[0] <= 0
                                                if trade[arg1].field_768 == trade[arg1].field_512:
                                                    if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_code.size(address(arg2))
                                                    call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 64
                                                    if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                        require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                        require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                        if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 <= 0
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                        else:
                                                            require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                            if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_3840 > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        require ext_code.size(reserveAddress)
                                                        call reserveAddress.0x106689a5 with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        if ext_call.return_data[32] > 0:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                            else:
                                                require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                if trade[arg1].field_3840 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                require ext_code.size(reserveAddress)
                                                call reserveAddress.0x106689a5 with:
                                                     gas gas_remaining wei
                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if trade[arg1].field_2560 > 0:
                                                    require ext_code.size(escrowAddress)
                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                    emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    if trade[arg1].field_1280 == trade[arg1].field_512:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).']N\' with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                 gas gas_remaining wei
                                                                args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 64
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                            emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                        else:
                            require call.data[68]
                            require trade[arg1].field_2560 * call.data[68] / call.data[68] == trade[arg1].field_2560
                            if not call.data[100]:
                                if not arg3:
                                    if not trade[arg1].field_2560 * call.data[68] / 10^18:
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < 0:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2560 * call.data[68] / 10^18
                                        require trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / trade[arg1].field_2560 * call.data[68] / 10^18 == trade[arg1].field_2048
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / 10^18:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                else:
                                    require arg3
                                    require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                    if not trade[arg1].field_2560 * call.data[68] / 10^18:
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < 0:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2560 * call.data[68] / 10^18
                                        require trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / trade[arg1].field_2560 * call.data[68] / 10^18 == trade[arg1].field_2048
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < 0:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / 10^18:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                            else:
                                require call.data[100]
                                require sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / call.data[100] == sub_162cfaac[stor8[arg1].field_4352]
                                if not arg3:
                                    if not trade[arg1].field_2560 * call.data[68] / 10^18:
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < 0:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2560 * call.data[68] / 10^18
                                        require trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / trade[arg1].field_2560 * call.data[68] / 10^18 == trade[arg1].field_2048
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / 10^18:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                else:
                                    require arg3
                                    require trade[arg1].field_2304 * arg3 / arg3 == trade[arg1].field_2304
                                    if not trade[arg1].field_2560 * call.data[68] / 10^18:
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                            require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < 0:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
                                    else:
                                        require trade[arg1].field_2560 * call.data[68] / 10^18
                                        require trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / trade[arg1].field_2560 * call.data[68] / 10^18 == trade[arg1].field_2048
                                        require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                        if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) < sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18:
                                            emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                        else:
                                            require trade[arg1].field_2304 * arg3 / 10^18 >= 0
                                            require -sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18 <= 0
                                            if trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 + (trade[arg1].field_2304 * arg3 / 10^18) - (sub_162cfaac[stor8[arg1].field_4352] * call.data[100] / 10^18) < trade[arg1].field_2048 * trade[arg1].field_2560 * call.data[68] / 10^18 / 10^18:
                                                emit 0xdb0b3415: 64, 128, 32, 0x664d4b65726e656c3a3a70726f636573735472616465466f7253746f704c6f73, 19, 'NO_ACTION_PERFORMED', trade[arg1].field_4352
                                            else:
                                                stor13[stor8[arg1].field_4352] = 1
                                                require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                require trade[arg1].field_3840 >= 0
                                                require ext_code.size(address(arg2))
                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                     gas gas_remaining wei
                                                    args escrowAddress, trade[arg1].field_1024, trade[arg1].field_512, sub_162cfaac[stor8[arg1].field_4352]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840:
                                                    require -ext_call.return_data[0] <= 0
                                                    if trade[arg1].field_768 == trade[arg1].field_512:
                                                        if trade[arg1].field_2560 < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] <= trade[arg1].field_2560
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560 - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 + ext_call.return_data[0], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        require ext_code.size(address(arg2))
                                                        call address(arg2).tradeWithOutputFixed(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
                                                             gas gas_remaining wei
                                                            args escrowAddress, trade[arg1].field_768, trade[arg1].field_512, trade[arg1].field_2560, trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 64
                                                        if ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816 + trade[arg1].field_3840 - ext_call.return_data[0]:
                                                            require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
                                                            require trade[arg1].field_2304 + trade[arg1].field_2816 >= trade[arg1].field_2304
                                                            if 2 * ext_call.return_data[0] < trade[arg1].field_2304 + trade[arg1].field_2816:
                                                                if 2 * ext_call.return_data[0] < trade[arg1].field_2304:
                                                                    require trade[arg1].field_2304 - (2 * ext_call.return_data[0]) <= trade[arg1].field_2304
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0])
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], 0, trade[arg1].field_2304 - (2 * ext_call.return_data[0]), 0, 0, 0, trade[arg1].field_4352
                                                                else:
                                                                    require -trade[arg1].field_2304 <= 0
                                                                    require ext_code.size(reserveAddress)
                                                                    call reserveAddress.0x106689a5 with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, escrowAddress, 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    emit 0xd5620126: 2 * ext_call.return_data[0], (2 * ext_call.return_data[0]) - trade[arg1].field_2304, 0, 0, 0, 0, trade[arg1].field_4352
                                                            else:
                                                                require -trade[arg1].field_2304 - trade[arg1].field_2816 <= 0
                                                                if (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816 > 0:
                                                                    require ext_code.size(escrowAddress)
                                                                    call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                         gas gas_remaining wei
                                                                        args trade[arg1].field_512, feeWalletAddress, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                require ext_code.size(reserveAddress)
                                                                call reserveAddress.0x106689a5 with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, 0, 0, (2 * ext_call.return_data[0]) - trade[arg1].field_2304 - trade[arg1].field_2816, trade[arg1].field_4352
                                                        else:
                                                            if trade[arg1].field_3840 > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            require ext_code.size(reserveAddress)
                                                            call reserveAddress.0x106689a5 with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            if ext_call.return_data[32] > 0:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_768, trade[arg1].field_0, ext_call.return_data[32]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, ext_call.return_data[32], 0, trade[arg1].field_3840, trade[arg1].field_4352
                                                else:
                                                    require ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= ext_call.return_data[0]
                                                    if trade[arg1].field_3840 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_512, feeWalletAddress, trade[arg1].field_3840
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    require ext_code.size(reserveAddress)
                                                    call reserveAddress.0x106689a5 with:
                                                         gas gas_remaining wei
                                                        args trade[arg1].field_512, escrowAddress, trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if trade[arg1].field_2560 > 0:
                                                        require ext_code.size(escrowAddress)
                                                        call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                             gas gas_remaining wei
                                                            args trade[arg1].field_768, trade[arg1].field_0, trade[arg1].field_2560
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    if ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840 <= 0:
                                                        emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                    else:
                                                        if trade[arg1].field_1280 == trade[arg1].field_512:
                                                            require ext_code.size(escrowAddress)
                                                            call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                        else:
                                                            require ext_code.size(address(arg2))
                                                            call address(arg2).']N\' with:
                                                                 gas gas_remaining wei
                                                                args trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            if not ext_call.return_data[0]:
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_512, trade[arg1].field_0, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840, trade[arg1].field_3840, trade[arg1].field_4352
                                                            else:
                                                                require ext_code.size(address(arg2))
                                                                call address(arg2).tradeWithInputFixed(address arg1, address arg2, address arg3, uint256 arg4) with:
                                                                     gas gas_remaining wei
                                                                    args escrowAddress, trade[arg1].field_512, trade[arg1].field_1280, ext_call.return_data[0] - trade[arg1].field_2304 - trade[arg1].field_2816 - trade[arg1].field_3840
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                require return_data.size >= 64
                                                                require ext_code.size(escrowAddress)
                                                                call escrowAddress.transfer(address arg1, address arg2, uint256 arg3) with:
                                                                     gas gas_remaining wei
                                                                    args trade[arg1].field_1280, trade[arg1].field_0, ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                emit 0xd5620126: trade[arg1].field_2304 + trade[arg1].field_2816, trade[arg1].field_2816, 0, trade[arg1].field_2560, ext_call.return_data[0], trade[arg1].field_3840, trade[arg1].field_4352
                                                emit 0x98e393d0: Array(len=20, data='MKERNEL_ORDER_UNSAFE'), trade[arg1].field_4352
}



}
