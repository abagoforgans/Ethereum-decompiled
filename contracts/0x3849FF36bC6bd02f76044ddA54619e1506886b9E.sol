contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = code.data[2702 len 32]
    return code.data[69 len 2633]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address stor0;
address stor1;
uint256 stor1;
mapping of address stor2;
address stor3;
uint256 sub_91888f2e;

function sub_91888f2e(?) {
    return sub_91888f2e
}

function delist() {
  stop
}

function _fallback() payable {
    revert 
}

function isExistByBytes(bytes32 arg1) {
    if address(stor2[arg1]):
        return 1
    else:
        return 0
}

function sub_178700c3(?) {
    require stor0 == msg.sender
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function sub_da3332f9(?) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length <= 32
    if address(stor2[mem[128]]):
        return 1
    else:
        return 0
}

function convert(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length <= 32
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getEventEnd() {
    require address(stor1)
    require ext_code.size(address(stor1))
    call address(stor1).0xd4884b56 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function getEventStart() {
    require address(stor1)
    require ext_code.size(address(stor1))
    call address(stor1).0x37383c2d with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function enlist(address arg1) {
    require ext_code.size(arg1)
    call arg1.getDSTSymbolBytes() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require not address(stor2[ext_call.return_data[0]])
    require ext_code.size(arg1)
    call arg1.getExecutive() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(arg1)
    call arg1.getDSTSymbolBytes() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    uint256(stor2[ext_call.return_data[0]]) = arg1 or Mask(96, 160, uint256(stor2[ext_call.return_data[0]]))
    require ext_code.size(arg1)
    call arg1.setVirtualExchange(address rg1) with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    emit Enlisted(arg1);
}

function buy(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require arg1.length <= 32
    require arg1.length <= 32
    require address(stor2[mem[128]])
    require ext_code.size(address(stor2[mem[128]]))
    call address(stor2[mem[128]]).getHKGPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
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
    require ext_code.size(address(stor2[mem[128]]))
    call address(stor2[mem[128]]).allowance(address rg1, address rg2) with:
         gas gas_remaining - 50 wei
        args address(stor2[mem[128]]), this.address
    require ext_call.success
    require ext_code.size(address(stor2[mem[128]]))
    call address(stor2[mem[128]]).getHKGPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] >= arg2 * ext_call.return_data[0]
    require ext_code.size(stor3)
    call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_code.size(address(stor2[mem[128]]))
    call address(stor2[mem[128]]).getAddress() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_code.size(address(stor2[mem[128]]))
    call address(stor2[mem[128]]).buyForHackerGold(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg2
    require ext_call.success
    return 0
}



}
