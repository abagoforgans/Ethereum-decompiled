contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 841]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    if address(owner) == msg.sender:
        call arg1.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg2), arg3
        require ext_call.success
}

function transfer(address arg1) payable {
    require address(owner) == tx.origin
    call arg1.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    call arg1.totalSupply() with:
         gas gas_remaining - 25050 wei
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
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



}
