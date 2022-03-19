contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3086]




// =====================  Runtime code  =====================


const sub_651e723c(?) = 1


address sub_3751707cAddress;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 name;

function name() payable {
    return name
}

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function getAccountBalance(address arg1) payable {
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoinDb'
    require ext_call.success
    call address(ext_call.return_data[0]).0xf8b2cb4f with:
         gas gas_remaining - 25050 wei
        args arg1
    return ext_call.return_data[0]
}

function sub_3ed48679(?) payable {
    if not address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'signer', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoin'
    require ext_call.success
    call address(ext_call.return_data[0]).0xaa64c43b with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(arg2), arg3
    return ext_call.return_data[0]
}

function _fallback() payable {
    if not address(sub_3751707cAddress):
        return 0
    call address(stor1).0xa1add510 with:
         gas gas_remaining - 25050 wei
        args name, 'signer', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if calldata.size <= 0:
        return 0
    call address(stor1).0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args 'elcoin'
    require ext_call.success
    call address(ext_call.return_data[0]) with:
       funct call.data[0 len 4]
         gas gas_remaining - 25050 wei
        args call.data[4 len calldata.size - 4]
    return ext_call.success
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress):
        if arg1 != address(sub_3751707cAddress):
            return 0
    call arg1.0x2ade6c36 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.0x76849376 with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}



}
