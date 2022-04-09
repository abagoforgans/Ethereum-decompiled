contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor2 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor3 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    return code.data[151 len 2811]
}



// =====================  Runtime code  =====================


address owner;
address tokenChangerAddress;
uint32 stor2;
address etherTokenAddress;
address bntAddress;
mapping of uint256 positions;

function tokenChanger() {
    return tokenChangerAddress
}

function bnt() {
    return bntAddress
}

function positions(address arg1) {
    return positions[arg1]
}

function owner() {
    return owner
}

function etherToken() {
    return address(etherTokenAddress)
}

function release() {
    require owner == msg.sender
    selfdestruct(owner)
}

function withdraw() {
  stop
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
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(etherTokenAddress), address(ext_call.return_data[0]), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getSellReturn(uint256 arg1) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x1e1401f8 with:
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(etherTokenAddress), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function close() {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(bntAddress)
    call bntAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    delegate tokenChangerAddress with:
       funct (Mask(32, 224, sha3('change(IERC20Token,IERC20Token,u', 'int256,uint256))')) >> 224)
         gas gas_remaining - 710 wei
        args 0, 0, address(etherTokenAddress), ext_call.return_data[0], 1
    require delegate.return_code
    require delegate.return_data[0]
}

function long() payable {
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).0xd0e30db0 with:
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
    call tokenChangerAddress.0x5e5144eb with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), address(ext_call.return_data[0]), msg.value, 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
