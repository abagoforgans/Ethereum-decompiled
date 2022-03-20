contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1847]




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function emitApprove(address arg1, address arg2, uint256 arg3) payable {
    if address(stor0) == msg.sender:
        emit Approve(arg3, arg1, arg2);
}

function emitTransfer(address arg1, address arg2, uint256 arg3) payable {
    if address(stor0) == msg.sender:
        emit Transfer(arg3, arg1, arg2);
}

function init(address arg1, bytes32 arg2) payable {
    if address(stor0) != 0:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    stor1 = arg2
    return 1
}

function totalSupply() payable {
    call address(stor0).0xb524abcf with:
         gas gas_remaining - 25050 wei
        args stor1
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    call address(stor0).0x4d30b6be with:
         gas gas_remaining - 25050 wei
        args address(arg1), stor1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    call address(stor0).0x1c8d5d38 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), stor1
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    call address(stor0).0x4f09eba7 with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor1
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) payable {
    call address(stor0).0x88d4531d with:
         gas gas_remaining - 25050 wei
        args address(arg1), arg2, stor1
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    call address(stor0).0x2c8ed735 with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3, stor1
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferWithReference(address arg1, uint256 arg2, string arg3) payable {
    mem[ceil32(arg3.length) + 292 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call address(stor0).0x64ef212e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2, stor1, 128, arg3.length, arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
        call address(stor0).0x64ef212e with:
             gas gas_remaining - 25050 wei
            args 0, 0, arg2, stor1, 128, arg3.length, arg3[all], mem[ceil32(arg3.length) + arg3.length + 292 len -(arg3.length % 32) + 32]
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}

function transferFromWithReference(address arg1, address arg2, uint256 arg3, string arg4) payable {
    mem[ceil32(arg4.length) + 324 len arg4.length] = arg4[all]
    if not arg4.length % 32:
        call address(stor0).0xf0cbe059 with:
             gas gas_remaining - 25050 wei
            args 0, 0, address(arg2), arg3, stor1, 160, arg4.length, arg4[all]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 356 len arg4.length % 32]
        call address(stor0).0xf0cbe059 with:
             gas gas_remaining - 25050 wei
            args 0, 0, address(arg2), arg3, stor1, 160, arg4.length, arg4[all], mem[ceil32(arg4.length) + arg4.length + 324 len -(arg4.length % 32) + 32]
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    else:
        return 0
}



}
