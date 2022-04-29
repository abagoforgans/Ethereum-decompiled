contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 0
    create contract with 0 wei
                    code: code.data[2399 len 1340]
    require create.new_address
    stor2 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[3739 len 937], address(create.new_address)
    stor3 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[4676 len 876], stor2
    stor4 = address(create.new_address)
    stor5 = 421101 * 3600
    stor0 = msg.sender
    return code.data[350 len 2049]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
address stor0;
uint8 stor1; offset 160
address stocksAddress;
address hypeAddress;
address bighypeAddress;
uint256 time_Start_Crowdsale;

function Time_Start_Crowdsale() {
    return time_Start_Crowdsale
}

function bighype() {
    return bighypeAddress
}

function hype() {
    return hypeAddress
}

function stocks() {
    return stocksAddress
}

function sub_204fff38(?) {
    require ext_code.size(stocksAddress)
    call stocksAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}

function gettotalSupply() {
    require ext_code.size(stocksAddress)
    call stocksAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function Take_share_team_AES() {
    require stor0 == msg.sender
    require not stor1
    require ext_code.size(stocksAddress)
    call stocksAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 100000
    require ext_call.success
    stor1 = 1
}



}
