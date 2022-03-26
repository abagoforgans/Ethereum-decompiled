contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
uint256 stor4;

function _fallback() payable {
    stor2 = 0xd99b9b07803e4d3a0d7ee773da4bedbe14b6661d
    stor4 = 1
    require not msg.value
    stor1 = msg.sender
    require ext_code.size(stor2)
    call stor2.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 'custodian'
    require ext_call.success
    stor0 = ext_call.return_data[12 len 20] or Mask(96, 160, stor0)
    return code.data[297 len 8346]
}



// =====================  Runtime code  =====================


const getAdmin = 0


address stor0;
address adminAddress;
address stor2;
mapping of struct price;
uint256 stor4;

function price(uint256 arg1) {
    return price[arg1].field_512
}

function getOffer(uint256 arg1) {
    return price[arg1].field_256, 
           price[arg1].field_512,
           price[arg1].field_768,
           price[arg1].field_1024,
           price[arg1].field_1280,
           price[arg1].field_1536,
           bool(price[arg1].field_1792),
           bool(price[arg1].field_1800),
           bool(price[arg1].field_1808),
           price[arg1].field_2048,
           price[arg1].field_2304
}

function sub_83b9d911(?) {
    return price[arg1].field_256
}

function sub_f19b8273(?) {
    return bool(price[arg1].field_1792)
}

function admin() {
    return adminAddress
}

function kill() {
    if adminAddress != msg.sender:
    selfdestruct(adminAddress)
}

function _fallback() payable {
    revert 
}

function sub_cc6bee54(?) {
    return (stor4 - 1)
}

function cost(uint256 arg1) {
    return (price[arg1].field_512 * price[arg1].field_768)
}

function register() {
    if adminAddress == msg.sender:
        require ext_code.size(stor2)
        call stor2.register(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'offerbook'
        require ext_call.success
}

function sub_9869529d(?) {
    if price[arg1].field_1536:
        if price[arg1].field_1536 < block.timestamp:
            require ext_code.size(stor0)
            call stor0.0xede2e5cd with:
                 gas gas_remaining - 50 wei
                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
            require ext_call.success
}

function sub_ab4797cd(?) {
    s = 0
    idx = 0
    while idx < stor4:
        mem[0] = idx
        mem[32] = 3
        if arg1 == price[idx].field_256:
            if not price[idx].field_1280:
                s = sha3(idx, 3)
                idx = idx + 1
                continue 
            else:
                if price[idx].field_1280 != msg.sender:
                    s = sha3(idx, 3)
                    idx = idx + 1
                    continue 
                else:
                    s = sha3(idx, 3)
                    idx = idx + 1
                    continue 
        else:
            s = sha3(idx, 3)
            idx = idx + 1
            continue 
    return 0
}

function sub_8052f837(?) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        price[arg1].field_2048 = arg2
                        price[arg1].field_2304 = arg3
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            price[arg1].field_2048 = arg2
                            price[arg1].field_2304 = arg3
}

function sub_2689d4a6(?) {
    require ext_code.size(stor0)
    call stor0.0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        stor4++
        price[stor4].field_0 = stor4
        price[stor4].field_256 = arg1
        price[stor4].field_512 = arg3
        price[stor4].field_768 = arg2
        price[stor4].field_1024 = tx.origin
        price[stor4].field_1280 = 0
        price[stor4].field_1536 = arg4
        price[stor4].field_1792 = 0
        price[stor4].field_2048 = arg5
        price[stor4].field_2304 = arg6
        require ext_code.size(stor0)
        call stor0.0x550c2cea with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin, arg2
        require ext_call.success
        emit 0x129066a9: stor4 - 1, arg2, 5, tx.origin, 0
        emit code.data[8314 len 32]: price[stor4].field_256, 0, price[stor4].field_768, price[stor4].field_1024, price[stor4].field_1280, price[stor4].field_1536, bool(price[stor4].field_1792), bool(price[stor4].field_1800), bool(price[stor4].field_1808), price[stor4].field_2048, 12, price[stor4].field_0
}

function sub_b5047432(?) {
    require ext_code.size(stor0)
    call stor0.0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        stor4++
        price[stor4].field_0 = stor4
        price[stor4].field_256 = arg1
        price[stor4].field_512 = arg3
        price[stor4].field_768 = arg2
        price[stor4].field_1024 = tx.origin
        price[stor4].field_1280 = 0
        price[stor4].field_1536 = arg4
        price[stor4].field_1792 = 0
        price[stor4].field_2048 = arg5
        price[stor4].field_2304 = arg6
        require ext_code.size(stor0)
        call stor0.0x550c2cea with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin, arg2
        require ext_call.success
        emit 0x129066a9: stor4 - 1, arg2, 5, tx.origin, 0
        emit code.data[8314 len 32]: price[stor4].field_256, 0, price[stor4].field_768, price[stor4].field_1024, price[stor4].field_1280, price[stor4].field_1536, bool(price[stor4].field_1792), bool(price[stor4].field_1800), bool(price[stor4].field_1808), price[stor4].field_2048, 12, price[stor4].field_0
}

function sub_0de0ad56(?) {
    require ext_code.size(stor0)
    call stor0.0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        stor4++
        price[stor4].field_0 = stor4
        price[stor4].field_256 = arg1
        price[stor4].field_512 = arg4
        price[stor4].field_768 = arg3
        price[stor4].field_1024 = tx.origin
        price[stor4].field_1280 = arg2
        price[stor4].field_1536 = arg5
        price[stor4].field_1792 = 0
        price[stor4].field_2048 = arg6
        price[stor4].field_2304 = arg7
        require ext_code.size(stor0)
        call stor0.0x550c2cea with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin, arg3
        require ext_call.success
        emit 0x129066a9: stor4 - 1, arg3, 5, tx.origin, arg2
        emit code.data[8314 len 32]: price[stor4].field_256, 0, price[stor4].field_768, price[stor4].field_1024, price[stor4].field_1280, price[stor4].field_1536, bool(price[stor4].field_1792), bool(price[stor4].field_1800), bool(price[stor4].field_1808), price[stor4].field_2048, 12, price[stor4].field_0
}

function sub_ba940e22(?) {
    require ext_code.size(stor0)
    call stor0.0xb1eb7998 with:
         gas gas_remaining - 50 wei
        args arg1, tx.origin
    require ext_call.success
    if ext_call.return_data[0] < arg3:
        emit 0x565a29bc: arg1, 6, 3, tx.origin
    else:
        stor4++
        price[stor4].field_0 = stor4
        price[stor4].field_256 = arg1
        price[stor4].field_512 = arg4
        price[stor4].field_768 = arg3
        price[stor4].field_1024 = tx.origin
        price[stor4].field_1280 = arg2
        price[stor4].field_1536 = arg5
        price[stor4].field_1792 = 0
        price[stor4].field_2048 = arg6
        price[stor4].field_2304 = arg7
        require ext_code.size(stor0)
        call stor0.0x550c2cea with:
             gas gas_remaining - 50 wei
            args arg1, tx.origin, arg3
        require ext_call.success
        emit 0x129066a9: stor4 - 1, arg3, 5, tx.origin, arg2
        emit code.data[8314 len 32]: price[stor4].field_256, 0, price[stor4].field_768, price[stor4].field_1024, price[stor4].field_1280, price[stor4].field_1536, bool(price[stor4].field_1792), bool(price[stor4].field_1800), bool(price[stor4].field_1808), price[stor4].field_2048, 12, price[stor4].field_0
}

function setPrice(uint256 arg1, uint256 arg2) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        price[arg1].field_512 = arg2
                        emit code.data[8314 len 32]: price[arg1].field_256, arg2, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            price[arg1].field_512 = arg2
                            emit code.data[8314 len 32]: price[arg1].field_256, arg2, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
}

function sub_dbe867f8(?) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        price[arg1].field_512 = arg2
                        price[arg1].field_2048 = arg3
                        emit code.data[8314 len 32]: price[arg1].field_256, arg2, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), arg3, 12, price[arg1].field_0
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            price[arg1].field_512 = arg2
                            price[arg1].field_2048 = arg3
                            emit code.data[8314 len 32]: price[arg1].field_256, arg2, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), arg3, 12, price[arg1].field_0
}

function cancel(uint256 arg1) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        require ext_code.size(stor0)
                        call stor0.0xede2e5cd with:
                             gas gas_remaining - 50 wei
                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                        require ext_call.success
                        price[arg1].field_1808 = 1
                        emit code.data[8314 len 32]: price[arg1].field_256, price[arg1].field_512, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(0 or price[arg1].field_1792), bool(0 or price[arg1].field_1800), 1, price[arg1].field_2048, 12, price[arg1].field_0
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            require ext_code.size(stor0)
                            call stor0.0xede2e5cd with:
                                 gas gas_remaining - 50 wei
                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                            require ext_call.success
                            price[arg1].field_1808 = 1
                            emit code.data[8314 len 32]: price[arg1].field_256, price[arg1].field_512, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(0 or price[arg1].field_1792), bool(0 or price[arg1].field_1800), 1, price[arg1].field_2048, 12, price[arg1].field_0
}

function sub_b741e9c7(?) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        if arg2 < price[arg1].field_768:
                            require ext_code.size(stor0)
                            call stor0.0xede2e5cd with:
                                 gas gas_remaining - 50 wei
                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768 - arg2
                            require ext_call.success
                        price[arg1].field_768 = arg2
                        emit code.data[8314 len 32]: price[arg1].field_256, price[arg1].field_512, arg2, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            if arg2 < price[arg1].field_768:
                                require ext_code.size(stor0)
                                call stor0.0xede2e5cd with:
                                     gas gas_remaining - 50 wei
                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768 - arg2
                                require ext_call.success
                            price[arg1].field_768 = arg2
                            emit code.data[8314 len 32]: price[arg1].field_256, price[arg1].field_512, arg2, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
}

function sub_e1b56a7d(?) {
    if arg1 < stor4:
        if price[arg1].field_1024 == msg.sender:
            if not price[arg1].field_1808:
                if not price[arg1].field_1792:
                    if price[arg1].field_1536 >= block.timestamp:
                        require ext_code.size(stor0)
                        if arg3 < price[arg1].field_768:
                            call stor0.0xede2e5cd with:
                                 gas gas_remaining - 50 wei
                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768 - arg3
                            require ext_call.success
                            if arg4 >= block.timestamp:
                                price[arg1].field_768 = arg3
                                price[arg1].field_512 = arg2
                                price[arg1].field_1536 = arg4
                                emit code.data[8314 len 32]: price[arg1].field_256, arg2, arg3, price[arg1].field_1024, price[arg1].field_1280, arg4, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
                        else:
                            call stor0.0xb1eb7998 with:
                                 gas gas_remaining - 50 wei
                                args price[arg1].field_256, tx.origin
                            require ext_call.success
                            if ext_call.return_data[0] >= arg3:
                                if arg4 >= block.timestamp:
                                    price[arg1].field_768 = arg3
                                    price[arg1].field_512 = arg2
                                    price[arg1].field_1536 = arg4
                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, arg3, price[arg1].field_1024, price[arg1].field_1280, arg4, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
        else:
            if adminAddress == msg.sender:
                if not price[arg1].field_1808:
                    if not price[arg1].field_1792:
                        if price[arg1].field_1536 >= block.timestamp:
                            require ext_code.size(stor0)
                            if arg3 < price[arg1].field_768:
                                call stor0.0xede2e5cd with:
                                     gas gas_remaining - 50 wei
                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768 - arg3
                                require ext_call.success
                                if arg4 >= block.timestamp:
                                    price[arg1].field_768 = arg3
                                    price[arg1].field_512 = arg2
                                    price[arg1].field_1536 = arg4
                                    emit code.data[8314 len 32]: price[arg1].field_256, arg2, arg3, price[arg1].field_1024, price[arg1].field_1280, arg4, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
                            else:
                                call stor0.0xb1eb7998 with:
                                     gas gas_remaining - 50 wei
                                    args price[arg1].field_256, tx.origin
                                require ext_call.success
                                if ext_call.return_data[0] >= arg3:
                                    if arg4 >= block.timestamp:
                                        price[arg1].field_768 = arg3
                                        price[arg1].field_512 = arg2
                                        price[arg1].field_1536 = arg4
                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, arg3, price[arg1].field_1024, price[arg1].field_1280, arg4, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 12, price[arg1].field_0
}

function sub_ff534a34(?) {
    if arg2 != msg.sender:
        if adminAddress != msg.sender:
            require ext_code.size(stor2)
            call stor2.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit 0x565a29bc: arg1, 11, 14, arg2
                return 0
    if not price[arg1].field_1536:
        emit 0x565a29bc: arg1, 11, 3, arg2
        return 0
    if price[arg1].field_1280:
        if price[arg1].field_1280 != arg2:
            emit 0x565a29bc: arg1, 7, 3, arg2
            if 1 == bool(price[arg1].field_1792):
                emit 0x565a29bc: arg1, 8, 3, arg2
            else:
                if 1 == bool(price[arg1].field_1800):
                    emit 0x565a29bc: arg1, 8, 3, arg2
            if price[arg1].field_1536 < block.timestamp:
                emit 0x565a29bc: arg1, 9, 3, arg2
            require ext_code.size(stor2)
            call stor2.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 'stabletoken'
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                 gas gas_remaining - 50 wei
                args arg2
            require ext_call.success
            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                emit 0x565a29bc: arg1, 4, 3, arg2
                return 0
            else:
                return 0
    if 1 == bool(price[arg1].field_1792):
        emit 0x565a29bc: arg1, 8, 3, arg2
        if price[arg1].field_1536 < block.timestamp:
            emit 0x565a29bc: arg1, 9, 3, arg2
        require ext_code.size(stor2)
        call stor2.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getBalance(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
            emit 0x565a29bc: arg1, 4, 3, arg2
            return 0
        else:
            return 0
    if 1 == bool(price[arg1].field_1800):
        emit 0x565a29bc: arg1, 8, 3, arg2
        if price[arg1].field_1536 < block.timestamp:
            emit 0x565a29bc: arg1, 9, 3, arg2
        require ext_code.size(stor2)
        call stor2.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getBalance(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
            emit 0x565a29bc: arg1, 4, 3, arg2
            return 0
        else:
            return 0
    if price[arg1].field_1536 < block.timestamp:
        emit 0x565a29bc: arg1, 9, 3, arg2
        require ext_code.size(stor2)
        call stor2.addressOf(bytes32 rg1) with:
             gas gas_remaining - 50 wei
            args 'stabletoken'
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getBalance(address rg1) with:
             gas gas_remaining - 50 wei
            args arg2
        require ext_call.success
        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
            emit 0x565a29bc: arg1, 4, 3, arg2
            return 0
        else:
            return 0
    require ext_code.size(stor2)
    call stor2.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 'stabletoken'
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getBalance(address rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
        emit 0x565a29bc: arg1, 4, 3, arg2
        return 0
    require ext_code.size(stor2)
    call stor2.addressOf(bytes32 rg1) with:
         gas gas_remaining - 50 wei
        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x9eb27331 with:
         gas gas_remaining - 50 wei
        args 0, 0, price[arg1].field_1024, address(arg2), price[arg1].field_768, price[arg1].field_512
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa870ab95 with:
         gas gas_remaining - 50 wei
        args 0, 0, price[arg1].field_2304, address(arg2), 0, price[arg1].field_2048
    require ext_call.success
    if ext_call.return_data[0]:
        price[arg1].field_1792 = 1
        require ext_code.size(stor0)
        call stor0.0xede2e5cd with:
             gas gas_remaining - 50 wei
            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x5168fe58 with:
             gas gas_remaining - 50 wei
            args price[arg1].field_256, price[arg1].field_512
        require ext_call.success
        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, arg2
        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xd76a022c with:
             gas gas_remaining - 50 wei
            args price[arg1].field_256
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x87d250fc with:
             gas gas_remaining - 50 wei
            args price[arg1].field_256
        require ext_call.success
    return bool(ext_call.return_data[0])
}

function acceptOffer(uint256 arg1) {
    if msg.sender == msg.sender:
        if not price[arg1].field_1536:
            emit 0x565a29bc: arg1, 11, 3, msg.sender
        else:
            if not price[arg1].field_1280:
                if 1 == bool(price[arg1].field_1792):
                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                    if price[arg1].field_1536 < block.timestamp:
                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                    require ext_code.size(stor2)
                    call stor2.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'stabletoken'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 50 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                else:
                    if 1 == bool(price[arg1].field_1800):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                require ext_call.success
                                require ext_code.size(stor0)
                                call stor0.0x9eb27331 with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                require ext_call.success
                                require ext_code.size(stor0)
                                call stor0.0xa870ab95 with:
                                     gas gas_remaining - 50 wei
                                    args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    price[arg1].field_1792 = 1
                                    require ext_code.size(stor0)
                                    call stor0.0xede2e5cd with:
                                         gas gas_remaining - 50 wei
                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                         gas gas_remaining - 50 wei
                                        args price[arg1].field_256, price[arg1].field_512
                                    require ext_call.success
                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                         gas gas_remaining - 50 wei
                                        args price[arg1].field_256
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                         gas gas_remaining - 50 wei
                                        args price[arg1].field_256
                                    require ext_call.success
            else:
                if price[arg1].field_1280 != msg.sender:
                    emit 0x565a29bc: arg1, 7, 3, msg.sender
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                    if price[arg1].field_1536 < block.timestamp:
                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                    require ext_code.size(stor2)
                    call stor2.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'stabletoken'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 50 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                else:
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                    require ext_call.success
                                    require ext_code.size(stor0)
                                    call stor0.0x9eb27331 with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                    require ext_call.success
                                    require ext_code.size(stor0)
                                    call stor0.0xa870ab95 with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        price[arg1].field_1792 = 1
                                        require ext_code.size(stor0)
                                        call stor0.0xede2e5cd with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256, price[arg1].field_512
                                        require ext_call.success
                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256
                                        require ext_call.success
    else:
        if adminAddress == msg.sender:
            if not price[arg1].field_1536:
                emit 0x565a29bc: arg1, 11, 3, msg.sender
            else:
                if not price[arg1].field_1280:
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                    require ext_call.success
                                    require ext_code.size(stor0)
                                    call stor0.0x9eb27331 with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                    require ext_call.success
                                    require ext_code.size(stor0)
                                    call stor0.0xa870ab95 with:
                                         gas gas_remaining - 50 wei
                                        args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        price[arg1].field_1792 = 1
                                        require ext_code.size(stor0)
                                        call stor0.0xede2e5cd with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256, price[arg1].field_512
                                        require ext_call.success
                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                             gas gas_remaining - 50 wei
                                            args price[arg1].field_256
                                        require ext_call.success
                else:
                    if price[arg1].field_1280 != msg.sender:
                        emit 0x565a29bc: arg1, 7, 3, msg.sender
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0x9eb27331 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0xa870ab95 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            price[arg1].field_1792 = 1
                                            require ext_code.size(stor0)
                                            call stor0.0xede2e5cd with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_512
                                            require ext_call.success
                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit 0x565a29bc: arg1, 11, 14, msg.sender
            else:
                if not price[arg1].field_1536:
                    emit 0x565a29bc: arg1, 11, 3, msg.sender
                else:
                    if not price[arg1].field_1280:
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0x9eb27331 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0xa870ab95 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            price[arg1].field_1792 = 1
                                            require ext_code.size(stor0)
                                            call stor0.0xede2e5cd with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_512
                                            require ext_call.success
                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                    else:
                        if price[arg1].field_1280 != msg.sender:
                            emit 0x565a29bc: arg1, 7, 3, msg.sender
                            if 1 == bool(price[arg1].field_1792):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                            else:
                                if 1 == bool(price[arg1].field_1800):
                                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1792):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if 1 == bool(price[arg1].field_1800):
                                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                                    if price[arg1].field_1536 < block.timestamp:
                                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if price[arg1].field_1536 < block.timestamp:
                                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'stabletoken'
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender
                                        require ext_call.success
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'stabletoken'
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender
                                        require ext_call.success
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, 0, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
}

function sub_da54fcc4(?) {
    if msg.sender == msg.sender:
        if not price[arg1].field_1536:
            emit 0x565a29bc: arg1, 11, 3, msg.sender
        else:
            if not price[arg1].field_1280:
                if 1 == bool(price[arg1].field_1792):
                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                    if price[arg1].field_1536 < block.timestamp:
                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                    require ext_code.size(stor2)
                    call stor2.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'stabletoken'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 50 wei
                        args msg.sender
                    require ext_call.success
                    if arg2:
                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                else:
                    if 1 == bool(price[arg1].field_1800):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if arg2:
                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                    require ext_call.success
                                    if not arg2:
                                        require ext_code.size(stor0)
                                        call stor0.0x9eb27331 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0xa870ab95 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            price[arg1].field_1792 = 1
                                            require ext_code.size(stor0)
                                            call stor0.0xede2e5cd with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_512
                                            require ext_call.success
                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                    else:
                                        if arg2 == price[arg1].field_768:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 <= price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, arg2
                                                    require ext_call.success
                                                    price[arg1].field_768 -= arg2
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                    require ext_call.success
                                    if not arg2:
                                        require ext_code.size(stor0)
                                        call stor0.0x9eb27331 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                        require ext_call.success
                                        require ext_code.size(stor0)
                                        call stor0.0xa870ab95 with:
                                             gas gas_remaining - 50 wei
                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                            price[arg1].field_1792 = 1
                                            require ext_code.size(stor0)
                                            call stor0.0xede2e5cd with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256, price[arg1].field_512
                                            require ext_call.success
                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                 gas gas_remaining - 50 wei
                                                args price[arg1].field_256
                                            require ext_call.success
                                    else:
                                        if arg2 == price[arg1].field_768:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 <= price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, arg2
                                                    require ext_call.success
                                                    price[arg1].field_768 -= arg2
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
            else:
                if price[arg1].field_1280 != msg.sender:
                    emit 0x565a29bc: arg1, 7, 3, msg.sender
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                    if price[arg1].field_1536 < block.timestamp:
                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                    require ext_code.size(stor2)
                    call stor2.addressOf(bytes32 rg1) with:
                         gas gas_remaining - 50 wei
                        args 'stabletoken'
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                         gas gas_remaining - 50 wei
                        args msg.sender
                    require ext_call.success
                    if arg2:
                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                else:
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if arg2:
                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        if not arg2:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 == price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 <= price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, arg2
                                                        require ext_call.success
                                                        price[arg1].field_768 -= arg2
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        if not arg2:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 == price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 <= price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, arg2
                                                        require ext_call.success
                                                        price[arg1].field_768 -= arg2
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
    else:
        if adminAddress == msg.sender:
            if not price[arg1].field_1536:
                emit 0x565a29bc: arg1, 11, 3, msg.sender
            else:
                if not price[arg1].field_1280:
                    if 1 == bool(price[arg1].field_1792):
                        emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if arg2:
                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1800):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        if not arg2:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 == price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 <= price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, arg2
                                                        require ext_call.success
                                                        price[arg1].field_768 -= arg2
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                        require ext_call.success
                                        if not arg2:
                                            require ext_code.size(stor0)
                                            call stor0.0x9eb27331 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                            require ext_call.success
                                            require ext_code.size(stor0)
                                            call stor0.0xa870ab95 with:
                                                 gas gas_remaining - 50 wei
                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                price[arg1].field_1792 = 1
                                                require ext_code.size(stor0)
                                                call stor0.0xede2e5cd with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256, price[arg1].field_512
                                                require ext_call.success
                                                emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                     gas gas_remaining - 50 wei
                                                    args price[arg1].field_256
                                                require ext_call.success
                                        else:
                                            if arg2 == price[arg1].field_768:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 <= price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, arg2
                                                        require ext_call.success
                                                        price[arg1].field_768 -= arg2
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                else:
                    if price[arg1].field_1280 != msg.sender:
                        emit 0x565a29bc: arg1, 7, 3, msg.sender
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                        if price[arg1].field_1536 < block.timestamp:
                            emit 0x565a29bc: arg1, 9, 3, msg.sender
                        require ext_code.size(stor2)
                        call stor2.addressOf(bytes32 rg1) with:
                             gas gas_remaining - 50 wei
                            args 'stabletoken'
                        require ext_call.success
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                             gas gas_remaining - 50 wei
                            args msg.sender
                        require ext_call.success
                        if arg2:
                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                    else:
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if arg2:
                                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if arg2:
                                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                            require ext_call.success
                                            if not arg2:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 == price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 <= price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, arg2
                                                            require ext_call.success
                                                            price[arg1].field_768 -= arg2
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                    else:
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                            require ext_call.success
                                            if not arg2:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 == price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 <= price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, arg2
                                                            require ext_call.success
                                                            price[arg1].field_768 -= arg2
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
        else:
            require ext_code.size(stor2)
            call stor2.addressOf(bytes32 rg1) with:
                 gas gas_remaining - 50 wei
                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
            require ext_call.success
            if ext_call.return_data[12 len 20] != msg.sender:
                emit 0x565a29bc: arg1, 11, 14, msg.sender
            else:
                if not price[arg1].field_1536:
                    emit 0x565a29bc: arg1, 11, 3, msg.sender
                else:
                    if not price[arg1].field_1280:
                        if 1 == bool(price[arg1].field_1792):
                            emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1800):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if arg2:
                                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if arg2:
                                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                            require ext_call.success
                                            if not arg2:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 == price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 <= price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, arg2
                                                            require ext_call.success
                                                            price[arg1].field_768 -= arg2
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                    else:
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            require ext_code.size(stor2)
                                            call stor2.addressOf(bytes32 rg1) with:
                                                 gas gas_remaining - 50 wei
                                                args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                            require ext_call.success
                                            if not arg2:
                                                require ext_code.size(stor0)
                                                call stor0.0x9eb27331 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                require ext_call.success
                                                require ext_code.size(stor0)
                                                call stor0.0xa870ab95 with:
                                                     gas gas_remaining - 50 wei
                                                    args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                    price[arg1].field_1792 = 1
                                                    require ext_code.size(stor0)
                                                    call stor0.0xede2e5cd with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x5168fe58 with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256, price[arg1].field_512
                                                    require ext_call.success
                                                    emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                    emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0xd76a022c with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    call address(ext_call.return_data[0]).0x87d250fc with:
                                                         gas gas_remaining - 50 wei
                                                        args price[arg1].field_256
                                                    require ext_call.success
                                            else:
                                                if arg2 == price[arg1].field_768:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 <= price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, arg2
                                                            require ext_call.success
                                                            price[arg1].field_768 -= arg2
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                    else:
                        if price[arg1].field_1280 != msg.sender:
                            emit 0x565a29bc: arg1, 7, 3, msg.sender
                            if 1 == bool(price[arg1].field_1792):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                            else:
                                if 1 == bool(price[arg1].field_1800):
                                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                            if price[arg1].field_1536 < block.timestamp:
                                emit 0x565a29bc: arg1, 9, 3, msg.sender
                            require ext_code.size(stor2)
                            call stor2.addressOf(bytes32 rg1) with:
                                 gas gas_remaining - 50 wei
                                args 'stabletoken'
                            require ext_call.success
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                 gas gas_remaining - 50 wei
                                args msg.sender
                            require ext_call.success
                            if arg2:
                                if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                    emit 0x565a29bc: arg1, 4, 3, msg.sender
                        else:
                            if 1 == bool(price[arg1].field_1792):
                                emit 0x565a29bc: arg1, 8, 3, msg.sender
                                if price[arg1].field_1536 < block.timestamp:
                                    emit 0x565a29bc: arg1, 9, 3, msg.sender
                                require ext_code.size(stor2)
                                call stor2.addressOf(bytes32 rg1) with:
                                     gas gas_remaining - 50 wei
                                    args 'stabletoken'
                                require ext_call.success
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                     gas gas_remaining - 50 wei
                                    args msg.sender
                                require ext_call.success
                                if arg2:
                                    if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                        emit 0x565a29bc: arg1, 4, 3, msg.sender
                            else:
                                if 1 == bool(price[arg1].field_1800):
                                    emit 0x565a29bc: arg1, 8, 3, msg.sender
                                    if price[arg1].field_1536 < block.timestamp:
                                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                                    require ext_code.size(stor2)
                                    call stor2.addressOf(bytes32 rg1) with:
                                         gas gas_remaining - 50 wei
                                        args 'stabletoken'
                                    require ext_call.success
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                         gas gas_remaining - 50 wei
                                        args msg.sender
                                    require ext_call.success
                                    if arg2:
                                        if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                            emit 0x565a29bc: arg1, 4, 3, msg.sender
                                else:
                                    if price[arg1].field_1536 < block.timestamp:
                                        emit 0x565a29bc: arg1, 9, 3, msg.sender
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'stabletoken'
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender
                                        require ext_call.success
                                        if arg2:
                                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                                        else:
                                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                                    else:
                                        require ext_code.size(stor2)
                                        call stor2.addressOf(bytes32 rg1) with:
                                             gas gas_remaining - 50 wei
                                            args 'stabletoken'
                                        require ext_call.success
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).getBalance(address rg1) with:
                                             gas gas_remaining - 50 wei
                                            args msg.sender
                                        require ext_call.success
                                        if arg2:
                                            if ext_call.return_data[0] < (arg2 * price[arg1].field_512) + (arg2 * price[arg1].field_2048):
                                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.addressOf(bytes32 rg1) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                                require ext_call.success
                                                if not arg2:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 == price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            price[arg1].field_1792 = 1
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                    else:
                                                        if arg2 <= price[arg1].field_768:
                                                            require ext_code.size(stor0)
                                                            call stor0.0x9eb27331 with:
                                                                 gas gas_remaining - 50 wei
                                                                args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                            require ext_call.success
                                                            require ext_code.size(stor0)
                                                            call stor0.0xa870ab95 with:
                                                                 gas gas_remaining - 50 wei
                                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                require ext_code.size(stor0)
                                                                call stor0.0xede2e5cd with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256, price[arg1].field_1024, arg2
                                                                require ext_call.success
                                                                price[arg1].field_768 -= arg2
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256, price[arg1].field_512
                                                                require ext_call.success
                                                                emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256
                                                                require ext_call.success
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256
                                                                require ext_call.success
                                        else:
                                            if ext_call.return_data[0] < (price[arg1].field_768 * price[arg1].field_512) + (price[arg1].field_768 * price[arg1].field_2048):
                                                emit 0x565a29bc: arg1, 4, 3, msg.sender
                                            else:
                                                require ext_code.size(stor2)
                                                call stor2.addressOf(bytes32 rg1) with:
                                                     gas gas_remaining - 50 wei
                                                    args 0x626f6e6400000000000000000000000000000000000000000000000000000000
                                                require ext_call.success
                                                if not arg2:
                                                    require ext_code.size(stor0)
                                                    call stor0.0x9eb27331 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                    require ext_call.success
                                                    require ext_code.size(stor0)
                                                    call stor0.0xa870ab95 with:
                                                         gas gas_remaining - 50 wei
                                                        args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                        price[arg1].field_1792 = 1
                                                        require ext_code.size(stor0)
                                                        call stor0.0xede2e5cd with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x5168fe58 with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256, price[arg1].field_512
                                                        require ext_call.success
                                                        emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                        emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0xd76a022c with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                        call address(ext_call.return_data[0]).0x87d250fc with:
                                                             gas gas_remaining - 50 wei
                                                            args price[arg1].field_256
                                                        require ext_call.success
                                                else:
                                                    if arg2 == price[arg1].field_768:
                                                        require ext_code.size(stor0)
                                                        call stor0.0x9eb27331 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_1024, msg.sender, price[arg1].field_768, price[arg1].field_512
                                                        require ext_call.success
                                                        require ext_code.size(stor0)
                                                        call stor0.0xa870ab95 with:
                                                             gas gas_remaining - 50 wei
                                                            args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                            price[arg1].field_1792 = 1
                                                            require ext_code.size(stor0)
                                                            call stor0.0xede2e5cd with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_1024, price[arg1].field_768
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256, price[arg1].field_512
                                                            require ext_call.success
                                                            emit 0x129066a9: arg1, price[arg1].field_768, 6, price[arg1].field_1024, msg.sender
                                                            emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0xd76a022c with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                            call address(ext_call.return_data[0]).0x87d250fc with:
                                                                 gas gas_remaining - 50 wei
                                                                args price[arg1].field_256
                                                            require ext_call.success
                                                    else:
                                                        if arg2 <= price[arg1].field_768:
                                                            require ext_code.size(stor0)
                                                            call stor0.0x9eb27331 with:
                                                                 gas gas_remaining - 50 wei
                                                                args 0, 0, price[arg1].field_1024, msg.sender, arg2, price[arg1].field_512
                                                            require ext_call.success
                                                            require ext_code.size(stor0)
                                                            call stor0.0xa870ab95 with:
                                                                 gas gas_remaining - 50 wei
                                                                args 0, 0, price[arg1].field_2304, msg.sender, arg2, price[arg1].field_2048
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                                require ext_code.size(stor0)
                                                                call stor0.0xede2e5cd with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256, price[arg1].field_1024, arg2
                                                                require ext_call.success
                                                                price[arg1].field_768 -= arg2
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0x5168fe58 with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256, price[arg1].field_512
                                                                require ext_call.success
                                                                emit 0x129066a9: arg1, arg2, 6, price[arg1].field_1024, msg.sender
                                                                emit code.data[8314 len 32]: price[arg1].field_256, 0, price[arg1].field_768, price[arg1].field_1024, price[arg1].field_1280, price[arg1].field_1536, bool(price[arg1].field_1792), bool(price[arg1].field_1800), bool(price[arg1].field_1808), price[arg1].field_2048, 13, price[arg1].field_0
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0xd76a022c with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256
                                                                require ext_call.success
                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                call address(ext_call.return_data[0]).0x87d250fc with:
                                                                     gas gas_remaining - 50 wei
                                                                    args price[arg1].field_256
                                                                require ext_call.success
}



}
