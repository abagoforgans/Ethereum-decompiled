contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint64 stor3;
uint256 stor3;
uint256 stor4; offset 40
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint64 block_number;
uint32 stor9;
uint256 bet;

function bet() {
    return uint256(bet)
}

function block_number() {
    return block_number
}

function kill() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function sub_aef700b9(?) {
    return (sha3(stor7, block.hash(block_number)) % 100)
}

function withdraw(uint256 arg1) {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1:
        call stor2 with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call stor2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function sub_cb05fc48(?) {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require ext_code.size(stor0)
    if arg1:
        call stor0.0xe1fdb4b4 with:
             gas gas_remaining wei
            args arg1
    else:
        call stor0.0xe1fdb4b4 with:
             gas gas_remaining wei
            args uint256(stor4.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[228 len 0] = None
    require ext_code.size(stor0)
    call stor0.0xef115542 with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_653b8d93(?) payable {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if not arg2:
        uint256(bet) = 50
    else:
        uint256(bet) = arg2
    block_number = block.number % 1099511627776
    require ext_code.size(stor0)
    if arg1:
        call stor0.0x5e83b463 with:
           value arg1 wei
             gas gas_remaining wei
            args 0, uint32(stor9), 100, uint256(stor3), uint256(stor4.field_0), stor5, stor6
    else:
        call stor0.0x5e83b463 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor9), 100, uint256(stor3), uint256(stor4.field_0), stor5, stor6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_30ce4895(?) {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    stor5 = arg4
    stor6 = arg5
    uint256(stor4.field_0) = arg3
    uint256(stor3) = arg2 + 1152921504606846976
    stor1 = arg6
    stor7 = arg1
    require sha3(stor7) == uint256(stor4.field_0)
    if block.number > uint256(stor3):
        revert with 0, 'Commit has expired.'
    signer = erecover(sha3(stor3 % 1099511627776, Mask(216, 0, stor4.field_40), mem[261 len 5]), 27, stor5, stor6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    mem[393 len 0] = None
    require ext_code.size(stor0)
    call stor0.0xef115542 with:
         gas gas_remaining wei
        args Array(len=1, data=mem[393])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ebeca895(?) {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    require sha3(stor7, block.hash(block_number)) % 100 < uint256(bet)
    require ext_code.size(stor0)
    call stor0.settleBet(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor7, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor2 != msg.sender:
        revert with 0, 'OnlyOwner methods called by non-owner.'
    stor5 = arg4
    stor6 = arg5
    uint256(stor4.field_0) = arg3
    uint256(stor3) = arg2 + 1152921504606846976
    stor7 = arg1
    require sha3(stor7) == uint256(stor4.field_0)
    if block.number > uint256(stor3):
        revert with 0, 'Commit has expired.'
    signer = erecover(sha3(stor3 % 1099511627776, Mask(216, 0, stor4.field_40), mem[357 len 5]), 27, stor5, stor6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1 != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    mem[489 len 0] = None
    require ext_code.size(stor0)
    call stor0.0xef115542 with:
         gas gas_remaining wei
        args Array(len=1, data=mem[489])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
