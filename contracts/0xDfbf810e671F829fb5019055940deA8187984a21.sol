contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() payable {
    stor2 = 0x1111111111111111111111111111111111111111
    require not msg.value
    stor0 = code.data[2928 len 20]
    stor5 = 0x6f28b146804dba2d6f944c03528a8fdbc673df2c
    require ext_code.size(stor5)
    call stor5.baseprice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require 1500000000000000 * 10^18 == (ext_call.return_data[0] * 1500000000000000 * 10^18 / ext_call.return_data[0]) + (1500000000000000 * 10^18 % ext_call.return_data[0])
    stor4 = 1500000000000000 * 10^18 / ext_call.return_data[0]
    require stor4 > 0
    require stor4
    require 10000000000000000000 * 10^18 == (stor4 * 10000000000000000000 * 10^18 / stor4) + (10000000000000000000 * 10^18 % stor4)
    stor3 = 10000000000000000000 * 10^18 / stor4
    stor1 = code.data[2960 len 20]
    return code.data[797 len 2119]
}



// =====================  Runtime code  =====================


address sub_c7b60dcfAddress;
address founderAddress;
address allocationAddress;
uint256 sub_8200b74d;
uint256 sub_de0e6123;
address stor5;

function founder() {
    return founderAddress
}

function sub_8200b74d(?) {
    return sub_8200b74d
}

function sub_c7b60dcf(?) {
    return sub_c7b60dcfAddress
}

function allocationAddress() {
    return allocationAddress
}

function sub_de0e6123(?) {
    return sub_de0e6123
}

function getPrice() {
    require ext_code.size(stor5)
    call stor5.baseprice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require 1500000000000000 * 10^18 == (ext_call.return_data[0] * 1500000000000000 * 10^18 / ext_call.return_data[0]) + (1500000000000000 * 10^18 % ext_call.return_data[0])
    sub_de0e6123 = 1500000000000000 * 10^18 / ext_call.return_data[0]
    require sub_de0e6123 > 0
    require sub_de0e6123
    require 10000000000000000000 * 10^18 == (sub_de0e6123 * 10000000000000000000 * 10^18 / sub_de0e6123) + (10000000000000000000 * 10^18 % sub_de0e6123)
    return (10000000000000000000 * 10^18 / sub_de0e6123)
}

function _fallback() payable {
    require ext_code.size(sub_c7b60dcfAddress)
    call sub_c7b60dcfAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args allocationAddress
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor5)
    call stor5.baseprice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require 1500000000000000 * 10^18 == (ext_call.return_data[0] * 1500000000000000 * 10^18 / ext_call.return_data[0]) + (1500000000000000 * 10^18 % ext_call.return_data[0])
    sub_de0e6123 = 1500000000000000 * 10^18 / ext_call.return_data[0]
    require sub_de0e6123 > 0
    require sub_de0e6123
    require 10000000000000000000 * 10^18 == (sub_de0e6123 * 10000000000000000000 * 10^18 / sub_de0e6123) + (10000000000000000000 * 10^18 % sub_de0e6123)
    sub_8200b74d = 10000000000000000000 * 10^18 / sub_de0e6123
    if not msg.value:
        require sub_8200b74d > 0
        if sub_8200b74d:
            require 10^6 * msg.value == (sub_8200b74d * 10^6 * msg.value / sub_8200b74d) + (10^6 * msg.value % sub_8200b74d)
            require ext_call.return_data[0] >= 10^6 * msg.value / sub_8200b74d
            if ext_code.size(sub_c7b60dcfAddress):
                call sub_c7b60dcfAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                if ext_call.success:
                    require ext_call.return_data[0] + (10^6 * msg.value / sub_8200b74d) >= ext_call.return_data[0]
                    require ext_call.return_data[0] + (10^6 * msg.value / sub_8200b74d) <= 5 * 10^12
                    call founderAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit FundTransfer(founderAddress, msg.value);
                    if ext_code.size(sub_c7b60dcfAddress):
                        call sub_c7b60dcfAddress.issueTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^6 * msg.value / sub_8200b74d
                        if ext_call.success:
    else:
        if msg.value:
            require 10^6 * msg.value / msg.value == 10^6
            require sub_8200b74d > 0
            if sub_8200b74d:
                require 10^6 * msg.value == (sub_8200b74d * 10^6 * msg.value / sub_8200b74d) + (10^6 * msg.value % sub_8200b74d)
                require ext_call.return_data[0] >= 10^6 * msg.value / sub_8200b74d
                if ext_code.size(sub_c7b60dcfAddress):
                    call sub_c7b60dcfAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    if ext_call.success:
                        require ext_call.return_data[0] + (10^6 * msg.value / sub_8200b74d) >= ext_call.return_data[0]
                        require ext_call.return_data[0] + (10^6 * msg.value / sub_8200b74d) <= 5 * 10^12
                        call founderAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit FundTransfer(founderAddress, msg.value);
                        if ext_code.size(sub_c7b60dcfAddress):
                            call sub_c7b60dcfAddress.issueTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 10^6 * msg.value / sub_8200b74d
                            if ext_call.success:
    revert
}



}
