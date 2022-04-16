contract main {


// =======================  Init code  ======================


address stor0; offset 8

function _fallback() {
    stor0 = msg.sender
    return code.data[65 len 4101]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address adminAddress; offset 8
mapping of struct sub_1fdaa5e8;
mapping of uint256 fee;

function sub_1fdaa5e8(?) {
    return sub_1fdaa5e8[address(arg1)].field_1024
}

function sub_42d43264(?) {
    return sub_1fdaa5e8[address(arg1)].field_768
}

function sub_6971cc7f(?) {
    return sub_1fdaa5e8[address(arg1)].field_512
}

function getOrder(address arg1) {
    return sub_1fdaa5e8[address(arg1)].field_512, 
           sub_1fdaa5e8[address(arg1)].field_768,
           sub_1fdaa5e8[address(arg1)].field_1024,
           sub_1fdaa5e8[address(arg1)].field_1280,
           sub_1fdaa5e8[address(arg1)].field_1536,
           sub_1fdaa5e8[address(arg1)].field_1792
}

function fee(address arg1) {
    return fee[arg1]
}

function sub_aa767289(?) {
    return sub_1fdaa5e8[address(arg1)].field_1536
}

function sub_e16a4b61(?) {
    return sub_1fdaa5e8[address(arg1)].field_1280
}

function orders(address arg1) {
    return sub_1fdaa5e8[arg1].field_0, 
           sub_1fdaa5e8[arg1].field_256,
           sub_1fdaa5e8[arg1].field_512,
           sub_1fdaa5e8[arg1].field_768,
           sub_1fdaa5e8[arg1].field_1024,
           sub_1fdaa5e8[arg1].field_1280,
           sub_1fdaa5e8[arg1].field_1536,
           sub_1fdaa5e8[arg1].field_1792
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function getAmount(uint256 arg1, uint256 arg2, uint256 arg3) {
    require arg2
    return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
}

function sub_c205456d(?) {
    if sub_1fdaa5e8[address(arg1)].field_256 == msg.sender:
        sub_1fdaa5e8[address(arg1)].field_1536 = arg2
}

function safeWithdrawal(address arg1, uint256 arg2) {
    if adminAddress == msg.sender:
        if fee[address(arg1)] >= arg2:
            fee[address(arg1)] -= arg2
            if not arg1:
                call adminAddress with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(arg1)
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(stor0.field_0), arg2
            require ext_call.success
}

function sub_49ef3811(?) payable {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    if arg2:
        require ext_code.size(arg2)
        call arg2.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, this.address
        require ext_call.success
        require ext_call.return_data[0] >= arg5
        require ext_code.size(arg2)
        call arg2.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg5
        require ext_call.success
        require ext_call.return_data[0]
    else:
        require ext_code.size(arg3)
        call arg3.0x313ce567 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[31 len 1] == 18:
            require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^18) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
        else:
            if 17 == ext_call.return_data[31 len 1]:
                require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^17) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
            else:
                if 16 == ext_call.return_data[31 len 1]:
                    require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^16) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
                else:
                    if 15 == ext_call.return_data[31 len 1]:
                        require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^15) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
                    else:
                        if 14 == ext_call.return_data[31 len 1]:
                            require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^14) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
                        else:
                            if 13 == ext_call.return_data[31 len 1]:
                                require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^13) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
                            else:
                                require 12 == ext_call.return_data[31 len 1]
                                require msg.value >= 10^6 * (10 * 10^6 * arg5 / 10^12) + 5 / 10 * (10 * 10^6 * arg4 / 10^18) + 5 / 10
        sub_1fdaa5e8[address(arg1)].field_1792 = msg.value
    sub_1fdaa5e8[address(arg1)].field_0 = arg6
    sub_1fdaa5e8[address(arg1)].field_256 = arg7
    sub_1fdaa5e8[address(arg1)].field_512 = arg2
    sub_1fdaa5e8[address(arg1)].field_768 = arg3
    sub_1fdaa5e8[address(arg1)].field_1024 = msg.sender
    sub_1fdaa5e8[address(arg1)].field_1280 = arg4
    sub_1fdaa5e8[address(arg1)].field_1536 = arg5
    uint8(stor0.field_0) = 0
}

function sub_084bcc8a(?) {
    if sub_1fdaa5e8[address(arg1)].field_0 == msg.sender:
        if not sub_1fdaa5e8[address(arg1)].field_512:
            if sub_1fdaa5e8[address(arg1)].field_1792 > 0:
                call sub_1fdaa5e8[address(arg1)].field_1024 with:
                   value sub_1fdaa5e8[address(arg1)].field_1792 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if not sub_1fdaa5e8[address(arg1)].field_512:
                if sub_1fdaa5e8[address(arg1)].field_1792 > 0:
                    call sub_1fdaa5e8[address(arg1)].field_1024 with:
                       value sub_1fdaa5e8[address(arg1)].field_1792 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if sub_1fdaa5e8[address(arg1)].field_1536 > 0:
                    require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                    call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args sub_1fdaa5e8[address(arg1)].field_1024, sub_1fdaa5e8[address(arg1)].field_1536
                    require ext_call.success
        sub_1fdaa5e8[address(arg1)].field_1792 = 0
        sub_1fdaa5e8[address(arg1)].field_1536 = 0
        sub_1fdaa5e8[address(arg1)].field_1280 = 0
    else:
        if sub_1fdaa5e8[address(arg1)].field_1024 == tx.origin:
            if not sub_1fdaa5e8[address(arg1)].field_512:
                if sub_1fdaa5e8[address(arg1)].field_1792 > 0:
                    call sub_1fdaa5e8[address(arg1)].field_1024 with:
                       value sub_1fdaa5e8[address(arg1)].field_1792 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if not sub_1fdaa5e8[address(arg1)].field_512:
                    if sub_1fdaa5e8[address(arg1)].field_1792 > 0:
                        call sub_1fdaa5e8[address(arg1)].field_1024 with:
                           value sub_1fdaa5e8[address(arg1)].field_1792 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if sub_1fdaa5e8[address(arg1)].field_1536 > 0:
                        require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                        call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args sub_1fdaa5e8[address(arg1)].field_1024, sub_1fdaa5e8[address(arg1)].field_1536
                        require ext_call.success
            sub_1fdaa5e8[address(arg1)].field_1792 = 0
            sub_1fdaa5e8[address(arg1)].field_1536 = 0
            sub_1fdaa5e8[address(arg1)].field_1280 = 0
}

function sub_cbe10737(?) {
    if sub_1fdaa5e8[address(arg1)].field_256 != msg.sender:
        return 0
    if not sub_1fdaa5e8[address(arg1)].field_512:
        sub_1fdaa5e8[address(arg1)].field_1792 -= arg3
        fee[0] += 25 * 10^14 * arg3 / 10^18
        call arg2 with:
           value arg3 - (25 * 10^14 * arg3 / 10^18) wei
             gas 2300 * is_zero(value) wei
    else:
        if not sub_1fdaa5e8[address(arg1)].field_512:
            sub_1fdaa5e8[address(arg1)].field_1792 -= arg3
            fee[0] += 25 * 10^14 * arg3 / 10^18
            call arg2 with:
               value arg3 - (25 * 10^14 * arg3 / 10^18) wei
                 gas 2300 * is_zero(value) wei
        else:
            require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
            call sub_1fdaa5e8[address(arg1)].field_512.0x313ce567 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            sub_1fdaa5e8[address(arg1)].field_1536 -= arg3
            if ext_call.return_data[31 len 1] == 18:
                fee[stor1[address(arg1)].field_512] += 25 * 10^14 * arg3 / 10^18
                require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3 - (25 * 10^14 * arg3 / 10^18)
            else:
                if 17 == ext_call.return_data[31 len 1]:
                    fee[stor1[address(arg1)].field_512] += 25 * 10^13 * arg3 / 10^17
                    require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                    call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg2), arg3 - (25 * 10^13 * arg3 / 10^17)
                else:
                    if 16 == ext_call.return_data[31 len 1]:
                        fee[stor1[address(arg1)].field_512] += 25 * 10^12 * arg3 / 10^16
                        require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                        call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg2), arg3 - (25 * 10^12 * arg3 / 10^16)
                    else:
                        if 15 == ext_call.return_data[31 len 1]:
                            fee[stor1[address(arg1)].field_512] += 25 * 10^11 * arg3 / 10^15
                            require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                            call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg2), arg3 - (25 * 10^11 * arg3 / 10^15)
                        else:
                            if 14 == ext_call.return_data[31 len 1]:
                                fee[stor1[address(arg1)].field_512] += 25 * 10^10 * arg3 / 10^14
                                require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                                call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg2), arg3 - (25 * 10^10 * arg3 / 10^14)
                            else:
                                if 13 == ext_call.return_data[31 len 1]:
                                    fee[stor1[address(arg1)].field_512] += 25 * 10^9 * arg3 / 10^13
                                    require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                                    call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg2), arg3 - (25 * 10^9 * arg3 / 10^13)
                                else:
                                    if ext_call.return_data[31 len 1] != 12:
                                        require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                                        call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg2), arg3
                                    else:
                                        fee[stor1[address(arg1)].field_512] += 2500 * 10^6 * arg3 / 10^12
                                        require ext_code.size(sub_1fdaa5e8[address(arg1)].field_512)
                                        call sub_1fdaa5e8[address(arg1)].field_512.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg2), arg3 - (2500 * 10^6 * arg3 / 10^12)
    require ext_call.success
    return 1
}



}
