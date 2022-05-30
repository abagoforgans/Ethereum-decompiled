contract main {




// =====================  Runtime code  =====================


const transferFrom(address arg1, address arg2, uint256 arg3) = 1


uint256 stor0;
uint256 stor1;

function _fallback() payable {
  stop
}

function transfer(address arg1, uint256 arg2) {
    require 0xcf267ea3f1ebae3c29fea0a3253f94f3122c2199 == tx.origin
    stor1--
    if 0 < stor1 - 1:
        if eth.balance(0xf91546835f756da0c10cfa0cda95b15577b84aa7) >= stor0:
            require ext_code.size(0xf91546835f756da0c10cfa0cda95b15577b84aa7)
            call 0xf91546835f756da0c10cfa0cda95b15577b84aa7.LCOpenTimeout(bytes32 arg1) with:
                 gas gas_remaining wei
                args sha3('1chain1', 0 % 72057594037927936)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_58f69e07(?) payable {
    require 0xcf267ea3f1ebae3c29fea0a3253f94f3122c2199 == tx.origin
    stor0 = msg.value
    stor1 = arg1
    require ext_code.size(0xf91546835f756da0c10cfa0cda95b15577b84aa7)
    call 0xf91546835f756da0c10cfa0cda95b15577b84aa7.createChannel(bytes32 arg1, address arg2, uint256 arg3, address arg4, uint256[2] arg5) with:
       value msg.value wei
         gas gas_remaining wei
        args sha3(Mask(56, 144, '1chain1') >> 144), msg.sender, -block.timestamp, address(this.address), msg.value, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xf91546835f756da0c10cfa0cda95b15577b84aa7)
    call 0xf91546835f756da0c10cfa0cda95b15577b84aa7.LCOpenTimeout(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('1chain1', 0 % 72057594037927936)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > 0
    call 0xcf267ea3f1ebae3c29fea0a3253f94f3122c2199 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
