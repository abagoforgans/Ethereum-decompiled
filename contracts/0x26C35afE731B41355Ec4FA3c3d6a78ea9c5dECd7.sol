contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 491]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function owned() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function changeOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    call address(owner) with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining - 34050 wei
        args call.data[4 len calldata.size - 4]
    return bool(ext_call.success)
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
