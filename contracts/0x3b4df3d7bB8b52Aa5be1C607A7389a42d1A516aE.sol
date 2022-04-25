contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 4761904761904761
    stor3 = 500 * 10^18
    stor4 = 1000 * 10^18
    stor5 = 1500 * 10^18
    stor6 = 2500 * 10^18
    require not msg.value
    stor2 = code.data[3012 len 20]
    stor0 = code.data[2980 len 20]
    return code.data[274 len 2694]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function token() {
    return tokenAddress
}

function withdraw() {
    require msg.sender == stor2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor2, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(stor2)
}

function _fallback() payable {
    require msg.value > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if msg.value <= stor3:
        require ext_call.return_data[0] >= 103 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 103 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
    else:
        if msg.value <= stor4:
            require ext_call.return_data[0] >= 105 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
            call stor2 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 105 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
        else:
            if msg.value <= stor5:
                require ext_call.return_data[0] >= 107 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                call stor2 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 107 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
            else:
                if msg.value > stor6:
                    require ext_call.return_data[0] >= 115 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 115 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                else:
                    require ext_call.return_data[0] >= 112 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 112 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
    require ext_call.success
}

function purchase(address arg1) payable {
    require calldata.size == 36
    require msg.value > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if msg.value <= stor3:
        require ext_call.return_data[0] >= 103 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
        call stor2 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 103 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
    else:
        if msg.value <= stor4:
            require ext_call.return_data[0] >= 105 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
            call stor2 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 105 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
        else:
            if msg.value <= stor5:
                require ext_call.return_data[0] >= 107 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                call stor2 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 107 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
            else:
                if msg.value > stor6:
                    require ext_call.return_data[0] >= 115 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 115 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                else:
                    require ext_call.return_data[0] >= 112 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
                    call stor2 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 112 * msg.value * 10^uint8(ext_call.return_data[0]) / stor1 / 100
    require ext_call.success
}



}
