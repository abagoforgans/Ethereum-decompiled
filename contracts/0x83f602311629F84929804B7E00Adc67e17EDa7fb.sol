contract main {


// =======================  Init code  ======================


address stor0; offset 8
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor1 = code.data[1801 len 20]
    stor0 = msg.sender
    stor4 = 625 * 10^13
    stor5 = 210000000 * 10^18
    stor2 = code.data[1833 len 20]
    stor3 = code.data[1865 len 20]
    return code.data[249 len 1540]
}



// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address sellerAddress; offset 8
address tokenContractAddress;
address complianceContractAddress;
address complianceWalletAddress;
uint256 sellPrice;
uint256 sellQuantity;

function seller() {
    return sellerAddress
}

function sellQuantity() {
    return sellQuantity
}

function sellPrice() {
    return sellPrice
}

function tokenContract() {
    return tokenContractAddress
}

function complianceWallet() {
    return complianceWalletAddress
}

function complianceContract() {
    return complianceContractAddress
}

function safeWithdrawal() {
    if sellerAddress == msg.sender:
        call sellerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    require sellPrice
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args sellerAddress
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(stor0.field_0), this.address
    require ext_call.success
    if sellerAddress != msg.sender:
        if ext_call.return_data[0] < 10^18 * msg.value / sellPrice:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if ext_call.return_data[0] < 10^18 * msg.value / sellPrice:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            else:
                if msg.value <= 20 * 10^18:
                    call sellerAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(stor0.field_0), msg.sender, 10^18 * msg.value / sellPrice
                else:
                    call complianceWalletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(complianceContractAddress)
                    call complianceContractAddress.0x7eaf45f8 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value
                require ext_call.success
                require ext_call.return_data[0]
    uint8(stor0.field_0) = 0
}



}
