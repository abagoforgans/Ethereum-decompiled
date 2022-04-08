contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x335854ef79fff47f9050ca853c7f3ba53eeeee93
    require not msg.value
    return code.data[66 len 2047]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;

function _fallback() payable {
    revert
}

function trades(address arg1, address arg2) {
    return stor0[arg1][arg2].field_0, 
           stor0[arg1][arg2].field_256,
           stor0[arg1][arg2].field_512,
           stor0[arg1][arg2].field_768,
           stor0[arg1][arg2].field_1024,
           bool(stor0[arg1][arg2].field_1280),
           bool(stor0[arg1][arg2].field_1288)
}

function cancelTrade(address arg1) {
    require stor0[address(msg.sender)][address(arg1)].field_1280
    require not stor0[address(msg.sender)][address(arg1)].field_1288
    stor0[address(msg.sender)][address(arg1)].field_1280 = 0
    call msg.sender with:
       value stor0[address(msg.sender)][address(arg1)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalizeTrade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require stor0[address(arg1)][address(msg.sender)].field_1280
    require not stor0[address(arg1)][address(msg.sender)].field_1288
    require stor0[address(arg1)][address(msg.sender)].field_0 == arg3
    require stor0[address(arg1)][address(msg.sender)].field_256 == arg4
    require stor0[address(arg1)][address(msg.sender)].field_512 == arg2
    require stor0[address(arg1)][address(msg.sender)].field_768 == msg.value
    require stor0[address(arg1)][address(msg.sender)].field_1024 == arg5
    stor0[address(arg1)][address(msg.sender)].field_1288 = 1
}

function startTrade(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require msg.value
    require arg3
    require arg5 > block.number + 220
    require not stor0[address(msg.sender)][address(arg1)].field_1280
    require not stor0[address(arg1)][address(msg.sender)].field_1280
    stor0[address(msg.sender)][address(arg1)].field_0 = arg2
    stor0[address(msg.sender)][address(arg1)].field_256 = arg3
    stor0[address(msg.sender)][address(arg1)].field_512 = msg.value
    stor0[address(msg.sender)][address(arg1)].field_768 = arg4
    stor0[address(msg.sender)][address(arg1)].field_1024 = arg5
    stor0[address(msg.sender)][address(arg1)].field_1280 = 1
    stor0[address(msg.sender)][address(arg1)].field_1288 = 0
}

function completeTrade(address arg1) {
    if not stor0[address(msg.sender)][address(arg1)].field_1280:
        require stor0[address(arg1)][address(msg.sender)].field_1280
        require stor0[address(arg1)][address(msg.sender)].field_1288
        stor0[address(arg1)][address(msg.sender)].field_1280 = 0
        require ext_code.size(stor0[address(arg1)][address(msg.sender)].field_0)
        call stor0[address(arg1)][address(msg.sender)].field_0.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), stor0[address(arg1)][address(msg.sender)].field_256 - (5 * stor0[address(arg1)][address(msg.sender)].field_256 / 1000)
        require ext_call.success
        if not ext_call.return_data[0]:
            require stor0[address(arg1)][address(msg.sender)].field_1024 < block.number
            call arg1 with:
               value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (stor0[address(arg1)][address(msg.sender)].field_768 / 100) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call stor1 with:
               value stor0[address(arg1)][address(msg.sender)].field_768 / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(stor0[address(arg1)][address(msg.sender)].field_0)
            call stor0[address(arg1)][address(msg.sender)].field_0.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor1, 5 * stor0[address(arg1)][address(msg.sender)].field_256 / 1000
            require ext_call.success
            if ext_call.return_data[0]:
                call msg.sender with:
                   value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (5 * stor0[address(arg1)][address(msg.sender)].field_512 / 1000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor1 with:
                   value 5 * stor0[address(arg1)][address(msg.sender)].field_512 / 1000 wei
                     gas 2300 * is_zero(value) wei
            else:
                require stor0[address(arg1)][address(msg.sender)].field_1024 < block.number
                call arg1 with:
                   value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (stor0[address(arg1)][address(msg.sender)].field_768 / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor1 with:
                   value stor0[address(arg1)][address(msg.sender)].field_768 / 100 wei
                     gas 2300 * is_zero(value) wei
    else:
        if stor0[address(msg.sender)][address(arg1)].field_1288:
            stor0[address(msg.sender)][address(arg1)].field_1280 = 0
            require ext_code.size(stor0[address(msg.sender)][address(arg1)].field_0)
            call stor0[address(msg.sender)][address(arg1)].field_0.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.sender, stor0[address(msg.sender)][address(arg1)].field_256 - (5 * stor0[address(msg.sender)][address(arg1)].field_256 / 1000)
            require ext_call.success
            if not ext_call.return_data[0]:
                require stor0[address(msg.sender)][address(arg1)].field_1024 < block.number
                call msg.sender with:
                   value stor0[address(msg.sender)][address(arg1)].field_768 + stor0[address(msg.sender)][address(arg1)].field_512 - (stor0[address(msg.sender)][address(arg1)].field_768 / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor1 with:
                   value stor0[address(msg.sender)][address(arg1)].field_768 / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor0[address(msg.sender)][address(arg1)].field_0)
                call stor0[address(msg.sender)][address(arg1)].field_0.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(arg1), stor1, 5 * stor0[address(msg.sender)][address(arg1)].field_256 / 1000
                require ext_call.success
                if ext_call.return_data[0]:
                    call arg1 with:
                       value stor0[address(msg.sender)][address(arg1)].field_768 + stor0[address(msg.sender)][address(arg1)].field_512 - (5 * stor0[address(msg.sender)][address(arg1)].field_512 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor1 with:
                       value 5 * stor0[address(msg.sender)][address(arg1)].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor0[address(msg.sender)][address(arg1)].field_1024 < block.number
                    call msg.sender with:
                       value stor0[address(msg.sender)][address(arg1)].field_768 + stor0[address(msg.sender)][address(arg1)].field_512 - (stor0[address(msg.sender)][address(arg1)].field_768 / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor1 with:
                       value stor0[address(msg.sender)][address(arg1)].field_768 / 100 wei
                         gas 2300 * is_zero(value) wei
        else:
            require stor0[address(arg1)][address(msg.sender)].field_1280
            require stor0[address(arg1)][address(msg.sender)].field_1288
            stor0[address(arg1)][address(msg.sender)].field_1280 = 0
            require ext_code.size(stor0[address(arg1)][address(msg.sender)].field_0)
            call stor0[address(arg1)][address(msg.sender)].field_0.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(arg1), stor0[address(arg1)][address(msg.sender)].field_256 - (5 * stor0[address(arg1)][address(msg.sender)].field_256 / 1000)
            require ext_call.success
            if not ext_call.return_data[0]:
                require stor0[address(arg1)][address(msg.sender)].field_1024 < block.number
                call arg1 with:
                   value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (stor0[address(arg1)][address(msg.sender)].field_768 / 100) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                call stor1 with:
                   value stor0[address(arg1)][address(msg.sender)].field_768 / 100 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(stor0[address(arg1)][address(msg.sender)].field_0)
                call stor0[address(arg1)][address(msg.sender)].field_0.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor1, 5 * stor0[address(arg1)][address(msg.sender)].field_256 / 1000
                require ext_call.success
                if ext_call.return_data[0]:
                    call msg.sender with:
                       value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (5 * stor0[address(arg1)][address(msg.sender)].field_512 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor1 with:
                       value 5 * stor0[address(arg1)][address(msg.sender)].field_512 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    require stor0[address(arg1)][address(msg.sender)].field_1024 < block.number
                    call arg1 with:
                       value stor0[address(arg1)][address(msg.sender)].field_768 + stor0[address(arg1)][address(msg.sender)].field_512 - (stor0[address(arg1)][address(msg.sender)].field_768 / 100) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    call stor1 with:
                       value stor0[address(arg1)][address(msg.sender)].field_768 / 100 wei
                         gas 2300 * is_zero(value) wei
}



}
