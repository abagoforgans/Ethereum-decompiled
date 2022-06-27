contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 orderCount;
address XIOAddress;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;

function orderCount() {
    return orderCount
}

function XIO() {
    return XIOAddress
}

function _fallback() payable {
    revert
}

function orders(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, bool(stor0[arg1].field_160), stor0[arg1].field_256, stor0[arg1].field_512
}

function sub_5d19dcf8(?) payable {
    require arg1 > 0
    require arg2 > 0
    if not arg1:
        require not msg.value
    else:
        require arg2 * arg1 / arg1 == arg2
        require arg2 * arg1 == 10^18 * arg2 * arg1 / 10^18
        require msg.value == arg2 * arg1 / 10^18
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_160 = 1
    stor290D[stor0.length] = arg1
    stor290D[stor0.length] = arg2
    emit 0x374adb59: arg1, arg2, orderCount, msg.sender
    orderCount++
}

function sub_a9b4be44(?) {
    require arg1 > 0
    require arg2 > 0
    require ext_code.size(XIOAddress)
    call XIOAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0.length++
    stor0[stor0.length].field_0 = msg.sender
    stor0[stor0.length].field_160 = 0
    stor290D[stor0.length] = arg1
    stor290D[stor0.length] = arg2
    emit 0xdaf2f29f: arg1, arg2, orderCount, msg.sender
    orderCount++
}

function cancelOrder(uint256 arg1) {
    require arg1 < stor0.length
    require stor0[arg1].field_0 == msg.sender
    require arg1 < stor0.length
    require stor0[arg1].field_512 > 0
    require arg1 < stor0.length
    require arg1 < stor0.length
    if not stor0[arg1].field_160:
        require ext_code.size(XIOAddress)
        call XIOAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor0[arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        if not stor0[arg1].field_256:
            call msg.sender with:
                 gas 2300 wei
        else:
            require stor0[arg1].field_512 * stor0[arg1].field_256 / stor0[arg1].field_256 == stor0[arg1].field_512
            require stor0[arg1].field_512 * stor0[arg1].field_256 == 10^18 * stor0[arg1].field_512 * stor0[arg1].field_256 / 10^18
            call msg.sender with:
               value stor0[arg1].field_512 * stor0[arg1].field_256 / 10^18 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg1 < stor0.length
    stor0[arg1].field_0 = 0
    stor0[arg1].field_256 = 0
    stor0[arg1].field_512 = 0
    emit CancelOrder(arg1);
}

function fillOrder(uint256 arg1, uint256 arg2) payable {
    require arg1 < stor0.length
    require arg2 > 0
    require arg1 < stor0.length
    require stor0[arg1].field_0 != msg.sender
    require arg1 < stor0.length
    require stor0[arg1].field_512 >= arg2
    require arg1 < stor0.length
    if not stor0[arg1].field_160:
        require arg1 < stor0.length
        if not stor0[arg1].field_256:
            require 0 == msg.value
            require ext_code.size(XIOAddress)
            call XIOAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg1 < stor0.length
            call stor0[arg1].field_0 with:
                 gas 2300 wei
        else:
            require arg2 * stor0[arg1].field_256 / stor0[arg1].field_256 == arg2
            require arg2 * stor0[arg1].field_256 == 10^18 * arg2 * stor0[arg1].field_256 / 10^18
            require arg2 * stor0[arg1].field_256 / 10^18 == msg.value
            require ext_code.size(XIOAddress)
            call XIOAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg1 < stor0.length
            call stor0[arg1].field_0 with:
               value arg2 * stor0[arg1].field_256 / 10^18 wei
                 gas 2300 * is_zero(value) wei
    else:
        require not msg.value
        require arg1 < stor0.length
        require ext_code.size(XIOAddress)
        call XIOAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor0[arg1].field_0, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < stor0.length
        if not stor0[arg1].field_256:
            call msg.sender with:
                 gas 2300 wei
        else:
            require arg2 * stor0[arg1].field_256 / stor0[arg1].field_256 == arg2
            require arg2 * stor0[arg1].field_256 == 10^18 * arg2 * stor0[arg1].field_256 / 10^18
            call msg.sender with:
               value arg2 * stor0[arg1].field_256 / 10^18 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < stor0.length
    require arg1 < stor0.length
    if stor0[arg1].field_512 != arg2:
        stor0[arg1].field_512 -= arg2
    else:
        stor0[arg1].field_0 = 0
        stor0[arg1].field_256 = 0
        stor0[arg1].field_512 = 0
    emit FillOrder(arg2, arg1, msg.sender);
}



}
