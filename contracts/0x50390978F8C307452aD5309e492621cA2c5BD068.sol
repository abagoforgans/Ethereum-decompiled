contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = code.data[2541 len 20]
    stor1 = code.data[2573 len 20]
    return code.data[129 len 2400]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address stor1;
mapping of address stor2;
address stor3;

function _fallback() payable {
    revert 
}

function isExistByBytes(bytes32 arg1) {
    if stor2[arg1]:
        return 1
    else:
        return 0
}

function getEventEnd() {
    require stor1
    require ext_code.size(stor1)
    call stor1.0xd4884b56 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getEventStart() {
    require stor1
    require ext_code.size(stor1)
    call stor1.0x37383c2d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function enlist(address arg1) {
    require ext_code.size(stor1)
    call stor1.0xd4884b56 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.getDSTSymbolBytes() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require not stor2[ext_call.return_data[0]]
    require ext_code.size(arg1)
    call arg1.getExecutive() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    stor2[ext_call.return_data[0]] = arg1
    require ext_code.size(arg1)
    call arg1.setVirtualExchange(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    emit Enlisted(arg1);
}

function buy(bytes32 arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0xd4884b56 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require block.timestamp < ext_call.return_data[0]
    require stor2[arg1]
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getHKGPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.balanceOf(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor3)
    call stor3.allowance(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor2[arg1])
    call stor2[arg1].allowance(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args stor2[arg1], this.address
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getHKGPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] >= arg2 * ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_code.size(stor2[arg1])
    call stor2[arg1].buyForHackerGold(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    return 0
}



}
