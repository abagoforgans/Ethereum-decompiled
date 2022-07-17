contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    require not msg.value
    return code.data[61 len 6420]
}



// =====================  Runtime code  =====================


uint8 stor0;
mapping of struct orders;
uint256 stor2;

function orders(uint256 arg1) {
    return orders[arg1].field_0, 
           orders[arg1].field_256,
           orders[arg1].field_512,
           orders[arg1].field_768,
           orders[arg1].field_1024,
           orders[arg1].field_1280,
           orders[arg1].field_1536
}

function _fallback() payable {
    revert
}

function cancelOrder(uint256 arg1) {
    require not stor0
    stor0 = 1
    if arg1 <= 0:
        stor0 = 0
        return 0
    if orders[arg1].field_0 != arg1:
        stor0 = 0
        return 0
    if orders[arg1].field_256 != msg.sender:
        stor0 = 0
        return 0
    orders[arg1].field_512 = 0
    if not orders[arg1].field_768:
        call orders[arg1].field_256 with:
           value orders[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(orders[arg1].field_768)
        call orders[arg1].field_768.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args orders[arg1].field_256, orders[arg1].field_512
        require ext_call.success
        require ext_call.return_data[0]
    emit LogCancelOrder(arg1);
    stor0 = 0
    return 1
}

function cancelOrders(uint256[] arg1) {
    require not stor0
    stor0 = 1
    idx = 0
    s = 1
    while idx < arg1.length:
        if cd[((32 * idx) + arg1 + 36)] <= 0:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        if orders[cd[((32 * idx) + arg1 + 36)]].field_0 != cd[((32 * idx) + arg1 + 36)]:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        if orders[cd[((32 * idx) + arg1 + 36)]].field_256 != msg.sender:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        orders[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
        if not orders[cd[((32 * idx) + arg1 + 36)]].field_768:
            call orders[cd[((32 * idx) + arg1 + 36)]].field_256 with:
               value orders[cd[((32 * idx) + arg1 + 36)]].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            mem[100] = orders[cd[((32 * idx) + arg1 + 36)]].field_256
            mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_512
            require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_768)
            call orders[cd[((32 * idx) + arg1 + 36)]].field_768.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args orders[cd[((32 * idx) + arg1 + 36)]].field_256, orders[cd[((32 * idx) + arg1 + 36)]].field_512
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        emit LogCancelOrder(cd[((32 * idx) + arg1 + 36)]);
        idx = idx + 1
        s = s
        continue 
    stor0 = 0
    return bool(s)
}

function makeOrder(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    stor2 = msg.value
    require not stor0
    stor0 = 1
    if arg1 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg2 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg3 == arg4:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg5 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg6 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if orders[arg1].field_0 == arg1:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg3:
        require ext_code.size(arg3)
        call arg3.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, this.address
        require ext_call.success
        if ext_call.return_data[0] < arg2:
            if stor2 > 0:
                call msg.sender with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            stor0 = 0
            stor2 = 0
            return 0
        require ext_code.size(arg3)
        call arg3.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if ext_call.return_data[0] < arg2:
            if stor2 > 0:
                call msg.sender with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            stor0 = 0
            stor2 = 0
            return 0
        orders[arg1].field_0 = arg1
        orders[arg1].field_256 = msg.sender
        orders[arg1].field_512 = arg2
        orders[arg1].field_768 = arg3
        orders[arg1].field_1024 = arg4
        orders[arg1].field_1280 = arg5
        orders[arg1].field_1536 = arg6
        if not arg3:
            require arg2 <= stor2
            stor2 -= arg2
        else:
            require ext_code.size(arg3)
            call arg3.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), arg2
            require ext_call.success
            require ext_call.return_data[0]
    else:
        if stor2 <= 0:
            stor0 = 0
            stor2 = 0
            return 0
        if stor2 < arg2:
            if stor2 > 0:
                call msg.sender with:
                   value stor2 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            stor0 = 0
            stor2 = 0
            return 0
        if not arg3:
            orders[arg1].field_0 = arg1
            orders[arg1].field_256 = msg.sender
            orders[arg1].field_512 = arg2
            orders[arg1].field_768 = arg3
            orders[arg1].field_1024 = arg4
            orders[arg1].field_1280 = arg5
            orders[arg1].field_1536 = arg6
            require arg2 <= stor2
            stor2 -= arg2
        else:
            require ext_code.size(arg3)
            call arg3.0xdd62ed3e with:
                 gas gas_remaining - 710 wei
                args msg.sender, this.address
            require ext_call.success
            if ext_call.return_data[0] < arg2:
                if stor2 > 0:
                    call msg.sender with:
                       value stor2 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                stor0 = 0
                stor2 = 0
                return 0
            require ext_code.size(arg3)
            call arg3.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if ext_call.return_data[0] < arg2:
                if stor2 > 0:
                    call msg.sender with:
                       value stor2 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                stor0 = 0
                stor2 = 0
                return 0
            orders[arg1].field_0 = arg1
            orders[arg1].field_256 = msg.sender
            orders[arg1].field_512 = arg2
            orders[arg1].field_768 = arg3
            orders[arg1].field_1024 = arg4
            orders[arg1].field_1280 = arg5
            orders[arg1].field_1536 = arg6
            if not arg3:
                require arg2 <= stor2
                stor2 -= arg2
            else:
                require ext_code.size(arg3)
                call arg3.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), arg2
                require ext_call.success
                require ext_call.return_data[0]
    emit LogMakeOrder(arg1, arg2, arg5, arg6, msg.sender, arg3, arg4);
    if stor2 > 0:
        call msg.sender with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor0 = 0
    stor2 = 0
    return 1
}

function makeOrders(uint256[] arg1, uint256[] arg2, address[] arg3, address[] arg4, uint256[] arg5, uint256[] arg6) payable {
    mem[64] = 96
    stor2 = msg.value
    require not stor0
    stor0 = 1
    require arg2.length == arg1.length
    require arg3.length == arg1.length
    require arg4.length == arg1.length
    require arg5.length == arg1.length
    require arg6.length == arg1.length
    idx = 0
    s = 1
    while idx < arg1.length:
        if s:
            require idx < arg1.length
            require idx < arg2.length
            require idx < arg3.length
            require idx < arg4.length
            require idx < arg5.length
            require idx < arg6.length
            if cd[((32 * idx) + arg1 + 36)] <= 0:
                idx = idx + 1
                s = 0
                continue 
            if cd[((32 * idx) + arg2 + 36)] <= 0:
                idx = idx + 1
                s = 0
                continue 
            if address(cd[((32 * idx) + arg3 + 36)]) == address(cd[((32 * idx) + arg4 + 36)]):
                idx = idx + 1
                s = 0
                continue 
            if cd[((32 * idx) + arg5 + 36)] <= 0:
                idx = idx + 1
                s = 0
                continue 
            if cd[((32 * idx) + arg6 + 36)] <= 0:
                idx = idx + 1
                s = 0
                continue 
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 1
            if orders[cd[((32 * idx) + arg1 + 36)]].field_0 == cd[((32 * idx) + arg1 + 36)]:
                idx = idx + 1
                s = 0
                continue 
            if address(cd[((32 * idx) + arg3 + 36)]):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                call address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                    idx = idx + 1
                    s = 0
                    continue 
                mem[mem[64] + 32] = 0
                mem[mem[64] + 4] = msg.sender
                require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                    idx = idx + 1
                    s = 0
                    continue 
                _109 = mem[64]
                mem[64] = mem[64] + 224
                mem[_109] = cd[((32 * idx) + arg1 + 36)]
                mem[_109 + 32] = msg.sender
                mem[_109 + 64] = cd[((32 * idx) + arg2 + 36)]
                mem[_109 + 96] = address(cd[((32 * idx) + arg3 + 36)])
                mem[_109 + 128] = address(cd[((32 * idx) + arg4 + 36)])
                mem[_109 + 160] = cd[((32 * idx) + arg5 + 36)]
                mem[_109 + 192] = cd[((32 * idx) + arg6 + 36)]
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 1
                orders[cd[((32 * idx) + arg1 + 36)]].field_0 = cd[((32 * idx) + arg1 + 36)]
                orders[cd[((32 * idx) + arg1 + 36)]].field_256 = msg.sender
                orders[cd[((32 * idx) + arg1 + 36)]].field_512 = cd[((32 * idx) + arg2 + 36)]
                orders[cd[((32 * idx) + arg1 + 36)]].field_768 = address(cd[((32 * idx) + arg3 + 36)])
                orders[cd[((32 * idx) + arg1 + 36)]].field_1024 = address(cd[((32 * idx) + arg4 + 36)])
                orders[cd[((32 * idx) + arg1 + 36)]].field_1280 = cd[((32 * idx) + arg5 + 36)]
                orders[cd[((32 * idx) + arg1 + 36)]].field_1536 = cd[((32 * idx) + arg6 + 36)]
                if not address(cd[((32 * idx) + arg3 + 36)]):
                    require cd[((32 * idx) + arg2 + 36)] <= stor2
                    stor2 -= cd[((32 * idx) + arg2 + 36)]
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                    call address(cd[((32 * idx) + arg3 + 36)]).0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), cd[((32 * idx) + arg2 + 36)]
                    require ext_call.success
                    require ext_call.return_data[0]
            else:
                if stor2 <= 0:
                    idx = idx + 1
                    s = 0
                    continue 
                if stor2 < cd[((32 * idx) + arg2 + 36)]:
                    idx = idx + 1
                    s = 0
                    continue 
                if not address(cd[((32 * idx) + arg3 + 36)]):
                    _93 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_93] = cd[((32 * idx) + arg1 + 36)]
                    mem[_93 + 32] = msg.sender
                    mem[_93 + 64] = cd[((32 * idx) + arg2 + 36)]
                    mem[_93 + 96] = address(cd[((32 * idx) + arg3 + 36)])
                    mem[_93 + 128] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[_93 + 160] = cd[((32 * idx) + arg5 + 36)]
                    mem[_93 + 192] = cd[((32 * idx) + arg6 + 36)]
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    mem[32] = 1
                    orders[cd[((32 * idx) + arg1 + 36)]].field_0 = cd[((32 * idx) + arg1 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_256 = msg.sender
                    orders[cd[((32 * idx) + arg1 + 36)]].field_512 = cd[((32 * idx) + arg2 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_768 = address(cd[((32 * idx) + arg3 + 36)])
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1024 = address(cd[((32 * idx) + arg4 + 36)])
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1280 = cd[((32 * idx) + arg5 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1536 = cd[((32 * idx) + arg6 + 36)]
                    require cd[((32 * idx) + arg2 + 36)] <= stor2
                    stor2 -= cd[((32 * idx) + arg2 + 36)]
                else:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                    call address(cd[((32 * idx) + arg3 + 36)]).0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[mem[64] + 32] = 0
                    mem[mem[64] + 4] = msg.sender
                    require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                    call address(cd[((32 * idx) + arg3 + 36)]).0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        idx = idx + 1
                        s = 0
                        continue 
                    _125 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_125] = cd[((32 * idx) + arg1 + 36)]
                    mem[_125 + 32] = msg.sender
                    mem[_125 + 64] = cd[((32 * idx) + arg2 + 36)]
                    mem[_125 + 96] = address(cd[((32 * idx) + arg3 + 36)])
                    mem[_125 + 128] = address(cd[((32 * idx) + arg4 + 36)])
                    mem[_125 + 160] = cd[((32 * idx) + arg5 + 36)]
                    mem[_125 + 192] = cd[((32 * idx) + arg6 + 36)]
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    mem[32] = 1
                    orders[cd[((32 * idx) + arg1 + 36)]].field_0 = cd[((32 * idx) + arg1 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_256 = msg.sender
                    orders[cd[((32 * idx) + arg1 + 36)]].field_512 = cd[((32 * idx) + arg2 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_768 = address(cd[((32 * idx) + arg3 + 36)])
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1024 = address(cd[((32 * idx) + arg4 + 36)])
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1280 = cd[((32 * idx) + arg5 + 36)]
                    orders[cd[((32 * idx) + arg1 + 36)]].field_1536 = cd[((32 * idx) + arg6 + 36)]
                    if not address(cd[((32 * idx) + arg3 + 36)]):
                        require cd[((32 * idx) + arg2 + 36)] <= stor2
                        stor2 -= cd[((32 * idx) + arg2 + 36)]
                    else:
                        require ext_code.size(address(cd[((32 * idx) + arg3 + 36)]))
                        call address(cd[((32 * idx) + arg3 + 36)]).0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args msg.sender, address(this.address), cd[((32 * idx) + arg2 + 36)]
                        require ext_call.success
                        require ext_call.return_data[0]
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] + 64] = cd[((32 * idx) + arg5 + 36)]
            mem[mem[64] + 96] = cd[((32 * idx) + arg6 + 36)]
            emit LogMakeOrder(cd[((32 * idx) + arg1 + 36)], cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg5 + 36)], cd[((32 * idx) + arg6 + 36)], msg.sender, address(cd[((32 * idx) + arg3 + 36)]), address(cd[((32 * idx) + arg4 + 36)]));
        idx = idx + 1
        s = s
        continue 
    if stor2 > 0:
        call msg.sender with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor0 = 0
    stor2 = 0
    return bool(s)
}

function takeOrder(uint256 arg1, uint256 arg2) payable {
    stor2 = msg.value
    require not stor0
    stor0 = 1
    if arg1 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg2 <= 0:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if orders[arg1].field_0 != arg1:
        if stor2 > 0:
            call msg.sender with:
               value stor2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        stor0 = 0
        stor2 = 0
        return 0
    if arg2 > orders[arg1].field_512:
        if not orders[arg1].field_512:
            require orders[arg1].field_1280
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                if ext_call.return_data[0] < 0 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0] < arg2:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
            else:
                if stor2 <= 0:
                    stor0 = 0
                    stor2 = 0
                    return 0
                if stor2 < 0 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                if orders[arg1].field_1024:
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    if ext_call.return_data[0] < 0 / orders[arg1].field_1280:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < arg2:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
            require orders[arg1].field_512 <= orders[arg1].field_512
            orders[arg1].field_512 = 0
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, orders[arg1].field_256, 0 / orders[arg1].field_1280
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require 0 / orders[arg1].field_1280 <= stor2
                stor2 -= 0 / orders[arg1].field_1280
                call orders[arg1].field_256 with:
                   value 0 / orders[arg1].field_1280 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require orders[arg1].field_512
            require orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_512 == orders[arg1].field_1536
            require orders[arg1].field_1280
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                if ext_call.return_data[0] < orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0] < arg2:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
            else:
                if stor2 <= 0:
                    stor0 = 0
                    stor2 = 0
                    return 0
                if stor2 < orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                if orders[arg1].field_1024:
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    if ext_call.return_data[0] < orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < arg2:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
            require orders[arg1].field_512 <= orders[arg1].field_512
            orders[arg1].field_512 = 0
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, orders[arg1].field_256, orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280 <= stor2
                stor2 -= orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280
                call orders[arg1].field_256 with:
                   value orders[arg1].field_512 * orders[arg1].field_1536 / orders[arg1].field_1280 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        if not orders[arg1].field_768:
            call msg.sender with:
               value orders[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(orders[arg1].field_768)
            call orders[arg1].field_768.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, orders[arg1].field_512
            require ext_call.success
            require ext_call.return_data[0]
        emit LogTakeOrder(orders[arg1].field_512, arg1, msg.sender);
    else:
        if not arg2:
            require orders[arg1].field_1280
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                if ext_call.return_data[0] < 0 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0] < arg2:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
            else:
                if stor2 <= 0:
                    stor0 = 0
                    stor2 = 0
                    return 0
                if stor2 < 0 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                if orders[arg1].field_1024:
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    if ext_call.return_data[0] < 0 / orders[arg1].field_1280:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < arg2:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
            require arg2 <= orders[arg1].field_512
            orders[arg1].field_512 -= arg2
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, orders[arg1].field_256, 0 / orders[arg1].field_1280
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require 0 / orders[arg1].field_1280 <= stor2
                stor2 -= 0 / orders[arg1].field_1280
                call orders[arg1].field_256 with:
                   value 0 / orders[arg1].field_1280 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require arg2
            require arg2 * orders[arg1].field_1536 / arg2 == orders[arg1].field_1536
            require orders[arg1].field_1280
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                if ext_call.return_data[0] < arg2 * orders[arg1].field_1536 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if ext_call.return_data[0] < arg2:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
            else:
                if stor2 <= 0:
                    stor0 = 0
                    stor2 = 0
                    return 0
                if stor2 < arg2 * orders[arg1].field_1536 / orders[arg1].field_1280:
                    if stor2 > 0:
                        call msg.sender with:
                           value stor2 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    stor0 = 0
                    stor2 = 0
                    return 0
                if orders[arg1].field_1024:
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    require ext_call.success
                    if ext_call.return_data[0] < arg2 * orders[arg1].field_1536 / orders[arg1].field_1280:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
                    require ext_code.size(orders[arg1].field_1024)
                    call orders[arg1].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0] < arg2:
                        if stor2 > 0:
                            call msg.sender with:
                               value stor2 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        stor0 = 0
                        stor2 = 0
                        return 0
            require arg2 <= orders[arg1].field_512
            orders[arg1].field_512 -= arg2
            if orders[arg1].field_1024:
                require ext_code.size(orders[arg1].field_1024)
                call orders[arg1].field_1024.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, orders[arg1].field_256, arg2 * orders[arg1].field_1536 / orders[arg1].field_1280
                require ext_call.success
                require ext_call.return_data[0]
            else:
                require arg2 * orders[arg1].field_1536 / orders[arg1].field_1280 <= stor2
                stor2 -= arg2 * orders[arg1].field_1536 / orders[arg1].field_1280
                call orders[arg1].field_256 with:
                   value arg2 * orders[arg1].field_1536 / orders[arg1].field_1280 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        if not orders[arg1].field_768:
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(orders[arg1].field_768)
            call orders[arg1].field_768.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2
            require ext_call.success
            require ext_call.return_data[0]
        emit LogTakeOrder(arg2, arg1, msg.sender);
    if stor2 > 0:
        call msg.sender with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor0 = 0
    stor2 = 0
    return 1
}

function takeOrders(uint256[] arg1, uint256[] arg2) payable {
    stor2 = msg.value
    require not stor0
    stor0 = 1
    require arg1.length == arg2.length
    idx = 0
    s = 1
    while idx < arg1.length:
        require idx < arg2.length
        if cd[((32 * idx) + arg1 + 36)] <= 0:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        if cd[((32 * idx) + arg2 + 36)] <= 0:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 1
        if orders[cd[((32 * idx) + arg1 + 36)]].field_0 != cd[((32 * idx) + arg1 + 36)]:
            if not s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        if cd[((32 * idx) + arg2 + 36)] > orders[cd[((32 * idx) + arg1 + 36)]].field_512:
            if not orders[cd[((32 * idx) + arg1 + 36)]].field_512:
                require orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    mem[100] = msg.sender
                    mem[132] = this.address
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[128] = 0
                    mem[100] = msg.sender
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    if stor2 <= 0:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if stor2 < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        mem[100] = msg.sender
                        mem[132] = this.address
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        mem[128] = 0
                        mem[100] = msg.sender
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                require orders[cd[((32 * idx) + arg1 + 36)]].field_512 <= orders[cd[((32 * idx) + arg1 + 36)]].field_512
                orders[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
                if not orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    require 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 <= stor2
                    stor2 -= 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_256 with:
                       value 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    mem[100] = msg.sender
                    mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_256
                    mem[164] = 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, orders[cd[((32 * idx) + arg1 + 36)]].field_256, 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_call.success
                    require ext_call.return_data[0]
            else:
                require orders[cd[((32 * idx) + arg1 + 36)]].field_512
                require orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_512 == orders[cd[((32 * idx) + arg1 + 36)]].field_1536
                require orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    mem[100] = msg.sender
                    mem[132] = this.address
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[128] = 0
                    mem[100] = msg.sender
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    if stor2 <= 0:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if stor2 < orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        mem[100] = msg.sender
                        mem[132] = this.address
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        mem[128] = 0
                        mem[100] = msg.sender
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                require orders[cd[((32 * idx) + arg1 + 36)]].field_512 <= orders[cd[((32 * idx) + arg1 + 36)]].field_512
                orders[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
                if not orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    require orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 <= stor2
                    stor2 -= orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_256 with:
                       value orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    mem[100] = msg.sender
                    mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_256
                    mem[164] = orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, orders[cd[((32 * idx) + arg1 + 36)]].field_256, orders[cd[((32 * idx) + arg1 + 36)]].field_512 * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_call.success
                    require ext_call.return_data[0]
            if not orders[cd[((32 * idx) + arg1 + 36)]].field_768:
                call msg.sender with:
                   value orders[cd[((32 * idx) + arg1 + 36)]].field_512 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                mem[100] = msg.sender
                mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_512
                require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_768)
                call orders[cd[((32 * idx) + arg1 + 36)]].field_768.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, orders[cd[((32 * idx) + arg1 + 36)]].field_512
                require ext_call.success
                require ext_call.return_data[0]
            mem[96] = orders[cd[((32 * idx) + arg1 + 36)]].field_512
            emit LogTakeOrder(orders[cd[((32 * idx) + arg1 + 36)]].field_512, cd[((32 * idx) + arg1 + 36)], msg.sender);
        else:
            if not cd[((32 * idx) + arg2 + 36)]:
                require orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    mem[100] = msg.sender
                    mem[132] = this.address
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[128] = 0
                    mem[100] = msg.sender
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    if stor2 <= 0:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if stor2 < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        mem[100] = msg.sender
                        mem[132] = this.address
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        mem[128] = 0
                        mem[100] = msg.sender
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                require cd[((32 * idx) + arg2 + 36)] <= orders[cd[((32 * idx) + arg1 + 36)]].field_512
                orders[cd[((32 * idx) + arg1 + 36)]].field_512 -= cd[((32 * idx) + arg2 + 36)]
                if not orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    require 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 <= stor2
                    stor2 -= 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_256 with:
                       value 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    mem[100] = msg.sender
                    mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_256
                    mem[164] = 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, orders[cd[((32 * idx) + arg1 + 36)]].field_256, 0 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_call.success
                    require ext_call.return_data[0]
            else:
                require cd[((32 * idx) + arg2 + 36)]
                require cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / cd[((32 * idx) + arg2 + 36)] == orders[cd[((32 * idx) + arg1 + 36)]].field_1536
                require orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    mem[100] = msg.sender
                    mem[132] = this.address
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                         gas gas_remaining - 710 wei
                        args msg.sender, this.address
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    mem[128] = 0
                    mem[100] = msg.sender
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    if stor2 <= 0:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if stor2 < cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                        if not s:
                            idx = idx + 1
                            s = s
                            continue 
                        idx = idx + 1
                        s = 0
                        continue 
                    if orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        mem[100] = msg.sender
                        mem[132] = this.address
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0xdd62ed3e with:
                             gas gas_remaining - 710 wei
                            args msg.sender, this.address
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                        mem[128] = 0
                        mem[100] = msg.sender
                        require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                        call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        mem[96] = ext_call.return_data[0]
                        require ext_call.success
                        if ext_call.return_data[0] < cd[((32 * idx) + arg2 + 36)]:
                            if not s:
                                idx = idx + 1
                                s = s
                                continue 
                            idx = idx + 1
                            s = 0
                            continue 
                require cd[((32 * idx) + arg2 + 36)] <= orders[cd[((32 * idx) + arg1 + 36)]].field_512
                orders[cd[((32 * idx) + arg1 + 36)]].field_512 -= cd[((32 * idx) + arg2 + 36)]
                if not orders[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    require cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 <= stor2
                    stor2 -= cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_256 with:
                       value cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                else:
                    mem[100] = msg.sender
                    mem[132] = orders[cd[((32 * idx) + arg1 + 36)]].field_256
                    mem[164] = cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_1024)
                    call orders[cd[((32 * idx) + arg1 + 36)]].field_1024.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, orders[cd[((32 * idx) + arg1 + 36)]].field_256, cd[((32 * idx) + arg2 + 36)] * orders[cd[((32 * idx) + arg1 + 36)]].field_1536 / orders[cd[((32 * idx) + arg1 + 36)]].field_1280
                    require ext_call.success
                    require ext_call.return_data[0]
            if not orders[cd[((32 * idx) + arg1 + 36)]].field_768:
                call msg.sender with:
                   value cd[((32 * idx) + arg2 + 36)] wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                mem[100] = msg.sender
                mem[132] = cd[((32 * idx) + arg2 + 36)]
                require ext_code.size(orders[cd[((32 * idx) + arg1 + 36)]].field_768)
                call orders[cd[((32 * idx) + arg1 + 36)]].field_768.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, cd[((32 * idx) + arg2 + 36)]
                require ext_call.success
                require ext_call.return_data[0]
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit LogTakeOrder(cd[((32 * idx) + arg2 + 36)], cd[((32 * idx) + arg1 + 36)], msg.sender);
        idx = idx + 1
        s = s
        continue 
    if stor2 > 0:
        call msg.sender with:
           value stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    stor0 = 0
    stor2 = 0
    return bool(s)
}



}
