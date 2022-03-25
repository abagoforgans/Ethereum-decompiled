contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    require code.data[1549 len 20] != 0
    stor0 = code.data[1537 len 32]
    return code.data[78 len 1459]
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

function setDeploymentAdminsContract(address arg1) payable {
    call address(sub_a51687dfAddress).0x5dbe47e8 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
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

function pay(address arg1, uint256 arg2) payable {
    delegate 0xf97fd11a882caba3ffe85d5ab002d3ee38ceaa2f.0x7d65837a with:
         gas gas_remaining - 50 wei
        args 1, msg.sender
    require delegate.return_code
    require delegate.return_data[0]
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        return 0
    emit Pay(arg2, arg1);
    return 1
}



}
