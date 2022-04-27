contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint128 stor4; offset 160
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2020 len 20]
    stor2 = code.data[2052 len 20]
    require ext_code.size(address(code.data[2040 len 32]))
    call address(code.data[2040 len 32]).convertibleToken(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    stor3 = ext_call.return_data[12 len 20] or Mask(96, 160, stor3)
    require ext_code.size(stor2)
    call stor2.convertibleToken(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    return code.data[438 len 1570]
}



// =====================  Runtime code  =====================


address managerAddress;
address treasuryAddress;
address converterAddress;
uint32 stor3;
address bancorTokenAddress;
uint32 stor4;
address etherTokenAddress;

function bancorToken() {
    return address(bancorTokenAddress)
}

function manager() {
    return managerAddress
}

function treasury() {
    return treasuryAddress
}

function etherToken() {
    return address(etherTokenAddress)
}

function converter() {
    return converterAddress
}

function _fallback() payable {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function sub_4e8d9701(?) {
    if managerAddress != msg.sender:
        return 0
    require ext_code.size(converterAddress)
    call converterAddress.convert(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor3), address(etherTokenAddress), arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_c005c7dc(?) {
    if managerAddress != msg.sender:
        return 0
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args converterAddress, arg1
    require ext_call.success
    require ext_code.size(converterAddress)
    call converterAddress.convert(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), address(bancorTokenAddress), arg1, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_f30247fe(?) {
    if managerAddress == msg.sender:
        require ext_code.size(address(bancorTokenAddress))
        call address(bancorTokenAddress).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(converterAddress)
        call converterAddress.convert(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(stor3), address(etherTokenAddress), ext_call.return_data[0], 1
        require ext_call.success
        call treasuryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(address(etherTokenAddress))
        call address(etherTokenAddress).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(address(etherTokenAddress))
        call address(etherTokenAddress).withdrawTo(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args treasuryAddress, ext_call.return_data[0]
        require ext_call.success
}



}
