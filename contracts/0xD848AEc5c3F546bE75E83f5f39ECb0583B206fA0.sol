contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    require code.data[3623 len 20] != 0
    stor0 = code.data[3611 len 32]
    return code.data[78 len 3533]
}



// =====================  Runtime code  =====================


const sub_0cd40fea(?) = 1

const sub_7a9e5410(?) = 12

const sub_825db5f7(?) = 0


address sub_a51687dfAddress;
uint256 stor0;

function sub_a51687df(?) payable {
    return address(sub_a51687dfAddress)
}

function kill() payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function iterateStart() payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x685a1f3c with:
         gas gas_remaining - 50 wei
        args 1, 0
    require delegate.return_code
    return delegate.return_data[0]
}

function isDeploymentAdmin(address arg1) payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function iterateNext(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x685a1f3c with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function isOwner(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function iterateValid(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x33556e84 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function iterateGet(uint256 arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0xf775b6b5 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
    return delegate.return_data[12 len 20]
}

function raiseTraderRegistered(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit TraderRegistered(arg1);
}

function raiseTraderUnregistered(address arg1) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit TraderUnregistered(arg1);
}

function setDeploymentAdminsContract(address arg1) payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function raiseCoinsAdded(address arg1, uint32 arg2, uint256 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit CoinsAdded(address(arg1), arg2 << 224, arg3);
}

function raiseCoinsDeducted(address arg1, uint32 arg2, uint256 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit CoinsDeducted(address(arg1), arg2 << 224, arg3);
}

function raiseCoinsSeeded(address arg1, uint32 arg2, uint256 arg3, uint256 arg4) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit CoinsSeeded(address(arg1), arg2 << 224, arg3, arg4);
}

function raiseDollarsAdded(address arg1, uint160 arg2, int160 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit DollarsAdded(address(arg1), address(arg2), ('signextend', 19, ('param', 'arg3')));
}

function raiseDollarsFunded(address arg1, uint160 arg2, int160 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit DollarsFunded(address(arg1), address(arg2), ('signextend', 19, ('param', 'arg3')));
}

function raiseDollarsWithdrew(address arg1, uint160 arg2, int160 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit DollarsWithdrew(address(arg1), address(arg2), ('signextend', 19, ('param', 'arg3')));
}

function raiseDollarsDeducted(address arg1, uint160 arg2, int160 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit DollarsDeducted(address(arg1), address(arg2), ('signextend', 19, ('param', 'arg3')));
}

function addOwner(address arg1) payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x21ce24d4 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
}

function removeOwner(address arg1) payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x89489a87 with:
         gas gas_remaining - 50 wei
        args 1, arg1
    require delegate.return_code
}

function raiseDollarsWithdrawalCancelled(address arg1, uint160 arg2, int160 arg3) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit DollarsWithdrawalCancelled(address(arg1), address(arg2), ('signextend', 19, ('param', 'arg3')));
}

function raiseBuyOrderCreated(address arg1, uint32 arg2, uint32 arg3, uint80 arg4, uint256 arg5, int160 arg6) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit BuyOrderCreated(address(arg1), arg2 << 224, arg3 << 224, arg4 << 176, arg5, ('signextend', 19, ('param', 'arg6')));
}

function raiseSellOrderCreated(address arg1, uint32 arg2, uint32 arg3, uint80 arg4, uint256 arg5, int160 arg6) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit SellOrderCreated(address(arg1), arg2 << 224, arg3 << 224, arg4 << 176, arg5, ('signextend', 19, ('param', 'arg6')));
}

function raiseBuyOrderCancelled(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, int160 arg7) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit BuyOrderCancelled(address(arg1), arg2, arg3, arg4, arg5, arg6, ('signextend', 19, ('param', 'arg7')));
}

function raiseSellOrderCancelled(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, int160 arg7) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit SellOrderCancelled(address(arg1), arg2, arg3, arg4, arg5, arg6, ('signextend', 19, ('param', 'arg7')));
}

function raiseSellOrderMatched(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, int160 arg10) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit SellOrderMatched(address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8, arg9, ('signextend', 19, ('param', 'arg10')));
}

function raiseBuyOrderMatched(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, int160 arg11) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    emit BuyOrderMatched(address(arg2), address(arg1), arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, ('signextend', 19, ('param', 'arg11')));
}



}
