contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint128 stor4; offset 160
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor2 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor3 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    require ext_code.size(0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4)
    call 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor4.field_0) = Mask(96, 0, stor4.field_160)
    stor5 = 0x5d538965d0c5f2c21aabf16a24367fb37692cae3
    return code.data[330 len 3340]
}



// =====================  Runtime code  =====================


address owner;
address tokenChangerAddress;
uint32 stor2;
address etherTokenAddress;
address bntAddress;
uint32 stor4;
address smartTokenAddress;
address sub_20582b33Address;
mapping of uint256 sub_0828d0df;
uint256 sub_77ac2957;

function sub_0828d0df(?) {
    return sub_0828d0df[arg1]
}

function sub_20582b33(?) {
    return sub_20582b33Address
}

function tokenChanger() {
    return tokenChangerAddress
}

function bnt() {
    return bntAddress
}

function sub_77ac2957(?) {
    return sub_77ac2957
}

function owner() {
    return owner
}

function etherToken() {
    return address(etherTokenAddress)
}

function smartToken() {
    return address(smartTokenAddress)
}

function release() {
    require owner == msg.sender
    selfdestruct(owner)
}

function marginCall() {
  stop
}

function _fallback() payable {
    revert
}

function getBNTBalance(address arg1) {
    require ext_code.size(bntAddress)
    call bntAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getETHBalance(address arg1) {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getReturn(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return ext_call.return_data[0]
}

function getBuyReturn(uint256 arg1) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(etherTokenAddress), address(smartTokenAddress), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getSellReturn(uint256 arg1) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(smartTokenAddress), address(etherTokenAddress), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function rescue() {
    if not sub_0828d0df[address(msg.sender)]:
        return 0
    sub_0828d0df[address(msg.sender)] = 0
    require ext_code.size(bntAddress)
    call bntAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, sub_0828d0df[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    return 0
}

function getReturn() {
    require ext_code.size(bntAddress)
    call bntAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(smartTokenAddress), address(etherTokenAddress), ext_call.return_data[0]
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw() {
    if not sub_0828d0df[address(msg.sender)]:
        return 0
    sub_0828d0df[address(msg.sender)] = 0
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), address(etherTokenAddress), sub_0828d0df[address(msg.sender)], 1
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    return 1
}

function long() payable {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, msg.value
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), address(ext_call.return_data[0]), msg.value, 1
    require ext_call.success
    sub_0828d0df[address(msg.sender)] += ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
